##-------------------------------------------------
##  Code examples from the R fundamentals workshop
##-------------------------------------------------

##-------------------------
##  Data Structures
##-------------------------
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))

write.csv(x = cats, file = "../data/feline_data.csv", row.names = FALSE)
cats <- read.csv(file = "../data/feline_data.csv", stringsAsFactors = TRUE)

## Realistic data set
gapminder <- read.csv("../data/gapminder_data.csv", stringsAsFactors = TRUE)
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
write.csv(x = df, file = "../data/north_america_1.csv", row.names = FALSE)

## --- Create data sets iteratively ---
for (year in unique(gapminder$year)) {
    df <- calcGDP(gapminder, year = year, country = north_america)
    fname <- paste("../data/north_america_", as.character(year), ".csv", sep = "")
    write.csv(x = df, file = fname, row.names = FALSE)
}

## --- Aside: Get list of files in subdirectory ---
#dir(path = "../data", pattern = "north_america_[1-9]*.csv")
dir(path = "../data", pattern = "gapminder_gdp.*.csv")

## --- Read files using a for loop ---
# Create an empty list to hold your input
df_list <- list()

# Get list of files to read
file_names <- dir(path = "../data", pattern = "gapminder_gdp.*.csv")

# Read files into data frames
for (f in file_names){
  df_list[[f]] <- read.csv(file = file.path("../data", f))
}

# Check data frame dimensions
for (name in names(df_list)) {
  print(name)
  print(dim(df_list[[name]]))
}

# What's going on with Americas?
for (name in names(df_list)) {
  print(name)
  print(dim(df_list[[name]]))
  print(colnames(df_list[[name]]))
}

# Drop the continent column for Americas
americas <- df_list[["gapminder_gdp_americas.csv"]]
df_list[["gapminder_gdp_americas.csv"]] <- americas[, ! colnames(americas) %in% c("continent")]

# Number of columns don't match
df <- do.call(rbind, df_list)

## --- Read files using apply ---
file_names <- dir(path = "../data", pattern = "north_america_[1-9]*.csv")
df_list <- lapply(file.path("../data", file_names), read.csv)
names(df_list) <- file_names


## --- Read files using apply with pipes ---

## Vectorize version with pipes
df_list <- file.path("../data", file_names) |>
    lapply(read.csv)

##-------------------------------------------------
##  Challenges
##-------------------------------------------------

## --- Challenge 6
df <- calcGDP(gapminder, year = c(1952, 1957), country = north_america)
write.csv(x = df, file = "../data/north_america_1.csv", row.names = FALSE)


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

## NRI tidyverse in the wild
deaths %>% rename (age_group = "Ten-Year Age Groups",
                   injury_mechanism = "Injury Mechanism & All Other Leading Causes") %>%
    rename_with (tolower) %>%
    mutate (precov = if_else(year < 2020, 'precov', 'postcov')) %>%
    group_by (age_group, race, gender, injury mechanism, precov) %>%
    summarise (across (c(deaths, population), mean)) %>%
    pivot_wider (names_from = 'precov', values_from = c(deaths, population)) %>%
    select (!c(ends_with('NA'))) %>%
    na.omit() %>%
    mutate (death_increases = deaths_postcov - deaths_precov) %>%
    arrange (desc(death_increases)) %>%
    group_by (age_group, race, gender) %>%
    filter (death increases == max(death increases)) %>%
    ungroup %>%
        arrange (desc(death_increases)) %>%
        select (age_group, race, gender, injury _mechanism, death _increases) %>%
        filter (age_group %in% c('15-24 years', '25-34 years', '25-44 years', '45-54 years')) %>%
        print (n=32)

##-------------------------------------------------
## Basic Visualization
##-------------------------------------------------

data("anscombe")
print(anscombe)

# Central tendency measures
mean(anscombe$x1)
apply(anscombe[,1:4], 2, mean)
apply(anscombe[,5:8], 2, mean)
apply(anscombe, 2, var)

# Correlations
cor(anscombe$x1, anscombe$y1)
cor(anscombe$x2, anscombe$y2)
cor(anscombe$x3, anscombe$y3)
cor(anscombe$x4, anscombe$y4)

# Linear regression parameters
m1 <- lm(anscombe$y1 ~ anscombe$x1)
m2 <- lm(anscombe$y2 ~ anscombe$x2)
m3 <- lm(anscombe$y3 ~ anscombe$x3)
m4 <- lm(anscombe$y4 ~ anscombe$x4)

coef(m1)
coef(m2)
coef(m3)
coef(m4)

## Plot the data and regression lines

# Linear regression coefficients
mlist <- list(m1, m2, m3, m4)
lapply(mlist, coef)

# Plots
plot(anscombe$y1 ~ anscombe$x1)
abline(mlist[[1]])

plot(anscombe$y2 ~ anscombe$x2)
abline(mlist[[2]])

plot(anscombe$y3 ~ anscombe$x3)
abline(mlist[[3]])

plot(anscombe$y4 ~ anscombe$x4)
abline(mlist[[4]])


##-------------------------------------------------
## ggplot2
##-------------------------------------------------
library(tidyverse)

surveys_complete <- read_csv("../data/processed/surveys_complete.csv")
