$Data = "data"
$Src = "en"
$Trg = "it"

# Tokenize 100k train
Get-Content "$Data/train.100k.$Src" | sacremoses -l $Src tokenize > "$Data/train.100k.tok.$Src"
Get-Content "$Data/train.100k.$Trg" | sacremoses -l $Trg tokenize > "$Data/train.100k.tok.$Trg"

# Tokenize dev
Get-Content "$Data/dev.en-it.$Src" | sacremoses -l $Src tokenize > "$Data/dev.tok.$Src"
Get-Content "$Data/dev.en-it.$Trg" | sacremoses -l $Trg tokenize > "$Data/dev.tok.$Trg"

# Tokenize test
Get-Content "$Data/test.en-it.$Src" | sacremoses -l $Src tokenize > "$Data/test.tok.$Src"
Get-Content "$Data/test.en-it.$Trg" | sacremoses -l $Trg tokenize > "$Data/test.tok.$Trg"
