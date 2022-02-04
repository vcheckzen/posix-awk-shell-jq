#!/usr/bin/awk

# [0,"",{},[],]
BEGIN { 
    start = -1
    elem_start = -1
    elem_idx = k
}

{
    # https://www.gnu.org/software/gawk/manual/html_node/String-Functions.html
    if (start == -1) {
        if (elem_idx == 0) {
            idx = index($0, "[")
            if(idx == 0) next
            start = idx + 1
        } else {
            idx = 0
            if (elem_start == -1) {
                idx = index($0, "[")
                if(idx == 0) next
                elem_start = 1
            }

            len = length($0)
            split($0, chars, "")
            for (i = idx + 1; i <= len; i++) {
                if (chars[i] == "\"") {
                    if (in_str == 0 ) {
                        in_str = 1
                    } else if (chars[i - 1] != "\\") {
                        in_str = 0
                    }
                    continue
                }

                # ignore closing char in a str
                if (in_str == 1) continue

                # prevent closing char at next line
                if (nested_obj_count == 0 && chars[i] == ",") {
                    comma_count += 1
                    if (comma_count == elem_idx) {
                        start = i + 1
                        break
                    }
                }

                if (chars[i] == "[" || chars[i] == "{")
                    nested_obj_count += 1
                else if (chars[i] == "]" || chars[i] == "}")
                    nested_obj_count -= 1
            }
            
            if (comma_count < elem_idx) next
        }
    }

    len = length($0)
    split($0, chars, "")
    for (i = start; i <= len; i++) {
        if (v == "") {
            if (chars[i] != " ") {
                # null and bool should checked by jq_btype.awk first
                if (chars[i] == "n") {
                    v = "null"
                    exit
                }

                v = chars[i]
                if (chars[i] == "[" || chars[i] == "{")
                    nested_obj_count = 1
            }
            continue
        }

        # prevent closing char at next line
        if (nested_obj_count == 0 &&
            (chars[i] == "," || chars[i] == "]"))
            exit

        v = v""chars[i]
        
        # ignore closing char in a str
        if(chars[i - 1] == "\\")
            continue
        
        if (chars[i] == "[" || chars[i] == "{")
            nested_obj_count += 1
        else if (chars[i] == "]" || chars[i] == "}")
            nested_obj_count -= 1
    }

    # an arr elem can cross lines
    start = 1
    if (v != "") v = v"\n"
}

END { print v }
