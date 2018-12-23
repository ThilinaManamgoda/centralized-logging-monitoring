#!/usr/bin/env bash
KUBECTL=`which kubectl`


${KUBECTL} create namespace wso2
${KUBECTL} create configmap logstash-conf --from-file=../configs/logstash/logstash.conf -n wso2
${KUBECTL} create configmap logstash-yml --from-file=../configs/logstash/logstash.yml -n wso2
${KUBECTL} create configmap kibana-yml --from-file=../configs/kibana/kibana.yml -n wso2
${KUBECTL} create -f centralized-logging-deployment.yaml -n wso2
${KUBECTL} create -f wso2apim-deployment.yaml -n wso2


