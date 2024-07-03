#!/bin/bash

kubectl delete deployment dashboard-metrics-scraper -n kubernetes-dashboard --grace-period=0 --force
kubectl delete service dashboard-metrics-scraper -n kubernetes-dashboard --grace-period=0 --force
kubectl delete deployment kubernetes-dashboard -n kubernetes-dashboard --grace-period=0 --force
kubectl delete clusterrolebinding kubernetes-dashboard  --grace-period=0 --force
kubectl delete rolebinding kubernetes-dashboard -n kubernetes-dashboard --grace-period=0 --force
kubectl delete clusterrole kubernetes-dashboard --grace-period=0 --force
kubectl delete role kubernetes-dashboard -n kubernetes-dashboard --grace-period=0 --force
kubectl delete configmap kubernetes-dashboard-settings -n kubernetes-dashboard --grace-period=0 --force
kubectl delete secret kubernetes-dashboard-key-holder -n kubernetes-dashboard --grace-period=0 --force
kubectl delete secret kubernetes-dashboard-csrf -n kubernetes-dashboard --grace-period=0 --force
kubectl delete secret kubernetes-dashboard-certs -n kubernetes-dashboard --grace-period=0 --force
kubectl delete service kubernetes-dashboard -n kubernetes-dashboard --grace-period=0 --force
kubectl delete serviceaccount kubernetes-dashboard -n kubernetes-dashboard --grace-period=0 --force
kubectl delete namespace kubernetes-dashboard --grace-period=0 --force
