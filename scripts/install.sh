#!/bin/bash

sha=$1

kubectl apply -f https://raw.githubusercontent.com/WildePizza/kubernetes-dashboard/HEAD/.commits/$sha/yaml/recommended.yaml
