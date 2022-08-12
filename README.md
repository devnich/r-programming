-   [Introduction to R and RStudio](#introduction-to-r-and-rstudio)
    -   [Orientation](#orientation)
    -   [RStudio configuration](#rstudio-configuration)
    -   [Workstation configuration](#workstation-configuration)
    -   [Coding in RStudio](#coding-in-rstudio)
    -   [Introduction to R](#introduction-to-r)
-   [Project management with RStudio](#project-management-with-rstudio)
    -   [General file management](#general-file-management)
    -   [Create projects with Rstudio](#create-projects-with-rstudio)
-   [Seeking help](#seeking-help)
    -   [Basic help syntax](#basic-help-syntax)
    -   [Help file format](#help-file-format)
    -   [Special operators](#special-operators)
    -   [Library examples](#library-examples)
    -   [What if you don\'t know where to
        start?](#what-if-you-dont-know-where-to-start)
-   [Data structures](#data-structures)
    -   [Data types](#data-types)
    -   [Vectors and type coercion](#vectors-and-type-coercion)
    -   [Challenge 3](#challenge-3)
    -   [Factors](#factors)
    -   [Data Frames are central to working with tabular
        data](#data-frames-are-central-to-working-with-tabular-data)
    -   [Lists](#lists)
    -   [Matrices](#matrices)
    -   [Challenge 4](#challenge-4)
-   [Exploring data frames](#exploring-data-frames)
    -   [Challenge 5](#challenge-5)
-   [Subsetting data](#subsetting-data)
    -   [Subset by index](#subset-by-index)
    -   [Subset by name](#subset-by-name)
    -   [(Optional) Extracting list
        elements](#optional-extracting-list-elements)
    -   [Subsetting by logical
        operations](#subsetting-by-logical-operations)
    -   [Subsetting matrices](#subsetting-matrices)
    -   [(Optional) Subset by factor](#optional-subset-by-factor)
    -   [Subsetting Data Frames](#subsetting-data-frames)
-   [Vectorization](#vectorization-1)
    -   [Vector operations are element-wise by
        default](#vector-operations-are-element-wise-by-default)
    -   [Vectors of unequal length are
        recycled](#vectors-of-unequal-length-are-recycled)
    -   [Logical comparisons](#logical-comparisons)
    -   [Matrix operations are also element-wise by
        default](#matrix-operations-are-also-element-wise-by-default)
    -   [Linear algebra uses matrix
        multiplication](#linear-algebra-uses-matrix-multiplication)
    -   [`apply` lets you apply an arbitrary function to an abitrary
        subset of a matrix. This is an example of a higher-order
        function (map, apply, filter, reduce, fold,
        etc.)](#apply-lets-you-apply-an-arbitrary-function-to-an-abitrary-subset-of-a-matrix.-this-is-an-example-of-a-higher-order-function-map-apply-filter-reduce-fold-etc.)
-   [Control flow](#control-flow)
    -   [Conditionals](#conditionals)
    -   [Review Subsetting section](#review-subsetting-section)
    -   [Iteration](#iteration)
-   [Functions explained](#functions-explained)
    -   [Defining a function](#defining-a-function)
    -   [Combining functions](#combining-functions)
    -   [Defensive programming](#defensive-programming)
    -   [Working with rich data](#working-with-rich-data)
    -   [Challenge 6](#challenge-6)
-   [Reading and writing data](#reading-and-writing-data)
    -   [Create sample data sets and write them to the \`data\`
        directory](#create-sample-data-sets-and-write-them-to-the-data-directory)
    -   [How to find files](#how-to-find-files)
    -   [Read files using a for loop](#read-files-using-a-for-loop)
    -   [Read files using apply](#read-files-using-apply)
    -   [Read files using apply with
        pipes](#read-files-using-apply-with-pipes)
    -   [(Optional) Review using \`apply\` with
        matrices](#optional-review-using-apply-with-matrices)
-   [Data frame manipulation with
    dplyr](#data-frame-manipulation-with-dplyr)
-   [Splitting and combining data frames with
    plyr](#splitting-and-combining-data-frames-with-plyr)
-   [Data frame manipulation with
    tidyr](#data-frame-manipulation-with-tidyr)
-   [Creating publication-quality graphics with
    ggplot2](#creating-publication-quality-graphics-with-ggplot2)
-   [Producing reports with knitr](#producing-reports-with-knitr)
-   [Writing good software](#writing-good-software)
-   [IDE Reference](#ide-reference)
-   [Credits](#credits)
-   [References](#references)
-   [Data Sources](#data-sources)
    -   [Additional data files](#additional-data-files)

# Introduction to R and RStudio

## Orientation

![Building programs that support your research
workflow.](images/data-science-workflow.png "Data science workflow")

1.  R was created by statisticians for statisticians (and other
    researchers)
2.  R contains multitudes; this can be good and bad

## RStudio configuration

1.  Don\'t save or restore .RData (General \> Basic)
2.  Use native pipe operator (Code \> Editing)
3.  Ctrl+Enter executes current line (Code \> Editing)
4.  Rainbow parentheses (Code \> Display)
5.  Adjust font and syntax colors (Appearance)
6.  Move stuff around (Pane Layout)

## Workstation configuration

By default, your view of your file system will be opaque. We want to
make it transparent (e.g. you may have a local Desktop and a cloud
Desktop folder).

### Mac OS Finder \> Preferences

Your local Desktop folder is in your Home directory.

1.  General
    1.  New finder window shows: /Users/\<home\>
2.  Sidebar
    1.  Favorites: /Users/\<home\>
    2.  iCloud: iCloud Drive
    3.  Locations: \<computer name\>, Cloud Storage
3.  Advanced
    1.  Show all filename extensions
    2.  Keep folders on top (all)

### Windows System \> File Explorer

Your local Desktop folder is in your Home directory or Computer
directory.

1.  File \> Change folder and search options \> View
    1.  Files and Folders
        1.  Show hidden files, folders, and drives
        2.  Hide protected operating system files
        3.  **Uncheck** Hide extensions for known file types
    2.  Navigation Pane
        1.  Show all folders
2.  View
    1.  File name extensions

## Coding in RStudio

1.  Use both R scripts and R interactive console \[REPL\]

    ```r
    print("hello")
    ```

2.  Test snippets in REPL

3.  Run, Run Lines, and Run Current Line in script

4.  Set working directory

## Introduction to R

### Using R as a calculator

Begin with REPL, then move to script with comments

```r
1 + 100
(3 + 5) * 2  # operator precedence
5 * (3 ^ 2)  # powers
2/10000      # outputs 2e-04
2 * 10^(-4)  # 2e-04 explicated
```

### Mathematical functions

1.  Some functions need inputs (\"arguments\")

    ```r
    getwd()      # no argument required
    sin(1)       # requires arg
    log(1)       # natural log
    ```

2.  RStudio has auto-completion

    ```r
    log...
    ```

3.  Use `help()` to find out more about a function

    ```r
    help(exp)
    exp(0.5)    # e^(1/2)
    ```

### Comparing things

1.  Basic comparisons

    ```r
    1 == 1
    1 != 2
    1 < 2
    1 <= 1
    ```

2.  Floating point numbers are tricky because of your computer\'s limits

    ```r
    all.equal(3.0, 3.0)         # TRUE
    all.equal(2.9999999, 3.0)   # 7 places: Gives difference
    all.equal(2.99999999, 3.0)  # 8 places: TRUE
    2.99999999 == 3.0           # 8 places: FALSE
    ```

### Variables and assignment

1.  R uses the assignment arrow (`Alt-Enter` by default in RStudio;
    `C-c C-=` in ESS)

    ```r
    # Assign a value to the variable name
    x <- 1/40
    ```

2.  You can inspect a variable\'s value in the Environment tab or by
    evaluating it in the console

    ```r
    # Evaluate the variable and echo its value to the console
    x
    ```

3.  Variables can be re-used and re-assigned

    ```r
    log(x)
    x <- 100
    x <- x + 1
    y <- x * 2
    ```

4.  Use a standard naming scheme for your variables

    ```r
    r.style.variable <- 10
    python_style_variable <- 11
    javaStyleVariable <- 12
    ```

### Vectorization

Vectorize all the things! This makes idiomatic R very different from
most programming languages.

```r
# Create a sequence 1 - 5
1:5

# Raise 2 to the Nth power for each element of the sequence
2^(1:5)

# Assign the resulting vector to a variable
v <- 2^(1:5)
```

### Managing your environment

```r
ls()             # List the objects in the environment
ls               # Echo the contents of ls(), i.e. the code
rm(x)            # Remove the x object
rm(list = ls())  # Remove all objects in environment
```

Note that parameter passing (`=`) is not the same as assignment (`<-`)
in R!

### R Packages

\"Package\" and \"library\" are roughly interchangeable.

1.  Install additional packages

    ```r
    install.packages("tidyverse")
    ## install.packages("rmarkdown")
    ```

2.  Activate a package for use

    ```r
    library("tidyverse")
    ```

### Challenges 1 and 2

See /scripts/curriculum.Rmd

# Project management with RStudio

## General file management

See /scripts/curriculum.Rmd

``` example
project_name
├── project_name.Rproj
├── README.md
├── script_1.R
├── script_2.R
├── data
│   ├── processed
│   └── raw
├── results
└── temp
```

## Create projects with Rstudio

1.  File \> New Project
2.  RStudio understands .Rproj files and will reopen everything for you

# Seeking help

## Basic help syntax

```r
help(write.csv)
?write.csv
```

## Help file format

1.  Description
2.  Usage
3.  Arguments
4.  Details
5.  Examples (highlight and run with `C-Enter`)

## Special operators

```r
help("<-")
```

## Library examples

```r
vignette("dplyr")
```

## What if you don\'t know where to start?

1.  RStudio autocomplete

2.  Fuzzy search

    ```r
    ??set
    ```

3.  Browse by topic: <https://cran.r-project.org/web/views/>

# Data structures

## Data types

There are 5 basic (vector) data types.

```r
typeof(v)
typeof(3.14)
typeof(1L)
typeof(1+1i)
typeof(TRUE)
typeof("banana")
```

## Vectors and type coercion

1.  Note that there are no scalars in R; everything is a vector, even if
    it\'s a vector of length 1.

    ```r
    length(v)
    length(3.14)
    ```

2.  (Optional) New vectors are empty by default

    ```r
    # Vectors are logical by default
    vector1 <- vector(length = 3)
    vector1

    # You can specify other types
    vector2 <- vector(mode="character", length = 3)
    vector2
    str(vector2)
    ```

3.  A vector must be all one type. If you mix types, R will perform type
    coercion. See coercion rules in scrips/curriculum.Rmd

    ```r
    coercion_vector1 <- c(2, 6, '3')
    coercion_vector2 <- c(0, TRUE)

    coercion_vector1
    coercion_vector2
    ```

4.  You can change vector types

    ```r
    # Create a character vector
    chr_vector <- c('0', '2', '4')
    str(chr_vector)

    # Use it to create a numeric vector
    num_vector <- as.numeric(chr_vector)
    str(num_vector)
    ```

5.  There are multiple ways to generate vectors

    ```r
    # Two options for generating sequences
    series1 <- 1:10
    series2 <- seq(10)

    series1
    series2

    # The seq() function is more flexible
    series3 <- seq(1, 10, by=0.1)
    series3
    ```

6.  Manage your vectors

    ```r
    # Don't print everything to the screen
    length(series3)
    head(series3, n=2)
    tail(series3, n=4)
    ```

    ```r
    # You can add informative labels to most things in R
    name_example <- 5:8
    names(name_example) <- c("a", "b", "c", "d")
    name_example
    str(name_example)
    ```

## Challenge 3

See /scripts/curriculum.Rmd

## Factors

1.  Factors represent unique levels (e.g., experimental conditions)

    ```r
    coats <- c("tabby", "tortoise", "tortoise", "black", "tabby")
    str(coats)

    # The reprentation has 3 levels, some of which have multiple instances
    categories <- factor(coats)
    str(categories)
    ```

2.  R assumes that the first factor represents the baseline level, so
    you may need to change your factor ordering so that it makes sense
    for your variables

    ```r
    trials <- c("case", "control", "control", "case")
    trial_factors <- factor(trials, levels = c("control", "case"))
    str(trial_factors)
    ```

## Data Frames are central to working with tabular data

1.  Create a data frame

    ```r
    cats <- data.frame(coat = c("calico", "black", "tabby"),
                       weight = c(2.1, 5.0, 3.2),
                       likes_string = c(1, 0, 1))

    cats         # show contents of data frame
    str(cats)    # inspect structure of data frame

    # Convert likes_string to logical vector
    cats$likes_string <- as.logical(cats$likes_string)
    ```

2.  Write the data frame to a CSV and re-import it. You can use
    `read.delim()` for tab-delimited files, or `read.table()` for
    flexible, general-purpose input.

    ```r
    write.csv(x = cats, file = "data/feline_data.csv", row.names = FALSE)
    cats <- read.csv(file = "data/feline_data.csv", stringsAsFactors = TRUE)

    str(cats) # the chr column is now a factor column
    ```

3.  Access the vectors of the data frame

    ```r
    cats$weight
    cats$coat
    ```

4.  A vector can only hold one type. Therefore, in a data frame each
    data column (vector) has to be a single type.

    ```r
    typeof(cats$weight)
    ```

5.  Use data frame vectors can be inputs like any other vector

    ```r
    cats$weight + 2
    paste("My cat is", cats$coat)

    # Operations have to be legal for the data type
    cats$coat + 2

    # Operations are ephemeral unless their outputs are reassigned to the variable
    cats <- cats$weight + 1
    ```

6.  Data frames have column names

    ```r
    names(cats)
    names(cats)[2] <- "weight_kg"
    names
    ```

## Lists

1.  Lists can contain anything

    ```r
    list1 <- list(1, "a", TRUE, 1+4i)

    # Inspect each element of the list
    list1[[1]]
    list1[[2]]
    list1[[3]]
    list1[[4]]
    ```

2.  This includes complex data structures

    ```r
    list2 <- list(title = "Numbers", numbers = 1:10, data = TRUE)

    # Single brackets retrieve a slice of the list, containing the name:value pair
    list2[2]

    # Double brackets retrieve the value, i.e. the contents of the list item
    list2[[2]]

    ```

3.  Data frames are lists of vectors and factors

    ```r
    typeof(cats)
    ```

4.  Some operations return lists, others return vectors (basically, are
    you getting the column with its label, or are you drilling down to
    the data?)

    ```r
    # List slices
    cats[1]      # list slice by index
    cats["coat"] # list slice by name
    cats[1, ]    # get data frame row by row number

    # List contents (in this case, vectors)
    cats[[1]]      # content by index
    cats[["coat"]] # content by name
    cats$coat      # content by name; shorthand for `cats[["coat"]]`
    cats[, 1]      # content by index, across all rows
    cats[1, 1]     # content by index, single row
    ```

    1.  You can inspect all of these with `typeof()`
    2.  Note that you can address data frames by row and columns

## Matrices

1.  A matrix is 2-dimensional vector

    ```r
    # Create a matrix of zeros
    mat1 <- matrix(0, ncol = 6, nrow = 3)
    mat2 <- matrix(1:25, nrow = 5, byrow = TRUE)

    # Inspect it
    class(mat1)
    typeof(mat1)
    str(mat1)
    ```

2.  Some operations act as if the matrix is a 1-D wrapped vector

    ```r
    mat2 <- matrix(1:25, nrow = 5, byrow = TRUE)
    str(mat2)
    length(mat2)
    ```

## Challenge 4

See /scripts/curriculum.Rmd

# Exploring data frames

```r
```

1.  Adding columns

    ```r
    age <- c(2, 3, 5)
    cbind(cats, age)
    cats                     # cats is unchanged
    cats <- cbind(cats, age) # overwrite old cats
    ```

    ```r
    # Data frames enforce consistency
    age <- c(2, 5)
    cats <- cbind(cats, age)
    ```

2.  Appending rows (remember, rows are lists!)

    ```r
    newRow <- list("tortoiseshell", 3.3, TRUE, 9)
    cats <- rbind(cats, newRow)

    # Legal values added, illegal values are NA
    cats

    # Update the factor set
    levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
    cats <- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))
    ```

3.  Removing missing data `cats` is now polluted with missing data

    ```r
    na.omit(cats)
    cats
    cats <- na.omit(cats)
    ```

4.  Working with realistic data

    ```r
    gapminder <- read.csv("data/gapminder_data.csv", stringsAsFactors = TRUE)

    # Get an overview of the data frame
    str(gapminder)
    dim(gapminder)

    # It's a list
    length(gapminder)
    colnames(gapminder)

    # Look at the data
    summary(gapminder$gdpPercap)  # summary varies by data type
    head(gapminder)
    ```

## Challenge 5

See /scripts/curriculum.Rmd

# Subsetting data

## Subset by index

```r
v <- 1:5
```

### Index selection

```r
v[1]
v[1:3]     # index range
v[c(1, 3)] # selected indices
```

### Index exclusion

```r
v[-1]
v[-c(1, 3)]
```

## Subset by name

```r
letters[1:5]
names(v) <- letters[1:5]
```

### Character selection

```r
v["a"]
v[names(v) %in% c("a", "c")]
```

### Character exclusion

```r
v[! names(v) %in% c("a", "c")]
```

## (Optional) Extracting list elements

Single brackets get you subsets of the same type (`list -> list`,
`vector -> vector`, etc.). Double brackets extract the underlying vector
from a list or data frame.

```r
# Create a new list and give it names
l <- replicate(5, sample(15), simplify = FALSE)
names(l) <- letters[1:5]

# You can extract one element
l[[1]]
l[["a"]]

# You can't extract multiple elements
l[[1:3]]
l[[names(l) %in% c("a", "c")]]
```

## Subsetting by logical operations

1.  Explicitly set each item to TRUE or FALSE

    ```r
    v[c(FALSE, TRUE, TRUE, FALSE, FALSE)]
    ```

2.  Evaluate the truth of each item, then produce the TRUE ones

    ```r
    # Explicit version
    truth_vec <- v > 4
    v[truth_vec]

    # Implicit version
    v[v > 4]
    ```

3.  Combining logical operations

    ```r
    v[v < 3 | v > 4]
    ```

## Subsetting matrices

```r
m <- matrix(1:25, nrow = 5, byrow = TRUE)

# Matrices are just 2D vectors
m[2:4, 1:3]
m[c(1, 3, 5), c(2, 4)]
```

## (Optional) Subset by factor

```r
# First three items
gapminder$country[1:3]

# All items in factor set
north_america <- c("Canada", "Mexico", "United States")
gapminder$country[gapminder$country %in% north_america]
```

## Subsetting Data Frames

Data frames have characteristics of both lists and matrices.

```r
gapminder <- read.csv("data/gapminder_data.csv", stringsAsFactors = TRUE)

# Get first three rows
gapminder[1:3,]

# Rows and columns
gapminder[1:6, 1:3]
gapminder[1:6, c("country", "pop")]

# Data frames are lists, so one index gets you the *columns*
gapminder[1:3]

# Filter by contents
gapminder[gapminder$country == "Mexico",]
north_america <- c("Canada", "Mexico", "United States")
gapminder[gapminder$country %in% north_america,]
gapminder[gapminder$country %in% north_america & gapminder$year > 1999,]
```

# Vectorization

## Vector operations are element-wise by default

```r
x <- 1:4
y <- 6:9
x + y
log(x)

# A more realistic example
gapminder$pop_millions <- gapminder$pop / 1e6
head(gapminder)
```

## Vectors of unequal length are recycled

```r
z <- 1:2
x + z
```

## Logical comparisons

```r
x > 2
a <- (x > 2) # you can assign the output to a variable

# Evaluate a boolean vector
any(a)
all(a)
```

## Matrix operations are also element-wise by default

```r
m <- matrix(1:12, nrow=3, ncol=4)

# Multiply each item by -1
m * -1
```

## Linear algebra uses matrix multiplication

```r
# Multiply two vectors
1:4 %*% 1:4

# Matrix-wise multiplication
m2 <- matrix(1, nrow = 4, ncol = 1)
m2
m %*% m2

# Most functions operate on the whole vector or matrix
mean(m)
sum(m)
```

## `apply` lets you apply an arbitrary function to an abitrary subset of a matrix. This is an example of a higher-order function (map, apply, filter, reduce, fold, etc.)

```r
apply(m, 1, mean)
apply(m, 2, mean)
apply(m, 1, sum)
apply(m, 2, sum)
```

# Control flow

## Conditionals

1.  Look at Conditional template in curriculum.Rmd

2.  If

    ```r
    x <- 8

    if (x >= 10) {
      print("x is greater than or equal to 10")
    }

    x
    ```

3.  Else

    ```r
    if (x >= 10) {
      print("x is greater than or equal to 10")
    } else {
      print("x is less than 10")
    }
    ```

4.  Else If

    ```r
    if (x >= 10) {
      print("x is greater than or equal to 10")
    } else if (x > 5) {
      print("x is greater than 5, but less than 10")
    } else {
      print("x is less than 5")
    }
    ```

5.  Vectorize your tests

    ```r
    x <- 1:4

    if any(x < 2) {
      print("Some x less than 2")
    }

    if all(x < 2){
      print("All x less than 2")
    }
    ```

## Review Subsetting section

Subsetting is frequently an alternative to if-else statements in R

## Iteration

1.  Look at Iteration template in curriculum.Rmd

2.  Basic For loop

    ```r
    for (i in 1:10) {
      print(i)
    }
    ```

3.  Nested For loop

    ```r
    for (i in 1:5) {
      for (j in c('a', 'b', 'c', 'd', 'e')) {
        print(paste(i,j))
      }
    }
    ```

4.  This is where we skip the example where we append things to the end
    of a data frame. For loops are slow, vectorize operations are fast
    (and idiomatic). Use for loops where they\'re the appropriate tool
    (e.g., loading files, cycling through whole data sets, etc). We will
    see more of this in the section on reading and writing data.

# Functions explained

Functions let you encapsulate and re-use chunks of code. This has
several benefits:

1.  Eliminates repetition in your code. This saves labor, but more
    importantly it reduces errors, and makes it easier for you to find
    and correct errors.
2.  Allows you to write more generic (i.e. flexible) code.
3.  Reduces cognitive overhead.

## Defining a function

1.  Look at Function template in data/curriculum.Rmd

2.  Define a simple function

    ```r
    # Convert Fahrenheit to Celcius
    f_to_celcius <- function(temp) {
      celcius <- (temp - 32) * (5/9)
      return(celcius)
    }
    ```

3.  Call the function

    ```r
    f_to_celcius(32)
    boiling <- f_to_celcius(212)
    ```

## Combining functions

Define a second function and call the first function within the second.

```r
f_to_kelvin <- function(temp) {
  celcius <- f_to_celcius(temp)
  kelvin <- celcius + 273.15
  return(kelvin)
}

f_to_kelvin(212)
```

## Defensive programming

1.  Check whether input meets criteria before proceeding (this is
    \`assert\` in other languages).

    ```r
    f_to_celcius <- function(temp) {
      ## Check inputs
      stopifnot(is.numeric(temp), temp > -460)
      celcius <- (temp - 32) * (5/9)
      return(celcius)
    }

    f_to_celcius("a")
    f_to_celcius(-470)
    ```

2.  (Optional) Fail with a custom error if criterion not met

    ```r
    f_to_celcius <- function(temp) {
      if(!is.numeric(temp)) {
        stop("temp must be a numeric vector")
      }
      celcius <- (temp - 32) * (5/9)
      return(celcius)
    }
    ```

## Working with rich data

1.  Write a function to perform a total GDP calculation on a filtered
    subset of your data.

    ```r
    calcGDP <- function(df, year=NULL, country=NULL) {
      if(!is.null(year)) {
        df <- df[df$year %in% year, ]
      }
      if (!is.null(country)) {
        df <- df[df$country %in% country,]
      }
      gdp <- df$pop * df$gdpPercap

      new_df <- cbind(df, totalGDP=gdp)
      return(new_df)
    }
    ```

2.  Mutating \`df\` inside the function doesn\'t affect the global
    \`gapminder\` data frame (because of pass-by-value and scope).

## Challenge 6

See data/curriculum.Rmd

# Reading and writing data

## Create sample data sets and write them to the \`data\` directory

```r
for (year in unique(gapminder$year)) {
  df <- calcGDP(gapminder, year = year, country = north_america)

  ## Generate a file name
  fname <- paste("data/north_america_", as.character(year), ".csv", sep = "")

  ## Write the file
  write.csv(x = df, file = fname, row.names = FALSE)
}
```

## How to find files

```r
## Get matching files from the `data` subdirectory
dir(path = "data", pattern = "north_america_[1-9]*.csv")
```

## Read files using a for loop

1.  Read each file into a data frame and add it to a list

    ```r
    ## Create an empty list
    df_list <- list()

    ## Get the locations of the matching files
    file_names <- dir(path = "data", pattern = "north_america_[1-9]*.csv")

    for (f in file_names){
      df_list[[f]] <- read.csv(file = file.path("data", f))
    }
    ```

2.  Access the list items to view the individual data frames

    ```r
    length(df_list)
    names(df_list)
    df_list[["north_america_1952.csv"]]
    ```

## Read files using apply

1.  Instead of a for loop that handles each file individually, use a
    single vectorized function.

    ```r
    file_names <- dir(path = "data", pattern = "north_america_[1-9]*.csv")
    df_list <- lapply(file.path("data", file_names), read.csv)
    ```

2.  This doesn\'t add names by default, so you will have to add them
    manually

    ```r
    ## You can still access by index position
    df_list[[2]]

    names(df_list)
    names(df_list) <- file_names
    df_list[["north_america_1952.csv"]]
    ```

## Read files using apply with pipes

Pipes allow you to use an alternative formatting for collections of
functions that can be easier to read.

```r
df_list <- file.path("data", file_names) |>
    lapply(read.csv)
```

## (Optional) Review using \`apply\` with matrices

# Data frame manipulation with dplyr

1.  Explain Tidyverse briefly: <https://www.tidyverse.org/packages/>
2.  Explain tibbles briefly

# Splitting and combining data frames with plyr

1.  Briefly describe split-apply-combine
2.  Aggregate files to a single dataframe

# Data frame manipulation with tidyr

# Creating publication-quality graphics with ggplot2

# Producing reports with knitr

# Writing good software

# IDE Reference

1.  Clear console
    1.  RStudio: `C-l`
    2.  Emacs: `C-c M-o` / `M-x comint-clear-buffer`

# Credits

1.  R for Reproducible Scientific Analysis:
    <https://swcarpentry.github.io/r-novice-gapminder/>
2.  Andrea Sánchez-Tapia\'s workshop:
    <https://github.com/AndreaSanchezTapia/UCMerced_R>

# References

1.  RStudio shortcuts and tips:
    <https://appsilon.com/rstudio-shortcuts-and-tips/>

2.  CRAN task views: <https://cran.r-project.org/web/views/>

3.  Why `typeof()` and `class()` give different outputs:
    <https://stackoverflow.com/a/8857411>

4.  How to get function code from the different object systems:
    <https://stackoverflow.com/questions/19226816/how-can-i-view-the-source-code-for-a-function>

5.  Various approaches to contrast coding:
    <https://stats.oarc.ucla.edu/r/library/r-library-contrast-coding-systems-for-categorical-variables/>

    If you tell R that a factor is ordered, it defaults to Orthogonal
    polynomial contrasts. This means that it assumes you want it to
    check for linear, cubic, and quadratic trends. If you tell R that a
    factor is NOT ordered, it defaults to treatment contrasts: it
    compares all levels to a reference level. This probably doesn\'t
    make sense for lots of psych data. So if I say income is ordered, it
    calculates linear, quadratic etc. trends for income, which is not
    only not what I want, but is inappropriate unless your groups are
    evenly spaced. Treatment means it calculates whether each level is
    significantly different from a reference level (i.e. the highest
    income group).

    So if you want first-year stats output in a design with more than 2
    levels in the factor, put this at the top of the R code:

    ```r
    options(contrasts = c("contr.sum","contr.poly"))
    ```

    `contr.sum` is R for deviation contrasts, which you may recall as
    contrasts like -1, 0, 1.

6.  Instructor notes for \"R for Reproducible Scientific Analysis\"
    <https://swcarpentry.github.io/r-novice-gapminder/guide/>

# Data Sources

## Additional data files

1.  Gapminder data:
    <https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv>
    <https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_wide.csv>
