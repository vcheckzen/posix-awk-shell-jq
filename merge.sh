#!/bin/sh

BASE_DIR="$(dirname "$0")"
export BASE_DIR

# shellcheck source=/dev/null
. "$BASE_DIR"/lib/jq_integration_test.sh

OUTPUT_FILE="$BASE_DIR"/jq.sh
TEMPLATE=$(
    cat <<\EOF
_%s() {
    printf "%s" "$1" | awk -v k="$2" \
'%s
'
}\n\n
EOF
)

gen_wrapper_fun() {
    # shellcheck disable=SC2059
    printf \
        "$TEMPLATE" \
        "$(basename "$1" | cut -d. -f1)" \
        "%s" \
        "$(sed '1d' "$1")"
}

{
    printf "#!/bin/sh\n\n"
    gen_wrapper_fun "$BASE_DIR"/lib/jq_vtype.awk
    gen_wrapper_fun "$BASE_DIR"/lib/jq_num.awk
    gen_wrapper_fun "$BASE_DIR"/lib/jq_str.awk
    gen_wrapper_fun "$BASE_DIR"/lib/jq_obj.awk
    gen_wrapper_fun "$BASE_DIR"/lib/jq_arr_elem.awk

    cat <<\EOF
jq_strip_quotes() {
    printf "%s" "$1" |
        sed -e 's/^"//' -e 's/"$//'
}

jqv() {
    printf "%s" "$1" |
        jq - "$2" "$3"
}

# jq t.json 'user.events[0]'
# https://jsonformatter.curiousconcept.com
jq() {
    content="$(cat "$1")"
    keys=$(echo "$2" |
        sed -r 's/(.+)\[/\1\.\[/g')

    OLD_IFS=$IFS
    IFS="."
    for k in $keys; do
        k="$(jq_strip_quotes "$k")"
        vt=$(_jq_vtype "$content" "$k")
        case $vt in
        null | 'true' | 'false')
            echo "$vt"
            return
            ;;
        num)
            awk_f="_jq_num"
            ;;
        str)
            awk_f="_jq_str"
            ;;
        obj | arr)
            awk_f="_jq_obj"
            ;;
        arr_elem)
            # shellcheck disable=2034
            awk_f="_jq_arr_elem"
            k="$(echo "$k" |
                sed -r 's/\[(.+?)\]/\1/')"
            ;;
        *) return ;;
        esac
        content="$("$awk_f" "$content" "$k")"
    done
    IFS=$OLD_IFS

    [ "$3" = "-s" ] && {
        jq_strip_quotes "$content"
        return
    }
    # do not use echo
    printf "%s" "$content"
}

jq "$@"
EOF
} >"$OUTPUT_FILE"

echo merged all files to jq.sh
