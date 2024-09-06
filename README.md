# Posix AWK Shell JQ

## Simple JSON Parser Written in AWK and Shell, with POSIX Compatibility

```shell
# live use
$ DOH_API='https://dns.google/resolve?name=dns.google&type=AAAA'
$ JQ_URI='https://github.com/vcheckzen/posix-awk-shell-jq/raw/main/jq.sh'
$ curl -s "$DOH_API" |
    sh -c "$(curl -sL "$JQ_URI")" @ - 'Answer[0].data'
"2001:4860:4860::8888"#

# locally use
$ cat dns_rcd.json
{
  "Status": 0,
  "TC": false,
  "RD": true,
  "RA": true,
  "AD": true,
  "CD": false,
  "Question": [
    {"name": "dns.google.", "type": 28}
  ],
  "Answer": [
    {
      "name": "dns.google.",
      "type": 28,
      "TTL": 391,
      "data": "2001:4860:4860::8844"
    },
    {
      "name": "dns.google.",
      "type": 28,
      "TTL": 391,
      "data": "2001:4860:4860::8888"
    }
  ]
}
$ ./jq.sh dns_rcd.json 'Answer[1].data'
"2001:4860:4860::8888"#

# parse stdin
$ cat dns_rcd.json | ./jq.sh - 'Answer[1].data'
"2001:4860:4860::8888"#
```

You should clone the whole project and execute `merge.sh` on your target machine, because that file contains test cases. Recommended json file size is not larger than 64KB.
