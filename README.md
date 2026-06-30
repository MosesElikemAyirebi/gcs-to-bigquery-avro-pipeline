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
![GCP](https://img.shields.io/badge/Google%20Cloud-%234285F4.svg?style=for-the-badge&logo=google-cloud&logoColor=white)
![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
