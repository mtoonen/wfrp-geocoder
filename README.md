# wfrp-geocoder

Attempt to make a searchable WFRP map. Used the awesome map from http://www.gitzmansgallery.com/shdmotwow.html

# How
0. Make a map based on OpenLayers
1. Download a level with decent text size of placenames.
2. Filter out non essential images (white)
3. OCR images and save json
4. Postprocess json: add x/y worldcoordinates based on imageposition
5. Add to geocoder (solr?)
6. Make map from 0 listen to answers from 5
  
