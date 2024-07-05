#!/bin/bash

sha=$1

wait_until_ready() {
  url=$1
  substring1="The requested URL returned error"
  substring2="Could not resolve host: raw.githubusercontent.com"
  echo "Executing: $url"
  output=$(curl -fsSL $url 2>&1)
  if [[ $output =~ $substring1 || $output =~ $substring2 ]]; then
    sleep 1
    wait_until_ready
  fi
}
wait_until_ready https://raw.githubusercontent.com/WildePizza/kubernetes-dashboard/HEAD/.commits/$sha/yaml/recommended.yaml
kubectl apply -f https://raw.githubusercontent.com/WildePizza/kubernetes-dashboard/HEAD/.commits/$sha/yaml/recommended.yaml
