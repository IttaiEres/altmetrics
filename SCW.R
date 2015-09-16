counts_raw <- read.delim("data/counts-raw.txt.gz")
counts_norm <- read.delim("data/counts-norm.txt.gz")

dim(counts_raw)
head(counts_raw)
tail(counts_raw)
counts_raw[1, 10]
counts_raw[1:3, 10:12]
counts_raw[1:3, ]
counts_raw[1:10, "pmid"]
str(counts_raw$daysSincePublished)
head(counts_raw$daysSincePublished / 7)
is.numeric(counts_raw$daysSincePublished)
str(counts_raw$journal)
levels(counts_raw$journal)
counts_raw$authorsCount[1:10]
which(counts_raw$authorsCount==6)
is.na(counts_raw$authorsCount[1:10])
anyNA(counts_raw$authorsCount[1:10])
summary(counts_raw$wosCountThru2011)
mean(counts_raw$wosCountThru2011)
hist(counts_raw$wosCountThru2011)
hist(sqrt(counts_raw$wosCountThru2011))
plot(counts_raw$daysSincePublished, counts_raw$wosCountThru2011)
counts_raw$authorsCount[1:10] > 7
which(counts_raw$authorsCount>7)

dim(counts_raw[counts_raw$journal == "pone",])
dim(counts_raw[counts_raw$journal %in% c("pone", "pbio", "pgen"),]) #%in% lets you look at multiple conditions!
dim(counts_raw[grepl("Immunology", counts_raw$plosSubjectTags),])
if (anyNA(counts_raw$authorsCount)) {
  print("Be careful!")
} else{
  print("You sexy.")
}



