cat <<EOF > .env
ES_HOST=vpc-prediction-io-mlilctsisxnuweu5pu3qd36vny.eu-west-1.es.amazonaws.com
ES_PORT=443
ES_SCHEME=https
HBASE_HOST=pio-hbase.internal.welt.de
HBASE_PORT=8085
HDFS_HOST=pio-hbase.internal.welt.de
HDFS_PORT=8020
EOF

docker run --env-file .env --dns 10.0.8.2 --env RUN_MODE=DEPLOY_ONLY --rm -it 933782373565.dkr.ecr.eu-west-1.amazonaws.com/pio:ur-latest bash