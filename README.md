# GCS to BigQuery Avro Pipeline

This project implements an automated data engineering pipeline that ingests Avro data from Google Cloud Storage (GCS) and loads it into BigQuery for analysis.

## Tech Stack
* **Cloud Environment:** Google Cloud Platform (GCP)
* **Runtime:** Node.js / JavaScript
* **Data Format:** Apache Avro
* **Services:** Google Cloud Storage, BigQuery

## Features
* Listens for file uploads in a specific GCS bucket.
* Automatically processes and validates incoming `.avro` schema files.
* Streams or loads data efficiently into BigQuery tables for immediate querying.
