#!/bin/bash
export GCP_PROJECT="YOUR_PROJECT_ID"
export REGION="us-east1"
export GCS_STAGING_LOCATION="gs://YOUR_STAGING_BUCKET"
export JARS="gs://cloud-training/dataengineering/lab_assets/idegc/spark-bigquery_2.12-20221021-2134.jar"

gcloud beta dataproc batches submit pyspark ./bin/../main.py \
    --version=1.1 \
    --project=$GCP_PROJECT \
    --region=$REGION \
    --jars=file:///usr/lib/spark/external/spark-avro.jar,$JARS \
    --labels=job_type=dataproc_template \
    --deps-bucket=$GCS_STAGING_LOCATION \
    --py-files=./bin/../dist/dataproc_templates_distribution.egg \
    -- \
    --template=GCSTOBIGQUERY \
    --gcs.bigquery.input.format=avro \
    --gcs.bigquery.input.location=gs://$GCP_PROJECT \
    --gcs.bigquery.input.inferschema=true \
    --gcs.bigquery.output.dataset=loadavro \
    --gcs.bigquery.output.table=campaigns \
    --gcs.bigquery.output.mode=overwrite \
    --gcs.bigquery.temp.bucket.name=${GCP_PROJECT}-bqtemp
