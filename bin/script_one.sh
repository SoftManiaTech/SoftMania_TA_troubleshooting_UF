#!/bin/sh
export SPLUNK_HOME=/opt/splunk
now=$(date)
echo "$now cpu=$(($RANDOM%100)), memory=$(($RANDOM%100)), disk=$(($RANDOM%100))"
echo "$now cpu=$(($RANDOM%100)), memory=$(($RANDOM%100)), disk=$(($RANDOM%100))" >> $SPLUNK_HOME/etc/apps/SoftMania_TA_troubleshooting/bin/resource_utilization.log
echo "INFO application_name=random_generator, requestor_id=$(($RANDOM%100)), bytes_received=$(($RANDOM%100))" >> $SPLUNK_HOME/etc/apps/SoftMania_TA_troubleshooting/bin/api_entries.log

