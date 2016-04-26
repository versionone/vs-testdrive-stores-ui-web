#!/usr/bin/env bash
set -e

# create the artifact
PRODUCT=stores-ui-web
FILENAME=${PRODUCT}.tz
mkdir -p artifact
tar -czf artifact/${FILENAME} browserconfig.xml cart.html category.html contact.html css img index.html js new-account.html order-details.html order-history.html personal-details.html product.html search-result.html signin.html

echo "done!"