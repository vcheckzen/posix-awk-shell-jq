#!/bin/sh

JQ_VTYPE_AWK="$BASE_DIR"/lib/jq_vtype.awk
JQ_NUM_AWK="$BASE_DIR"/lib/jq_num.awk
JQ_STR_AWK="$BASE_DIR"/lib/jq_str.awk
JQ_OBJ_AWK="$BASE_DIR"/lib/jq_obj.awk
JQ_ARR_ELEM_AWK="$BASE_DIR"/lib/jq_arr_elem.awk

jq_strip_quotes() {
    printf "%s" "$1" |
        sed -e 's/^"//' -e 's/"$//'
}

jq_awk_wrapper() {
    # do not use echo
    printf "%s" "$2" |
        awk -v k="$3" -f "$1"
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
        vt=$(jq_awk_wrapper \
            "$JQ_VTYPE_AWK" \
            "$content" \
            "$k")
        case $vt in
        null | 'true' | 'false')
            echo "$vt"
            return
            ;;
        num)
            awk_f="$JQ_NUM_AWK"
            ;;
        str)
            awk_f="$JQ_STR_AWK"
            ;;
        obj | arr)
            awk_f="$JQ_OBJ_AWK"
            ;;
        arr_elem)
            awk_f="$JQ_ARR_ELEM_AWK"
            k="$(echo "$k" |
                sed -r 's/\[(.+?)\]/\1/')"
            ;;
        *) return ;;
        esac
        content="$(jq_awk_wrapper \
            "$awk_f" \
            "$content" "$k")"
    done
    IFS=$OLD_IFS

    [ "$3" = "-s" ] && {
        jq_strip_quotes "$content"
        return
    }
    # do not use echo
    printf "%s" "$content"
}
