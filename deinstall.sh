#!/bin/bash

kubectl delete deployment dashboard-metrics-scraper -n kubernetes-dashboard
kubectl delete service dashboard-metrics-scraper -n kubernetes-dashboard
kubectl delete deployment kubernetes-dashboard -n kubernetes-dashboard
kubectl delete clusterrolebinding kubernetes-dashboard 
kubectl delete rolebinding kubernetes-dashboard -n kubernetes-dashboard
kubectl delete clusterrole kubernetes-dashboard
kubectl delete role kubernetes-dashboard -n kubernetes-dashboard
kubectl delete configmap kubernetes-dashboard-settings -n kubernetes-dashboard
kubectl delete secret kubernetes-dashboard-key-holder -n kubernetes-dashboard
kubectl delete secret kubernetes-dashboard-csrf -n kubernetes-dashboard
kubectl delete secret kubernetes-dashboard-certs -n kubernetes-dashboard
kubectl delete service kubernetes-dashboard -n kubernetes-dashboard
kubectl delete serviceaccount kubernetes-dashboard -n kubernetes-dashboard
kubectl delete namespace kubernetes-dashboard
