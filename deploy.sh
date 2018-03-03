#!/bin/bash

body='{
"request": {
    "message": "Update docs (triggered by mouyong/hexo-md).",
    "branch":"master",
    "config": {
        "script": "echo FOO"
    }
  }
}'

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token ${ACCESS_TOKEN}" \
  -d "$body" \
  https://api.travis-ci.org/repo/mouyong%2Fhexo-site/requests