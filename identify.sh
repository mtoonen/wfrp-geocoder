for f in cache/*.jpg
do
  identify -verbose "$f" | awk -f iswhite.awk && mv "$f" cache/white
done