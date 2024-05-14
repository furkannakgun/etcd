#!/bin/sh
echo "putting default key-value-pairs into etcd"
KEY1="go-test-service/config"
VALUE1="etcd-data/config.yaml"

KEY2="go-test-service/spec"
VALUE2="etcd-data/openAPIspec.yaml"

etcdctl put $KEY1 < $VALUE1
etcdctl put $KEY2 < $VALUE2
