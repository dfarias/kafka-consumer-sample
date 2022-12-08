NAME_SPACE=dfarias
APP_NAME=kafka-consumer

oc import-image openjdk/openjdk-11-rhel7:1.15-1 \
   --from=registry.redhat.io/openjdk/openjdk-11-rhel7:1.15-1 \
   --confirm \
   -n ${NAME_SPACE}

oc new-build --name=${APP_NAME} \
    openjdk-11-rhel7:1.15-1~https://github.com/dfarias/kafka-consumer-sample \
    -n ${NAME_SPACE}

oc new-app ${APP_NAME} \
    -e KAFKA_SERVER="my-cluster-kafka-bootstrap.kafka-testes.svc.cluster.local" \
    -e KAFKA_PORT="9092" \
    -n ${NAME_SPACE}
