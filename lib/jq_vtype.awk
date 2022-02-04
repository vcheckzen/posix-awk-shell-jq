#!/usr/bin/awk

BEGIN {
    null     = "null"
    num      = "num"
    str      = "str"
    true     = "true"
    false    = "false"
    obj      = "obj"
    arr      = "arr"
    arr_elem = "arr_elem"

    key  = "\""k"\""
    key_nxt = -1
    colon_nxt = -1

    if (k ~ "[[0-9]+]") {
        t = arr_elem
        exit
    }
}

{
    if (key_nxt == -1) {
        idx = index($0, key)
        if(idx == 0) next
        key_nxt = idx + length(key)
    }

    if (colon_nxt == -1) {
        idx = index(substr($0, key_nxt), ":")
        if(idx == 0) {
            key_nxt = 1
            next
        }
        colon_nxt = key_nxt + idx
    }

    len = length($0)
    split($0, chars, "")
    for (i = colon_nxt; i <= len; i++) {
        if (chars[i] == " ") continue

        if (chars[i] == "n")
            t = null
        else if (chars[i] ~ "[0-9]")
            t = num
        else if (chars[i] == "\"")
            t = str
        else if (chars[i] == "t")
            t = true
        else if (chars[i] == "f")
            t = false
        else if (chars[i] == "{")
            t = obj
        else if (chars[i] == "[")
            t = arr

        exit
    }

    colon_nxt = 1
}

END { print t }
