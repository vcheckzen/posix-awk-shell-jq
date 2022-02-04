#!/bin/sh

# shellcheck source=/dev/null
. "$BASE_DIR"/lib/jq_wrapper.sh
. "$BASE_DIR"/lib/jq_unit_test.sh

# compressed
jq_test_assert "$(jqv "$JQ_TEST_COMPRESSED" status.code)" '"1"'
jq_test_assert "$(jqv "$JQ_TEST_COMPRESSED" domain.ttl)" 600
jq_test_assert "$(jqv "$JQ_TEST_COMPRESSED" domain.dnspod_ns[1])" '"ns4.dnsv5.com"'
jq_test_assert "$(jqv "$JQ_TEST_COMPRESSED" records[2].weight)" null
jq_test_assert "$(jqv '{"user events": [{"created time": "2020/02/03 10:47:28"},]}' \
  '"user events"[0]."created time"')" '"2020/02/03 10:47:28"'
# pretty
jq_test_assert "$(jqv "$JQ_TEST_PRETTY_STYLE" [0].id)" '"20051201471"'
jq_test_assert "$(jqv "$JQ_TEST_PRETTY_STYLE" [0].actor.id)" 18008498
jq_test_assert "$(jqv "$JQ_TEST_PRETTY_STYLE" [0].payload.commits[0].author.email)" '"github-actions@github.com"'
jq_test_assert "$(jqv "$JQ_TEST_PRETTY_STYLE" [16].payload.issue.assignee)" null
jq_test_assert "$(jqv "$JQ_TEST_PRETTY_STYLE" [16].payload.comment.body)" "$(
  cat <<\EOF
"> @vcheckzen That's also caused by incompatible libc. Can you provide your libc version?\r\n> \r\n> It's not easy to provide binaries for all possible distributions. I'm looking into statically linking solution and OpenWrt SDK to solve the issue for good.\r\n\r\n```shell\r\n[root@LOGI:/root]#ll /lib/*libc*\r\n-rwxr-xr-x    1 root     root       28.3K Feb  2  2019 /lib/ld-uClibc-1.0.31.so\r\nlrwxrwxrwx    1 root     root          14 Feb  2  2019 /lib/ld-uClibc.so.0 -> ld-uClibc.so.1\r\nlrwxrwxrwx    1 root     root          19 Feb  2  2019 /lib/ld-uClibc.so.1 -> ld-uClibc-1.0.31.so\r\nlrwxrwxrwx    1 root     root          19 Feb  2  2019 /lib/libc.so.0 -> libuClibc-1.0.31.so\r\nlrwxrwxrwx    1 root     root          19 Feb  2  2019 /lib/libc.so.1 -> libuClibc-1.0.31.so\r\nlrwxrwxrwx    1 root     root          19 Feb  2  2019 /lib/libcrypt.so.0 -> libuClibc-1.0.31.so\r\nlrwxrwxrwx    1 root     root          19 Feb  2  2019 /lib/libcrypt.so.1 -> libuClibc-1.0.31.so\r\n-rwxr-xr-x    1 root     root      600.7K Feb  2  2019 /lib/libuClibc-1.0.31.so\r\n```\r\n\r\nAnd the toolchain is here\r\n\r\nhttp://downloads.pangubox.com:6380/pandorabox/19.02/targets/ralink/mt7621/"
EOF
)"
jq_test_assert "$(jqv "$JQ_TEST_PRETTY_STYLE" [0].payload.commits)" "$(
  cat <<\EOF
[
        {
          "sha": "c2849570f020ea16cb84b7489492f12b1fe57416",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/c2849570f020ea16cb84b7489492f12b1fe57416"
        }
      ]
EOF
)"

# do not delete the follow lines
# [ "$JQ_TEST_CASES_COUNT" -eq "$JQ_TEST_PASSED_CASES_COUNT" ] && {
#   echo all tests passed
# }

echo "$JQ_TEST_CASES_COUNT" tests, \
  "$JQ_TEST_PASSED_CASES_COUNT" passed, \
  $((JQ_TEST_CASES_COUNT - JQ_TEST_PASSED_CASES_COUNT)) failed.
