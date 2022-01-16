#!/bin/bash

status_code=$(curl --write-out %{http_code} --silent --output /dev/null devops-upskill:8080/greeting)

if [[ "$status_code" -ne 200 ]] ; then
  echo "Some tests failed => Site status changed to $status_code"
  exit 1
else
  echo "All tests passed."
  exit 0
fi