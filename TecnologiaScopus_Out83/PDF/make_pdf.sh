echo "Generating lowres pages:"
for f in ../originais/*.tiff
do
    echo "Converting $f ..."
    convert $f -resize 1000 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/*.lowres.jpg Tecnologia_Scopus_Outubro_1983.pdf
rm ../originais/*.lowres.jpg -f

echo "done."
