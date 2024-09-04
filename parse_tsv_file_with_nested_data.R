library(readr)

df <- readr::read_tsv(file.choose())

text_list <- list()

for (i in 1:nrow(df)) {
  ti <- unlist(df[i,1])
  split_texti <- strsplit(ti, "\n\n")
  text_list[[i]] <- split_texti
}
