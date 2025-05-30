#!/bin/bash

data="data"
src="en"
trg="it"

# Tokenize 100k train
cat $data/train.100k.$src | sacremoses -l $src tokenize -j 4 > $data/train.100k.tok.$src
cat $data/train.100k.$trg | sacremoses -l $trg tokenize -j 4 > $data/train.100k.tok.$trg

# Tokenize dev
cat $data/dev.en-it.$src | sacremoses -l $src tokenize -j 4 > $data/dev.tok.$src
cat $data/dev.en-it.$trg | sacremoses -l $trg tokenize -j 4 > $data/dev.tok.$trg

# Tokenize test
cat $data/test.en-it.$src | sacremoses -l $src tokenize -j 4 > $data/test.tok.$src
cat $data/test.en-it.$trg | sacremoses -l $trg tokenize -j 4 > $data/test.tok.$trg
