#!/bin/bash

data="data"
src="en"
trg="it"
prefix="train.en-it"

# Output filenames
out_src="$data/train.100k.$src"
out_trg="$data/train.100k.$trg"

# Subsample to 100k lines
head -n 100000 $data/$prefix.$src > $out_src
head -n 100000 $data/$prefix.$trg > $out_trg

echo "Subsampled to 100k:"
wc -l $out_src
wc -l $out_trg
