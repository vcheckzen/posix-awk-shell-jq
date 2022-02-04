#!/usr/bin/awk

BEGIN { 
    start = -1
    end = -1
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
            if (chars[i] == "[" || chars[i] == "{") {
                v = chars[i]
                end = 1
            } else if (chars[i] == "n") {
                # null and bool should checked by jq_btype.awk first
                v = "null"
                exit
            }
            continue
        }

        # prevent closing char at next line
        if (end == 0) exit

        v = v""chars[i]
        
        # ignore ]/} in a str
        if(chars[i - 1] == "\\")
            continue

        if (chars[i] == "[" || chars[i] == "{")
            end += 1
        else if (chars[i] == "]" || chars[i] == "}")
            end -= 1
    }

    # an obj can cross lines
    start = 1
    if (v != "") v = v"\n"
}

END { print v }
