LAYERS=`flowmaps-data population list | sed 1d`
echo $LAYERS

for layer in $LAYERS; do
	echo $layer
	FILENAME=data/$layer/$layer.population.parquet
	flowmaps-data population download --layer $layer --output-format parquet --output-file $FILENAME
done

