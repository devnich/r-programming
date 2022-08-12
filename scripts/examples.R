##-------------------------------------------------
##  Code examples from the R fundamentals workshop
##-------------------------------------------------

##-------------------------
##  Data Structures
##-------------------------
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))

write.csv(x = cats, file = "data/feline_data.csv", row.names = FALSE)
cats <- read.csv(file = "data/feline_data.csv", stringsAsFactors = TRUE)

## Realistic data set
gapminder <- read.csv("data/gapminder_data.csv", stringsAsFactors = TRUE)
north_america <- c("Canada", "Mexico", "United States")


##-------------------------
##  Functions
##-------------------------
## --- Error checking ---
f_to_celcius <- function(temp) {
    ## Check for numeric data
    if(!is.numeric(temp)) {
        stop("temp must be a numeric vector")
    }
    ## Run the rest of the code if test passes
    celcius <- (temp - 32) * (5/9)
    return(celcius)
}

f_to_celcius <- function(temp) {
    ## Check for numeric data
    stopifnot(is.numeric(temp), temp > -460)
    ## Run the rest of the code if test passes
    celcius <- (temp - 32) * (5/9)
    return(celcius)
}

## --- Rich data ---
# Takes a dataset and multiplies the population column
# with the GDP per capita column.
calcGDP <- function(df, year=NULL, country=NULL) {
    if(!is.null(year)) {
        df <- df[df$year %in% year, ]
    }
    if (!is.null(country)) {
        df <- df[df$country %in% country,]
    }
    gdp <- df$pop * df$gdpPercap

    new <- cbind(df, totalGDP=gdp)
    return(new)
}

##-------------------------
##  Reading and Writing
##-------------------------

## --- Create several data sets ---
df <- calcGDP(gapminder, year = c(1952, 1957), country = north_america)
write.csv(x = df, file = "data/north_america_1.csv", row.names = FALSE)

## --- Create data sets iteratively ---
for (year in unique(gapminder$year)) {
    df <- calcGDP(gapminder, year = year, country = north_america)
    fname <- paste("data/north_america_", as.character(year), ".csv", sep = "")
    write.csv(x = df, file = fname, row.names = FALSE)
}

## --- Aside: Get list of files in subdirectory ---
dir(path = "data", pattern = "north_america_[1-9]*.csv")

## --- Read files using a for loop ---
# Create an empty list to hold your input
df_list <- list()

# Get list of files to read
file_names <- dir(path = "data", pattern = "north_america_[1-9]*.csv")

for (f in file_names){
  df_list[[f]] <- read.csv(file = file.path("data", f))
}

## --- Read files using apply ---
file_names <- dir(path = "data", pattern = "north_america_[1-9]*.csv")
df_list <- lapply(file.path("data", file_names), read.csv)

names(df_list)
df_list[[1]]
names(df_list) <- file_names

## --- Read files using apply with pipes ---

## Vectorize version with pipes
df_list <- file.path("data", file_names) |>
    lapply(read.csv)


##-------------------------------------------------
##  Challenges
##-------------------------------------------------

## --- Challenge 6
df <- calcGDP(gapminder, year = c(1952, 1957), country = north_america)
write.csv(x = df, file = "data/north_america_1.csv", row.names = FALSE)


##-------------------------------------------------
##  Code snippets
##-------------------------------------------------

## Check for file path
dir.exists(file.path(".", "data"))   # top-level relative path
dir.exists(file.path("../", "data")) # in /scripts subdirectory, relative path

## Creating data frames from matrices
as.data.frame(matrix(1:25, nrow = 5, ncol = 5))

col <- 8
row <- 5
matrix_length <- row * col

df <- as.data.frame(matrix(1:matrix_length, nrow = row, ncol = col))
names(df) <- letters[1:col]
