# posix-awk-shell-jq

Simple JSON Parser Written in AWK and Shell, with POSIX Compatibility

```shell
$ echo '
{
  "args": {}, 
  "headers": {
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9", 
    "Accept-Encoding": "gzip, deflate", 
    "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8", 
    "Dnt": "1", 
    "Host": "httpbin.org", 
    "Upgrade-Insecure-Requests": "1", 
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36", 
    "X-Amzn-Trace-Id": "Root=1-61fd6c31-7928b3ce7b2dfd2c43f5da0f"
  }, 
  "origin": "198.211.50.103", 
  "url": "http://httpbin.org/get"
}
' | ./jq.sh - headers.X-Amzn-Trace-Id
"Root=1-61fd6c31-7928b3ce7b2dfd2c43f5da0f"#
```

You should clone the whole project and execute merge.sh on your target machine, because that file contains some test cases.
