# wfrp-geocoder

Attempt to make a searchable WFRP map. Used the awesome map from http://www.gitzmansgallery.com/shdmotwow.html

# How
- Make a map based on OpenLayers
- Download a level with decent text size of placenames.
- Filter out non essential images (white)
- OCR images and save json
- Postprocess json 
  - add x/y worldcoordinates based on imageposition
  - remove weird characters: ), (, etc.
- Add to geocoder (solr?)
- Make map from 0 listen to answers from 5
  

