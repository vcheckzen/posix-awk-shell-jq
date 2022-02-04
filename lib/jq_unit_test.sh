#!/bin/sh

JQ_VTYPE_AWK="$BASE_DIR"/lib/jq_vtype.awk
JQ_NUM_AWK="$BASE_DIR"/lib/jq_num.awk
JQ_STR_AWK="$BASE_DIR"/lib/jq_str.awk
JQ_OBJ_AWK="$BASE_DIR"/lib/jq_obj.awk
JQ_ARR_ELEM_AWK="$BASE_DIR"/lib/jq_arr_elem.awk

JQ_TEST_COMPRESSED='{"status":{"code":"1","message":"Action completed successful","created_at":"2018-06-11 10:41:18"},"domain":{"id":"12600793","name":"example.com","punycode":"example.com","grade":"DP_Free","owner":"mailbox@example.com","ext_status":"dnserror","ttl":600,"dnspod_ns":["ns3.dnsv5.com","ns4.dnsv5.com"]},"info":{"sub_domains":"7","record_total":"4","records_num":"3"},"records":[{"id":"13608148","name":"www","line":"电信","line_id":"10=0","type":"A","ttl":"600","value":"1.10.0.3","weight":null,"mx":"0","enabled":"1","status":"enabled","monitor_status":"","remark":"","updated_on":"2018-06-11 10:12:51","use_aqb":"no"},{"id":"13608149","name":"www","line":"联通","line_id":"10=1","type":"A","ttl":"600","value":"1.10.1.3","weight":null,"mx":"0","enabled":"1","status":"enabled","monitor_status":"","remark":"","updated_on":"2018-06-11 10:13:11","use_aqb":"no"},{"id":"13608150","name":"www","line":"移动","line_id":"10=2","type":"A","ttl":"600","value":"1.10.2.3","weight":null,"mx":"0","enabled":"1","status":"enabled","monitor_status":"","remark":"","updated_on":"2018-06-11 10:14:15","use_aqb":"no"}]}'
JQ_TEST_PRETTY_STYLE=$(
  cat <<\EOF
[
  {
    "id": "20051201471",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8999728112,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "c2849570f020ea16cb84b7489492f12b1fe57416",
      "before": "457aaeb84402791a479368cc7d3a0c8866077692",
      "commits": [
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
    },
    "public": true,
    "created_at": "2022-02-03T06:43:37Z"
  },
  {
    "id": "20048595986",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8998340852,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "457aaeb84402791a479368cc7d3a0c8866077692",
      "before": "af3042e97536b44f72d8e4ae416880681a66581c",
      "commits": [
        {
          "sha": "457aaeb84402791a479368cc7d3a0c8866077692",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/457aaeb84402791a479368cc7d3a0c8866077692"
        }
      ]
    },
    "public": true,
    "created_at": "2022-02-03T01:34:59Z"
  },
  {
    "id": "20043435811",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8995781968,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "6ade2786fbad95bafedcb955e1a90b358a1b9dec",
      "before": "c083298fcbca66aa38b2000287c823969ed43d09",
      "commits": [
        {
          "sha": "6ade2786fbad95bafedcb955e1a90b358a1b9dec",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/6ade2786fbad95bafedcb955e1a90b358a1b9dec"
        }
      ]
    },
    "public": true,
    "created_at": "2022-02-02T18:41:45Z"
  },
  {
    "id": "20036900935",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8992634892,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "c083298fcbca66aa38b2000287c823969ed43d09",
      "before": "0d8cd8c5338e1b2e73ce0c91a074c36011cc5be8",
      "commits": [
        {
          "sha": "c083298fcbca66aa38b2000287c823969ed43d09",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/c083298fcbca66aa38b2000287c823969ed43d09"
        }
      ]
    },
    "public": true,
    "created_at": "2022-02-02T12:53:55Z"
  },
  {
    "id": "20031441247",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8989963769,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "0d8cd8c5338e1b2e73ce0c91a074c36011cc5be8",
      "before": "a6d46784d3f037ea66b66949dd12c08c6966a46c",
      "commits": [
        {
          "sha": "0d8cd8c5338e1b2e73ce0c91a074c36011cc5be8",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/0d8cd8c5338e1b2e73ce0c91a074c36011cc5be8"
        }
      ]
    },
    "public": true,
    "created_at": "2022-02-02T06:43:10Z"
  },
  {
    "id": "20029001599",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8988677838,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "a6d46784d3f037ea66b66949dd12c08c6966a46c",
      "before": "a4ed492fde86812672fb336794e6e09d0314d67a",
      "commits": [
        {
          "sha": "a6d46784d3f037ea66b66949dd12c08c6966a46c",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/a6d46784d3f037ea66b66949dd12c08c6966a46c"
        }
      ]
    },
    "public": true,
    "created_at": "2022-02-02T01:39:13Z"
  },
  {
    "id": "20023527105",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8986015435,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "d31e94bde80f3f1d959617d425ec516500533497",
      "before": "95bb8f63bec4139612fa1b4f66a5166792dfeb93",
      "commits": [
        {
          "sha": "d31e94bde80f3f1d959617d425ec516500533497",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/d31e94bde80f3f1d959617d425ec516500533497"
        }
      ]
    },
    "public": true,
    "created_at": "2022-02-01T18:42:13Z"
  },
  {
    "id": "20020067094",
    "type": "WatchEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 337583331,
      "name": "asundust/wechat-work-push",
      "url": "https://api.github.com/repos/asundust/wechat-work-push"
    },
    "payload": {
      "action": "started"
    },
    "public": true,
    "created_at": "2022-02-01T15:38:20Z"
  },
  {
    "id": "20017657744",
    "type": "WatchEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 370038365,
      "name": "mrh929/magisk-wifiadb",
      "url": "https://api.github.com/repos/mrh929/magisk-wifiadb"
    },
    "payload": {
      "action": "started"
    },
    "public": true,
    "created_at": "2022-02-01T13:41:13Z"
  },
  {
    "id": "20016780806",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8982798914,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "95bb8f63bec4139612fa1b4f66a5166792dfeb93",
      "before": "129935187fe4f9f2629007147a825f5c9aa07b1a",
      "commits": [
        {
          "sha": "95bb8f63bec4139612fa1b4f66a5166792dfeb93",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/95bb8f63bec4139612fa1b4f66a5166792dfeb93"
        }
      ]
    },
    "public": true,
    "created_at": "2022-02-01T12:54:23Z"
  },
  {
    "id": "20011177000",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8980072267,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "129935187fe4f9f2629007147a825f5c9aa07b1a",
      "before": "73c2b0f8e1df4721fc781cc7cccda6fb821bcb80",
      "commits": [
        {
          "sha": "129935187fe4f9f2629007147a825f5c9aa07b1a",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/129935187fe4f9f2629007147a825f5c9aa07b1a"
        }
      ]
    },
    "public": true,
    "created_at": "2022-02-01T06:43:24Z"
  },
  {
    "id": "20008640363",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8978717633,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "73c2b0f8e1df4721fc781cc7cccda6fb821bcb80",
      "before": "b60d21740a8755ca1f3973232682d7df0503dbda",
      "commits": [
        {
          "sha": "73c2b0f8e1df4721fc781cc7cccda6fb821bcb80",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/73c2b0f8e1df4721fc781cc7cccda6fb821bcb80"
        }
      ]
    },
    "public": true,
    "created_at": "2022-02-01T01:41:04Z"
  },
  {
    "id": "20003158440",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8976054611,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "0b6e15667c3d70f354cd539239c83eab1f7b2e1d",
      "before": "fb32e59fa3584538628bd4ddec6c83ca9a10cc54",
      "commits": [
        {
          "sha": "0b6e15667c3d70f354cd539239c83eab1f7b2e1d",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/0b6e15667c3d70f354cd539239c83eab1f7b2e1d"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-31T18:41:50Z"
  },
  {
    "id": "19996563321",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8972910671,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "fb32e59fa3584538628bd4ddec6c83ca9a10cc54",
      "before": "fd1b1a1099c18beeef98e5b21198669bc3c08c52",
      "commits": [
        {
          "sha": "fb32e59fa3584538628bd4ddec6c83ca9a10cc54",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/fb32e59fa3584538628bd4ddec6c83ca9a10cc54"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-31T12:53:56Z"
  },
  {
    "id": "19991057614",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8970256815,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "fd1b1a1099c18beeef98e5b21198669bc3c08c52",
      "before": "ff87cec828a9397f06f2b864d8ed1c7b4a277e9c",
      "commits": [
        {
          "sha": "fd1b1a1099c18beeef98e5b21198669bc3c08c52",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/fd1b1a1099c18beeef98e5b21198669bc3c08c52"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-31T06:43:46Z"
  },
  {
    "id": "19990005325",
    "type": "WatchEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 192113073,
      "name": "WingLim/pandorabox-k2p-package",
      "url": "https://api.github.com/repos/WingLim/pandorabox-k2p-package"
    },
    "payload": {
      "action": "started"
    },
    "public": true,
    "created_at": "2022-01-31T04:36:26Z"
  },
  {
    "id": "19989939852",
    "type": "IssueCommentEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 438123986,
      "name": "rapiz1/rathole",
      "url": "https://api.github.com/repos/rapiz1/rathole"
    },
    "payload": {
      "action": "created",
      "issue": {
        "url": "https://api.github.com/repos/rapiz1/rathole/issues/114",
        "repository_url": "https://api.github.com/repos/rapiz1/rathole",
        "labels_url": "https://api.github.com/repos/rapiz1/rathole/issues/114/labels{/name}",
        "comments_url": "https://api.github.com/repos/rapiz1/rathole/issues/114/comments",
        "events_url": "https://api.github.com/repos/rapiz1/rathole/issues/114/events",
        "html_url": "https://github.com/rapiz1/rathole/issues/114",
        "id": 1110238847,
        "node_id": "I_kwDOGh090s5CLOZ_",
        "number": 114,
        "title": "Mipsel release not work",
        "user": {
          "login": "xinxin8816",
          "id": 8501725,
          "node_id": "MDQ6VXNlcjg1MDE3MjU=",
          "avatar_url": "https://avatars.githubusercontent.com/u/8501725?v=4",
          "gravatar_id": "",
          "url": "https://api.github.com/users/xinxin8816",
          "html_url": "https://github.com/xinxin8816",
          "followers_url": "https://api.github.com/users/xinxin8816/followers",
          "following_url": "https://api.github.com/users/xinxin8816/following{/other_user}",
          "gists_url": "https://api.github.com/users/xinxin8816/gists{/gist_id}",
          "starred_url": "https://api.github.com/users/xinxin8816/starred{/owner}{/repo}",
          "subscriptions_url": "https://api.github.com/users/xinxin8816/subscriptions",
          "organizations_url": "https://api.github.com/users/xinxin8816/orgs",
          "repos_url": "https://api.github.com/users/xinxin8816/repos",
          "events_url": "https://api.github.com/users/xinxin8816/events{/privacy}",
          "received_events_url": "https://api.github.com/users/xinxin8816/received_events",
          "type": "User",
          "site_admin": false
        },
        "labels": [

        ],
        "state": "closed",
        "locked": false,
        "assignee": null,
        "assignees": [

        ],
        "milestone": null,
        "comments": 16,
        "created_at": "2022-01-21T09:22:19Z",
        "updated_at": "2022-01-31T04:28:11Z",
        "closed_at": "2022-01-21T14:29:28Z",
        "author_association": "NONE",
        "active_lock_reason": null,
        "body": "I tried to exec rathole binaries on mipsel device and config it from examples, but it print nothing and usage 25% CPU(100% single thread), looks like be in infinite loop.\r\n\r\nCPU is MT7621AT, dual-core with quad-thread.\r\nSystem is Padavan 3.4.3.9-099_21-10-3, build by hiboyhiboyhiboy.\r\n",
        "reactions": {
          "url": "https://api.github.com/repos/rapiz1/rathole/issues/114/reactions",
          "total_count": 0,
          "+1": 0,
          "-1": 0,
          "laugh": 0,
          "hooray": 0,
          "confused": 0,
          "heart": 0,
          "rocket": 0,
          "eyes": 0
        },
        "timeline_url": "https://api.github.com/repos/rapiz1/rathole/issues/114/timeline",
        "performed_via_github_app": null
      },
      "comment": {
        "url": "https://api.github.com/repos/rapiz1/rathole/issues/comments/1025369699",
        "html_url": "https://github.com/rapiz1/rathole/issues/114#issuecomment-1025369699",
        "issue_url": "https://api.github.com/repos/rapiz1/rathole/issues/114",
        "id": 1025369699,
        "node_id": "IC_kwDOGh090s49HeZj",
        "user": {
          "login": "vcheckzen",
          "id": 18008498,
          "node_id": "MDQ6VXNlcjE4MDA4NDk4",
          "avatar_url": "https://avatars.githubusercontent.com/u/18008498?v=4",
          "gravatar_id": "",
          "url": "https://api.github.com/users/vcheckzen",
          "html_url": "https://github.com/vcheckzen",
          "followers_url": "https://api.github.com/users/vcheckzen/followers",
          "following_url": "https://api.github.com/users/vcheckzen/following{/other_user}",
          "gists_url": "https://api.github.com/users/vcheckzen/gists{/gist_id}",
          "starred_url": "https://api.github.com/users/vcheckzen/starred{/owner}{/repo}",
          "subscriptions_url": "https://api.github.com/users/vcheckzen/subscriptions",
          "organizations_url": "https://api.github.com/users/vcheckzen/orgs",
          "repos_url": "https://api.github.com/users/vcheckzen/repos",
          "events_url": "https://api.github.com/users/vcheckzen/events{/privacy}",
          "received_events_url": "https://api.github.com/users/vcheckzen/received_events",
          "type": "User",
          "site_admin": false
        },
        "created_at": "2022-01-31T04:28:11Z",
        "updated_at": "2022-01-31T04:28:11Z",
        "author_association": "NONE",
        "body": "> @vcheckzen That's also caused by incompatible libc. Can you provide your libc version?\r\n> \r\n> It's not easy to provide binaries for all possible distributions. I'm looking into statically linking solution and OpenWrt SDK to solve the issue for good.\r\n\r\n```shell\r\n[root@LOGI:/root]#ll /lib/*libc*\r\n-rwxr-xr-x    1 root     root       28.3K Feb  2  2019 /lib/ld-uClibc-1.0.31.so\r\nlrwxrwxrwx    1 root     root          14 Feb  2  2019 /lib/ld-uClibc.so.0 -> ld-uClibc.so.1\r\nlrwxrwxrwx    1 root     root          19 Feb  2  2019 /lib/ld-uClibc.so.1 -> ld-uClibc-1.0.31.so\r\nlrwxrwxrwx    1 root     root          19 Feb  2  2019 /lib/libc.so.0 -> libuClibc-1.0.31.so\r\nlrwxrwxrwx    1 root     root          19 Feb  2  2019 /lib/libc.so.1 -> libuClibc-1.0.31.so\r\nlrwxrwxrwx    1 root     root          19 Feb  2  2019 /lib/libcrypt.so.0 -> libuClibc-1.0.31.so\r\nlrwxrwxrwx    1 root     root          19 Feb  2  2019 /lib/libcrypt.so.1 -> libuClibc-1.0.31.so\r\n-rwxr-xr-x    1 root     root      600.7K Feb  2  2019 /lib/libuClibc-1.0.31.so\r\n```\r\n\r\nAnd the toolchain is here\r\n\r\nhttp://downloads.pangubox.com:6380/pandorabox/19.02/targets/ralink/mt7621/",
        "reactions": {
          "url": "https://api.github.com/repos/rapiz1/rathole/issues/comments/1025369699/reactions",
          "total_count": 0,
          "+1": 0,
          "-1": 0,
          "laugh": 0,
          "hooray": 0,
          "confused": 0,
          "heart": 0,
          "rocket": 0,
          "eyes": 0
        },
        "performed_via_github_app": null
      }
    },
    "public": true,
    "created_at": "2022-01-31T04:28:11Z"
  },
  {
    "id": "19988738058",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8969029286,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "ff87cec828a9397f06f2b864d8ed1c7b4a277e9c",
      "before": "81ed91cc707b858dde462d21939c2717ca78cfc7",
      "commits": [
        {
          "sha": "ff87cec828a9397f06f2b864d8ed1c7b4a277e9c",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/ff87cec828a9397f06f2b864d8ed1c7b4a277e9c"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-31T01:35:27Z"
  },
  {
    "id": "19986476152",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8967622053,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "bfec3f529399b5ad440b04fdf4cdad280b4e368d",
      "before": "bf067cb122690ba9389248fca8543abb7359b992",
      "commits": [
        {
          "sha": "bfec3f529399b5ad440b04fdf4cdad280b4e368d",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/bfec3f529399b5ad440b04fdf4cdad280b4e368d"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-30T18:40:25Z"
  },
  {
    "id": "19986298586",
    "type": "WatchEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 179232176,
      "name": "kuoruan/luci-app-frpc",
      "url": "https://api.github.com/repos/kuoruan/luci-app-frpc"
    },
    "payload": {
      "action": "started"
    },
    "public": true,
    "created_at": "2022-01-30T18:08:56Z"
  },
  {
    "id": "19986261989",
    "type": "WatchEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 168797342,
      "name": "kuoruan/openwrt-frp",
      "url": "https://api.github.com/repos/kuoruan/openwrt-frp"
    },
    "payload": {
      "action": "started"
    },
    "public": true,
    "created_at": "2022-01-30T18:02:27Z"
  },
  {
    "id": "19985285230",
    "type": "IssueCommentEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 438123986,
      "name": "rapiz1/rathole",
      "url": "https://api.github.com/repos/rapiz1/rathole"
    },
    "payload": {
      "action": "created",
      "issue": {
        "url": "https://api.github.com/repos/rapiz1/rathole/issues/114",
        "repository_url": "https://api.github.com/repos/rapiz1/rathole",
        "labels_url": "https://api.github.com/repos/rapiz1/rathole/issues/114/labels{/name}",
        "comments_url": "https://api.github.com/repos/rapiz1/rathole/issues/114/comments",
        "events_url": "https://api.github.com/repos/rapiz1/rathole/issues/114/events",
        "html_url": "https://github.com/rapiz1/rathole/issues/114",
        "id": 1110238847,
        "node_id": "I_kwDOGh090s5CLOZ_",
        "number": 114,
        "title": "Mipsel release not work",
        "user": {
          "login": "xinxin8816",
          "id": 8501725,
          "node_id": "MDQ6VXNlcjg1MDE3MjU=",
          "avatar_url": "https://avatars.githubusercontent.com/u/8501725?v=4",
          "gravatar_id": "",
          "url": "https://api.github.com/users/xinxin8816",
          "html_url": "https://github.com/xinxin8816",
          "followers_url": "https://api.github.com/users/xinxin8816/followers",
          "following_url": "https://api.github.com/users/xinxin8816/following{/other_user}",
          "gists_url": "https://api.github.com/users/xinxin8816/gists{/gist_id}",
          "starred_url": "https://api.github.com/users/xinxin8816/starred{/owner}{/repo}",
          "subscriptions_url": "https://api.github.com/users/xinxin8816/subscriptions",
          "organizations_url": "https://api.github.com/users/xinxin8816/orgs",
          "repos_url": "https://api.github.com/users/xinxin8816/repos",
          "events_url": "https://api.github.com/users/xinxin8816/events{/privacy}",
          "received_events_url": "https://api.github.com/users/xinxin8816/received_events",
          "type": "User",
          "site_admin": false
        },
        "labels": [

        ],
        "state": "closed",
        "locked": false,
        "assignee": null,
        "assignees": [

        ],
        "milestone": null,
        "comments": 13,
        "created_at": "2022-01-21T09:22:19Z",
        "updated_at": "2022-01-30T15:12:32Z",
        "closed_at": "2022-01-21T14:29:28Z",
        "author_association": "NONE",
        "active_lock_reason": null,
        "body": "I tried to exec rathole binaries on mipsel device and config it from examples, but it print nothing and usage 25% CPU(100% single thread), looks like be in infinite loop.\r\n\r\nCPU is MT7621AT, dual-core with quad-thread.\r\nSystem is Padavan 3.4.3.9-099_21-10-3, build by hiboyhiboyhiboy.\r\n",
        "reactions": {
          "url": "https://api.github.com/repos/rapiz1/rathole/issues/114/reactions",
          "total_count": 0,
          "+1": 0,
          "-1": 0,
          "laugh": 0,
          "hooray": 0,
          "confused": 0,
          "heart": 0,
          "rocket": 0,
          "eyes": 0
        },
        "timeline_url": "https://api.github.com/repos/rapiz1/rathole/issues/114/timeline",
        "performed_via_github_app": null
      },
      "comment": {
        "url": "https://api.github.com/repos/rapiz1/rathole/issues/comments/1025164010",
        "html_url": "https://github.com/rapiz1/rathole/issues/114#issuecomment-1025164010",
        "issue_url": "https://api.github.com/repos/rapiz1/rathole/issues/114",
        "id": 1025164010,
        "node_id": "IC_kwDOGh090s49GsLq",
        "user": {
          "login": "vcheckzen",
          "id": 18008498,
          "node_id": "MDQ6VXNlcjE4MDA4NDk4",
          "avatar_url": "https://avatars.githubusercontent.com/u/18008498?v=4",
          "gravatar_id": "",
          "url": "https://api.github.com/users/vcheckzen",
          "html_url": "https://github.com/vcheckzen",
          "followers_url": "https://api.github.com/users/vcheckzen/followers",
          "following_url": "https://api.github.com/users/vcheckzen/following{/other_user}",
          "gists_url": "https://api.github.com/users/vcheckzen/gists{/gist_id}",
          "starred_url": "https://api.github.com/users/vcheckzen/starred{/owner}{/repo}",
          "subscriptions_url": "https://api.github.com/users/vcheckzen/subscriptions",
          "organizations_url": "https://api.github.com/users/vcheckzen/orgs",
          "repos_url": "https://api.github.com/users/vcheckzen/repos",
          "events_url": "https://api.github.com/users/vcheckzen/events{/privacy}",
          "received_events_url": "https://api.github.com/users/vcheckzen/received_events",
          "type": "User",
          "site_admin": false
        },
        "created_at": "2022-01-30T15:12:32Z",
        "updated_at": "2022-01-30T15:12:32Z",
        "author_association": "NONE",
        "body": "> Release v0.3.9 is out and contains fixed binaries\r\n\r\nIt still doesn't work on my openwrt mt7621 device, I've tried all the mips binaries. Here is some system info\r\n\r\n```shell\r\n# uname -a\r\nLinux LOGI 3.14.79 #0 SMP Fri Feb 1 20:24:57 2019 mips PandoraBox\r\n\r\n# find / -name libc*\r\n/lib/libc.so.0\r\n/lib/libc.so.1\r\n/lib/libcrypt.so.0\r\n/lib/libcrypt.so.1\r\n/overlay/usr/lib/opkg/info/libcurl.postinst\r\n/overlay/usr/lib/opkg/info/libcurl.list\r\n/overlay/usr/lib/opkg/info/libcurl.control\r\n/overlay/usr/lib/opkg/info/libcurl.prerm\r\n/overlay/usr/lib/libcurl.so.4\r\n/overlay/usr/lib/libcurl.so.4.4.0\r\n/rom/lib/libc.so.0\r\n/rom/lib/libc.so.1\r\n/rom/lib/libcrypt.so.0\r\n/rom/lib/libcrypt.so.1\r\n/rom/usr/lib/libcrypto.so.1.0.0\r\n/rom/usr/lib/opkg/info/libc.control\r\n/rom/usr/lib/opkg/info/libc.list\r\n/usr/lib/libcrypto.so.1.0.0\r\n/usr/lib/opkg/info/libc.control\r\n/usr/lib/opkg/info/libc.list\r\n/usr/lib/opkg/info/libcurl.postinst\r\n/usr/lib/opkg/info/libcurl.list\r\n/usr/lib/opkg/info/libcurl.control\r\n/usr/lib/opkg/info/libcurl.prerm\r\n/usr/lib/libcurl.so.4\r\n/usr/lib/libcurl.so.4.4.0\r\n\r\n# cat /proc/cpuinfo\r\nsystem type             : MediaTek MT7621\r\nmachine                 : Phicomm K2P\r\nprocessor               : 0\r\ncpu model               : MIPS 1004Kc V2.15\r\nBogoMIPS                : 583.68\r\nwait instruction        : yes\r\nmicrosecond timers      : yes\r\ntlb_entries             : 32\r\nextra interrupt vector  : yes\r\nhardware watchpoint     : yes, count: 4, address/irw mask: [0x0ffc, 0x0ffc, 0x0ffb, 0x0ffb]\r\nisa                     : mips1 mips2 mips32r2\r\nASEs implemented        : mips16 dsp mt\r\nshadow register sets    : 1\r\nkscratch registers      : 0\r\ncore                    : 0\r\nVPE                     : 0\r\nVCED exceptions         : not available\r\nVCEI exceptions         : not available\r\n\r\nprocessor               : 1\r\ncpu model               : MIPS 1004Kc V2.15\r\nBogoMIPS                : 583.68\r\nwait instruction        : yes\r\nmicrosecond timers      : yes\r\ntlb_entries             : 32\r\nextra interrupt vector  : yes\r\nhardware watchpoint     : yes, count: 4, address/irw mask: [0x0ffc, 0x0ffc, 0x0ffb, 0x0ffb]\r\nisa                     : mips1 mips2 mips32r2\r\nASEs implemented        : mips16 dsp mt\r\nshadow register sets    : 1\r\nkscratch registers      : 0\r\ncore                    : 0\r\nVPE                     : 1\r\nVCED exceptions         : not available\r\nVCEI exceptions         : not available\r\n\r\nprocessor               : 2\r\ncpu model               : MIPS 1004Kc V2.15\r\nBogoMIPS                : 583.68\r\nwait instruction        : yes\r\nmicrosecond timers      : yes\r\ntlb_entries             : 32\r\nextra interrupt vector  : yes\r\nhardware watchpoint     : yes, count: 4, address/irw mask: [0x0ffc, 0x0ffc, 0x0ffb, 0x0ffb]\r\nisa                     : mips1 mips2 mips32r2\r\nASEs implemented        : mips16 dsp mt\r\nshadow register sets    : 1\r\nkscratch registers      : 0\r\ncore                    : 1\r\nVPE                     : 0\r\nVCED exceptions         : not available\r\nVCEI exceptions         : not available\r\n\r\nprocessor               : 3\r\ncpu model               : MIPS 1004Kc V2.15\r\nBogoMIPS                : 583.68\r\nwait instruction        : yes\r\nmicrosecond timers      : yes\r\ntlb_entries             : 32\r\nextra interrupt vector  : yes\r\nhardware watchpoint     : yes, count: 4, address/irw mask: [0x0ffc, 0x0ffc, 0x0ffb, 0x0ffb]\r\nisa                     : mips1 mips2 mips32r2\r\nASEs implemented        : mips16 dsp mt\r\nshadow register sets    : 1\r\nkscratch registers      : 0\r\ncore                    : 1\r\nVPE                     : 1\r\nVCED exceptions         : not available\r\nVCEI exceptions         : not available\r\n```",
        "reactions": {
          "url": "https://api.github.com/repos/rapiz1/rathole/issues/comments/1025164010/reactions",
          "total_count": 0,
          "+1": 0,
          "-1": 0,
          "laugh": 0,
          "hooray": 0,
          "confused": 0,
          "heart": 0,
          "rocket": 0,
          "eyes": 0
        },
        "performed_via_github_app": null
      }
    },
    "public": true,
    "created_at": "2022-01-30T15:12:32Z"
  },
  {
    "id": "19984498857",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8966331927,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "bf067cb122690ba9389248fca8543abb7359b992",
      "before": "6510f6c70cc0f65edfbcae320a923aef2c97acf7",
      "commits": [
        {
          "sha": "bf067cb122690ba9389248fca8543abb7359b992",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/bf067cb122690ba9389248fca8543abb7359b992"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-30T12:51:53Z"
  },
  {
    "id": "19983581840",
    "type": "WatchEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 155417360,
      "name": "Fs00/Win10BloatRemover",
      "url": "https://api.github.com/repos/Fs00/Win10BloatRemover"
    },
    "payload": {
      "action": "started"
    },
    "public": true,
    "created_at": "2022-01-30T09:44:39Z"
  },
  {
    "id": "19983430626",
    "type": "WatchEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 124119818,
      "name": "BooleanCat/go-functional",
      "url": "https://api.github.com/repos/BooleanCat/go-functional"
    },
    "payload": {
      "action": "started"
    },
    "public": true,
    "created_at": "2022-01-30T09:11:29Z"
  },
  {
    "id": "19982814950",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8965231134,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "6510f6c70cc0f65edfbcae320a923aef2c97acf7",
      "before": "5dc1d4453992511e77845668058991897f498283",
      "commits": [
        {
          "sha": "6510f6c70cc0f65edfbcae320a923aef2c97acf7",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/6510f6c70cc0f65edfbcae320a923aef2c97acf7"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-30T06:42:16Z"
  },
  {
    "id": "19981718096",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8964487482,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "5dc1d4453992511e77845668058991897f498283",
      "before": "f026ca00929dabd53464d4885dce6feba83fdfc3",
      "commits": [
        {
          "sha": "5dc1d4453992511e77845668058991897f498283",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/5dc1d4453992511e77845668058991897f498283"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-30T01:37:42Z"
  },
  {
    "id": "19979986600",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8963317728,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "0e0859c05d50dd3bfd5155d5f6de93ec7857f99f",
      "before": "8c05879a04178b101fdbb8726f51caa6229953a7",
      "commits": [
        {
          "sha": "0e0859c05d50dd3bfd5155d5f6de93ec7857f99f",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/0e0859c05d50dd3bfd5155d5f6de93ec7857f99f"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-29T18:48:53Z"
  },
  {
    "id": "19978165223",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8962111338,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "8c05879a04178b101fdbb8726f51caa6229953a7",
      "before": "2228010678b974c93320b6994b4ed1ccfdb433dc",
      "commits": [
        {
          "sha": "8c05879a04178b101fdbb8726f51caa6229953a7",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/8c05879a04178b101fdbb8726f51caa6229953a7"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-29T12:52:14Z"
  },
  {
    "id": "19976515076",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8961026976,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "2228010678b974c93320b6994b4ed1ccfdb433dc",
      "before": "e163bbe26efdc4a660ea8c0c52c9323129172fb9",
      "commits": [
        {
          "sha": "2228010678b974c93320b6994b4ed1ccfdb433dc",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/2228010678b974c93320b6994b4ed1ccfdb433dc"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-29T06:42:50Z"
  }
]
EOF
)
JQ_TEST_USER='\
{
  "login": "vcheckzen",
  "id": 18008498,
  "node_id": "MDQ6VXNlcjE4MDA4NDk4",
  "avatar_url": "https://avatars.githubusercontent.com/u/18008498?v=4",
  "gravatar_id": "",
  "url": "https://api.github.com/users/vcheckzen",
  "html_url": "https://github.com/vcheckzen",
  "followers_url": "https://api.github.com/users/vcheckzen/followers",
  "following_url": "https://api.github.com/users/vcheckzen/following{/other_user}",
  "gists_url": "https://api.github.com/users/vcheckzen/gists{/gist_id}",
  "starred_url": "https://api.github.com/users/vcheckzen/starred{/owner}{/repo}",
  "subscriptions_url": "https://api.github.com/users/vcheckzen/subscriptions",
  "organizations_url": "https://api.github.com/users/vcheckzen/orgs",
  "repos_url": "https://api.github.com/users/vcheckzen/repos",
  "events_url": "https://api.github.com/users/vcheckzen/events{/privacy}",
  "received_events_url": "https://api.github.com/users/vcheckzen/received_events",
  "type": "User",
  "site_admin": false,
  "name": "LOGI",
  "company": null,
  "blog": "https://logi.im",
  "location": null,
  "email": null,
  "hireable": null,
  "bio": "Nothing to say.",
  "twitter_username": null,
  "public_repos": 19,
  "public_gists": 6,
  "followers": 108,
  "following": 11,
  "created_at": "2016-03-22T13:47:06Z",
  "updated_at": "2022-01-20T13:24:53Z"
}\
'

JQ_TEST_CASES_COUNT=0
JQ_TEST_PASSED_CASES_COUNT=0

jq_test_assert() {
  JQ_TEST_CASES_COUNT=$((JQ_TEST_CASES_COUNT + 1))
  [ "$1" = "$2" ] && {
    JQ_TEST_PASSED_CASES_COUNT=$((JQ_TEST_PASSED_CASES_COUNT + 1))
    echo passed
    return
  }

  cat <<EOF
-----------------------------------------------
failed, expected:
$2
found:
$1
-----------------------------------------------
EOF
}

jq_test() {
  jq_test_assert "$(echo "$1" | awk -v k="$3" -f "$2")" "$4"
}

# test jq_obj.awk
# compressed
jq_test "$JQ_TEST_COMPRESSED" "$JQ_OBJ_AWK" status \
  '{"code":"1","message":"Action completed successful","created_at":"2018-06-11 10:41:18"}'
jq_test "$JQ_TEST_COMPRESSED" "$JQ_OBJ_AWK" domain \
  '{"id":"12600793","name":"example.com","punycode":"example.com","grade":"DP_Free","owner":"mailbox@example.com","ext_status":"dnserror","ttl":600,"dnspod_ns":["ns3.dnsv5.com","ns4.dnsv5.com"]}'
jq_test "$JQ_TEST_COMPRESSED" "$JQ_OBJ_AWK" info \
  '{"sub_domains":"7","record_total":"4","records_num":"3"}'
jq_test "$JQ_TEST_COMPRESSED" "$JQ_OBJ_AWK" records \
  '[{"id":"13608148","name":"www","line":"电信","line_id":"10=0","type":"A","ttl":"600","value":"1.10.0.3","weight":null,"mx":"0","enabled":"1","status":"enabled","monitor_status":"","remark":"","updated_on":"2018-06-11 10:12:51","use_aqb":"no"},{"id":"13608149","name":"www","line":"联通","line_id":"10=1","type":"A","ttl":"600","value":"1.10.1.3","weight":null,"mx":"0","enabled":"1","status":"enabled","monitor_status":"","remark":"","updated_on":"2018-06-11 10:13:11","use_aqb":"no"},{"id":"13608150","name":"www","line":"移动","line_id":"10=2","type":"A","ttl":"600","value":"1.10.2.3","weight":null,"mx":"0","enabled":"1","status":"enabled","monitor_status":"","remark":"","updated_on":"2018-06-11 10:14:15","use_aqb":"no"}]'
jq_test '{"id":null,}' "$JQ_OBJ_AWK" id null
# pretty
jq_test_event0=$(echo "$JQ_TEST_PRETTY_STYLE" | awk -v k="0" -f "$JQ_ARR_ELEM_AWK")
jq_test "$jq_test_event0" "$JQ_OBJ_AWK" actor \
  "$(
    cat <<EOF
{
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    }
EOF
  )"
jq_test "$jq_test_event0" "$JQ_OBJ_AWK" repo \
  "$(
    cat <<EOF
{
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    }
EOF
  )"
jq_test "$jq_test_event0" "$JQ_OBJ_AWK" payload \
  "$(
    cat <<EOF
{
      "push_id": 8999728112,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "c2849570f020ea16cb84b7489492f12b1fe57416",
      "before": "457aaeb84402791a479368cc7d3a0c8866077692",
      "commits": [
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
    }
EOF
  )"
jq_test '\
{ 
  "id": null,
}
' "$JQ_OBJ_AWK" id null

# test jq_num.awk
# compressed
jq_test_domain=$(echo "$JQ_TEST_COMPRESSED" | awk -v k="domain" -f "$JQ_OBJ_AWK")
jq_test "$jq_test_domain" "$JQ_NUM_AWK" ttl 600
jq_test '{"id":null,}' "$JQ_NUM_AWK" id null
# pretty
jq_test "$JQ_TEST_USER" "$JQ_NUM_AWK" id 18008498
jq_test "$JQ_TEST_USER" "$JQ_NUM_AWK" public_repos 19
jq_test "$JQ_TEST_USER" "$JQ_NUM_AWK" followers 108
jq_test "$JQ_TEST_USER" "$JQ_NUM_AWK" following 11
jq_test '\
{ 
  "id": null,
}
' "$JQ_NUM_AWK" id null

# test jq_str.awk
# compressed
jq_test "$jq_test_domain" "$JQ_STR_AWK" id '"12600793"'
jq_test "$jq_test_domain" "$JQ_STR_AWK" owner '"mailbox@example.com"'
jq_test '{"id":null,}' "$JQ_STR_AWK" id null
# pretty
jq_test "$JQ_TEST_USER" "$JQ_STR_AWK" avatar_url '"https://avatars.githubusercontent.com/u/18008498?v=4"'
jq_test "$JQ_TEST_USER" "$JQ_STR_AWK" gravatar_id '""'
jq_test "$JQ_TEST_USER" "$JQ_STR_AWK" created_at '"2016-03-22T13:47:06Z"'
jq_test "$JQ_TEST_USER" "$JQ_STR_AWK" updated_at '"2022-01-20T13:24:53Z"'
jq_test '\
{ 
  "id": null,
}
' "$JQ_STR_AWK" id null

# test jq_arr_elem.awk
# compressed
jq_test_records=$(echo "$JQ_TEST_COMPRESSED" | awk -v k="records" -f "$JQ_OBJ_AWK")
jq_test "$jq_test_records" "$JQ_ARR_ELEM_AWK" 0 \
  '{"id":"13608148","name":"www","line":"电信","line_id":"10=0","type":"A","ttl":"600","value":"1.10.0.3","weight":null,"mx":"0","enabled":"1","status":"enabled","monitor_status":"","remark":"","updated_on":"2018-06-11 10:12:51","use_aqb":"no"}'
jq_test "$jq_test_records" "$JQ_ARR_ELEM_AWK" 1 \
  '{"id":"13608149","name":"www","line":"联通","line_id":"10=1","type":"A","ttl":"600","value":"1.10.1.3","weight":null,"mx":"0","enabled":"1","status":"enabled","monitor_status":"","remark":"","updated_on":"2018-06-11 10:13:11","use_aqb":"no"}'
jq_test "$jq_test_records" "$JQ_ARR_ELEM_AWK" 2 \
  '{"id":"13608150","name":"www","line":"移动","line_id":"10=2","type":"A","ttl":"600","value":"1.10.2.3","weight":null,"mx":"0","enabled":"1","status":"enabled","monitor_status":"","remark":"","updated_on":"2018-06-11 10:14:15","use_aqb":"no"}'
jq_test '[0,"",{},null,]' "$JQ_ARR_ELEM_AWK" 3 null
# pretty
jq_test "$JQ_TEST_PRETTY_STYLE" "$JQ_ARR_ELEM_AWK" 0 \
  "$(
    cat <<\EOF
{
    "id": "20051201471",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8999728112,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "c2849570f020ea16cb84b7489492f12b1fe57416",
      "before": "457aaeb84402791a479368cc7d3a0c8866077692",
      "commits": [
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
    },
    "public": true,
    "created_at": "2022-02-03T06:43:37Z"
  }
EOF
  )"
jq_test "$JQ_TEST_PRETTY_STYLE" "$JQ_ARR_ELEM_AWK" 1 \
  "$(
    cat <<\EOF
{
    "id": "20048595986",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8998340852,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "457aaeb84402791a479368cc7d3a0c8866077692",
      "before": "af3042e97536b44f72d8e4ae416880681a66581c",
      "commits": [
        {
          "sha": "457aaeb84402791a479368cc7d3a0c8866077692",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/457aaeb84402791a479368cc7d3a0c8866077692"
        }
      ]
    },
    "public": true,
    "created_at": "2022-02-03T01:34:59Z"
  }
EOF
  )"
jq_test "$JQ_TEST_PRETTY_STYLE" "$JQ_ARR_ELEM_AWK" 8 \
  "$(
    cat <<\EOF
{
    "id": "20017657744",
    "type": "WatchEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 370038365,
      "name": "mrh929/magisk-wifiadb",
      "url": "https://api.github.com/repos/mrh929/magisk-wifiadb"
    },
    "payload": {
      "action": "started"
    },
    "public": true,
    "created_at": "2022-02-01T13:41:13Z"
  }
EOF
  )"
jq_test "$JQ_TEST_PRETTY_STYLE" "$JQ_ARR_ELEM_AWK" 29 \
  "$(
    cat <<\EOF
{
    "id": "19976515076",
    "type": "PushEvent",
    "actor": {
      "id": 18008498,
      "login": "vcheckzen",
      "display_login": "vcheckzen",
      "gravatar_id": "",
      "url": "https://api.github.com/users/vcheckzen",
      "avatar_url": "https://avatars.githubusercontent.com/u/18008498?"
    },
    "repo": {
      "id": 300652330,
      "name": "vcheckzen/cdn",
      "url": "https://api.github.com/repos/vcheckzen/cdn"
    },
    "payload": {
      "push_id": 8961026976,
      "size": 1,
      "distinct_size": 1,
      "ref": "refs/heads/master",
      "head": "2228010678b974c93320b6994b4ed1ccfdb433dc",
      "before": "e163bbe26efdc4a660ea8c0c52c9323129172fb9",
      "commits": [
        {
          "sha": "2228010678b974c93320b6994b4ed1ccfdb433dc",
          "author": {
            "email": "github-actions@github.com",
            "name": "github-actions"
          },
          "message": "update festival data",
          "distinct": true,
          "url": "https://api.github.com/repos/vcheckzen/cdn/commits/2228010678b974c93320b6994b4ed1ccfdb433dc"
        }
      ]
    },
    "public": true,
    "created_at": "2022-01-29T06:42:50Z"
  }
EOF
  )"
jq_test '\
[
  0,
  "",
  {},
  null,
]
' "$JQ_ARR_ELEM_AWK" 3 null

