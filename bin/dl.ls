#!/usr/bin/env lsc

require! {
  \request-promise : request
}

options =
  url: 'https://kancolle-arcade.net/ac/api/Place/places'
  json: yes
  headers:
    'Pragma': 'no-cache'
    'Accept-Encoding': 'gzip, deflate, br'
    'Accept-Language': 'ja,en-US;q=0.9,en;q=0.8'
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'
    'Accept': 'application/json, text/plain, */*'
    'Referer': 'https://kancolle-arcade.net/ac/'
    'X-Requested-With': 'XMLHttpRequest'
    'Connection': 'keep-alive'
    'Cache-Control': 'no-cache'

main = ->>
  console.log await request options

