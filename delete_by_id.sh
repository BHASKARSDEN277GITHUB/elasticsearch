#!/bin/bash

curl="/usr/bin/curl"
args="-XDELETE"
requestprefix="http://localhost:9200/index/type/"


while read -r line
do
	id="$line"
	request=$requestprefix$id
	echo "Executing curl for : [$request]"
	$curl $args $request >> /home/bhaskar/Documents/output
done < "input_ids"