# test jq_vtype.awk
# compressed
jq_test '{"success":null,}' "$JQ_VTYPE_AWK" success null
jq_test "$jq_test_domain" "$JQ_VTYPE_AWK" ttl num
jq_test "$jq_test_domain" "$JQ_VTYPE_AWK" id str
jq_test '{"success":true,}' "$JQ_VTYPE_AWK" success 'true'
jq_test '{"success":false,}' "$JQ_VTYPE_AWK" success 'false'
jq_test "$JQ_TEST_COMPRESSED" "$JQ_VTYPE_AWK" status obj
jq_test "$jq_test_domain" "$JQ_VTYPE_AWK" dnspod_ns arr
jq_test "$jq_test_records" "$JQ_VTYPE_AWK" "[0]" arr_elem
# pretty
jq_test_event0=$(echo "$JQ_TEST_PRETTY_STYLE" | awk -v k="0" -f "$JQ_ARR_ELEM_AWK")
jq_test_user=$(echo "$jq_test_event0" | awk -v k="actor" -f "$JQ_OBJ_AWK")
jq_test_payload=$(echo "$jq_test_event0" | awk -v k="payload" -f "$JQ_OBJ_AWK")
jq_test '\
{
  "success": null,
}
' "$JQ_VTYPE_AWK" success null
jq_test "$jq_test_user" "$JQ_VTYPE_AWK" id num
jq_test "$jq_test_event0" "$JQ_VTYPE_AWK" id str
jq_test "$jq_test_event0" "$JQ_VTYPE_AWK" public 'true'
jq_test "$jq_test_event0" "$JQ_VTYPE_AWK" actor obj
jq_test "$jq_test_payload" "$JQ_VTYPE_AWK" commits arr
jq_test "$JQ_TEST_PRETTY_STYLE" "$JQ_VTYPE_AWK" "[0]" arr_elem
