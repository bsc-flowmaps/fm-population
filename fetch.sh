#!/bin/bash

#source env/bin/activate

LAYERS=`flowmaps-data population list | sed 1d`
FORMAT=parquet

echo $LAYERS

for layer in $LAYERS; do
	echo $layer
	FILENAME=data/$layer/$layer.population.$FORMAT
	mkdir -p data/$layer
	flowmaps-data population download --layer $layer --output-format $FORMAT --output-file $FILENAME
done

