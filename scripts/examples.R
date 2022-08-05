##  Code examples from the R fundamentals workshop

## Data Structures
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))

write.csv(x = cats, file = "data/feline_data.csv", row.names = FALSE)
cats <- read.csv(file = "data/feline_data.csv", stringsAsFactors = TRUE)

## Realistic data set
gapminder <- read.csv("data/gapminder_data.csv", stringsAsFactors = TRUE)
