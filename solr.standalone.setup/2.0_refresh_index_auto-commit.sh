#!/bin/bash
# Update Solr Collection on local machine
# Author: jobusam
# Work: Masterthesis
# This script must be executed to update the solr index. Otherwise the latest indexed data won't be visible in index!
echo "Update Solr collection / index manually"
curl http://localhost:8983/solr/forensicMetadata/update?commit=true

