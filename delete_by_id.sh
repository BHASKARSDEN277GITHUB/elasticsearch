#!/bin/bash

curl="/usr/bin/curl"
args="-XDELETE"
requestprefix="http://10.41.68.17:9200/recommendation_reporting/type/"


while read -r line
do
	id="$line"
	echo "Executing curl for : $id"
	request=$requestprefix$id
	echo "$request"
	$curl $args $request >> /home/bhaskar/Documents/result_for_curl_deletes
done < "input_ids"


