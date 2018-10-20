#!/bin/bash
# Stop Solr database on local machine
# Author: jobusam
# Work: Masterthesis


EXEC_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/solr-7.4.0"
echo "Stop local Solr instance"

read -p "Delete forensic metadata index? [Y/n]:" delconf

if [ $delconf == 'Y' ] ; then
    # The index must be deleted when solr is running
    echo "Delete forensic metadata index!"
    curl "http://localhost:8983/solr/admin/collections?action=DELETE&name=forensicMetadata"
fi

cd $EXEC_DIR
./bin/solr stop


exit
if [ $delconf == 'Y' ] ; then    
    echo "Delete forensic metadata index!"
    rm server/logs/*.log
    rm -r server/solr/forensicMetadata*
fi

