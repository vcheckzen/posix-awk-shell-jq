#!/usr/bin/awk

BEGIN { 
    start = -1
    key = "\""k"\""
}

{
    # https://www.gnu.org/software/gawk/manual/html_node/String-Functions.html
    if (start == -1) {
        idx = index($0, key)
        if(idx == 0) next
        start = idx + length(key)
    }

    len = length($0)
    split($0, chars, "")
    for (i = start; i <= len; i++) {
        if (v == "") {
            if (chars[i] ~ "[0-9]")
                v = chars[i]
            else if (chars[i] == "n") {
                # null and bool should checked by jq_btype.awk first
                v = "null"
                exit
            }
            continue
        }

        if (chars[i] !~ "[0-9]") exit

        v = v""chars[i]
    }
    
    if (v != "") v = v"\n"
}

END { print v }
