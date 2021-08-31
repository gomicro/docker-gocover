#!/bin/sh

echo "Coverage for '$PWD'"

echo "Creating coverage directory"
mkdir -p /coverage/tmp

echo "Generating coverage output"
for j in $(go list ./... | grep -v '/ext/'); do
  CGO_ENABLED=0 go test -covermode=count -coverprofile=/coverage/$(basename $j).out $j
done

echo "Condensing coverage output"
echo 'mode: count' > /coverage/tmp/full.out
tail -q -n +2 /coverage/*.out >> /coverage/tmp/full.out

cov=$(go tool cover -func=/coverage/tmp/full.out | tail -n 1 | sed -e 's/^.*statements)[[:space:]]*//' -e 's/%//')
echo "Total Coverage: $cov%"
echo $cov > coverage.txt
