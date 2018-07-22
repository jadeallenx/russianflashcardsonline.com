#!/bin/bash

set -e # Fail fast, fail hard.

BUCKET_NAME="russianflashcardsonline.com"

hugo -v

aws s3 sync --acl "public-read" public/ "s3://$BUCKET_NAME"
