#!/bin/bash


# find first 500 images
# Per image
	# GET ocr result: https://api.ocr.space/parse/imageurl?apikey=helloworld&url=http://i.imgur.com/fwxooMv.png&isOverlayRequired=true
	# mv image to processed folder
#
#testing purposes:
cp processed/* .
rm *.json

BASE_URL="xxx"
API_KEY=xxx
images=("7_50_54.jpg" ) # "7_50_52.jpg" "7_50_55.jpg")
#https://api.ocr.space/parse/imageurl?apikey=helloworld&url=http://i.imgur.com/fwxooMv.png&isOverlayRequired=true
for img in $(ls | head -10) # "${images[@]}"
do	
	img_url=$BASE_URL$img 
	echo $img_url 
	req_url="https://api.ocr.space/parse/imageurl?apikey=$API_KEY&isOverlayRequired=true&url=$img_url"
	echo $req_url 
	filename=$(echo $img | cut -f 1 -d '.')
	echo $filename 
	wget $req_url -O output/$filename.json
	mv $img processed
	echo "----------------------------------"
done