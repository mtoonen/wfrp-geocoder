# wfrp-geocoder

Attempt to make a searchable WFRP map. Used the awesome map from http://www.gitzmansgallery.com/shdmotwow.html

# How
1. Make a map based on OpenLayers
1. Download a level with decent text size of placenames.
1. Filter out non essential images (white)
1. OCR images and save json
1. Postprocess json: add x/y worldcoordinates based on imageposition
1. Add to geocoder (solr?)
1. Make map from 0 listen to answers from 5
  
