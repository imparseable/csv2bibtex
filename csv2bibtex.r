e = bibliographicdata[1:4000,]
cat("Output", file = "filename.txt")
cat("\n\n", file = "filename.txt", append = TRUE)

a =capture.output({
for (row in e) {
  article = e$ArtID
  author = e$Authors
  title = e$Title
  journal = e$Journal.x
  year = e$Year
  acmid = e$GrDisc
  address = e$Disc
    {
      print(paste("@article{",article,"},",
                  "author = {",author,"},",
                  "title = {",title,"},",
                  "journal = {",journal,"},",
                  "year = {",year,"},",
                  "acmid = {",acmid,"},",
                  "address = {",address,"}"),
      quote = FALSE)
    } 
    }
})


cat("\n", file = "filename.txt", append = TRUE)
cat(a, file = "filename.txt", append = TRUE)