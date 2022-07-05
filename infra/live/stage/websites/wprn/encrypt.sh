#!/bin/bash

aws kms encrypt \
    --key-id "cfEKrCE9NmxpjneP" \
    --plaintext ./terragrunt.hcl \
    --output text \
    --query CiphertextBlob \
	> out.encrypted 

