# R data Sorting Examples

#sample data
marks<- c (75, 45, 90, 60, 85)

#ascending order
sort(marks)

#descending order
sort(marks, decreasing = TRUE)

#Example With names
students <- data.frame(
  Name = c("arun", "thamil", "kumar", "ravi"),
  marks = c(75, 45, 78, 98)
)

#sort by Marks - Ascending
students[order(students$marks), ]

#sort by Marks - descending
students[order(-students$marks), ]