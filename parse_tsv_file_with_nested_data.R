library(readr)

df <- readr::read_tsv(file.choose())

text_list <- list()

# assume the nested text file is in column 1 of the dataframe.
# assmue that the different lines of the text is delimited by "\n\n".
for (i in 1:nrow(df)) {
  ti <- unlist(df[i,1])
  split_texti <- strsplit(ti, "\n\n")
  text_list[[i]] <- split_texti
}
