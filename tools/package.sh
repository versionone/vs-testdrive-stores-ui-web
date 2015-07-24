#!/usr/bin/env bash
set -e

# create the artifact
PRODUCT=stores-ui
FILENAME=${PRODUCT}-${BUILD_NUMBER}
mkdir -p artifact/${PRODUCT}
cp -R browserconfig.xml cart.html category.html contact.html css img index.html js new-account.html order-details.html order-history.html personal-details.html product.html search-result.html signin.html artifact/${PRODUCT}

cd artifact

tar -czf ${FILENAME}.tar.gz ${PRODUCT}

set +x
echo "[CCLARTIFACT:{\"name\": \"${PRODUCT}\", \"location\": \"https://s3.amazonaws.com/builds.clearcodelabs.com/${PRODUCT}/${FILENAME}.tar.gz\"}]"
echo "done!"
