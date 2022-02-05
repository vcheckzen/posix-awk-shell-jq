# Posix AWK Shell JQ

## Simple JSON Parser Written in AWK and Shell, with POSIX Compatibility

```shell
$ DOH_API='https://dns.google/resolve?name=dns.google&type=AAAA'
$ JQ_URI='https://github.com/vcheckzen/posix-awk-shell-jq/raw/main/jq.sh'
$ curl -s "$DOH_API" |
    sh -c "$(curl -sL "$JQ_URI")" @ - 'Answer[0].data'
"2001:4860:4860::8888"#
```

You should clone the whole project and execute `merge.sh` on your target machine, because that file contains some test cases.
