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
    -   [Data Frames are central to working with tabular
        data](#data-frames-are-central-to-working-with-tabular-data)
    -   [Data types](#data-types)
    -   [Vectors and type coercion](#vectors-and-type-coercion)
    -   [Challenge 3](#challenge-3)
    -   [Data frames](#data-frames)
    -   [Factors](#factors)
    -   [Lists](#lists)
    -   [Matrices](#matrices)
    -   [Challenge 4](#challenge-4)
-   [Exploring data frames](#exploring-data-frames)
-   [Vectorization](#vectorization-1)
-   [Control flow](#control-flow)
-   [Functions explained](#functions-explained)
-   [Subsetting data](#subsetting-data)
-   [Tidyverse and pipes](#tidyverse-and-pipes)
-   [Writing data](#writing-data)
-   [ggplot2](#ggplot2)
-   [Splitting and combining data frames with
    plyr](#splitting-and-combining-data-frames-with-plyr)
-   [Data frame manipulation with
    dplyr](#data-frame-manipulation-with-dplyr)
-   [Data frame manipulation with
    tidyr](#data-frame-manipulation-with-tidyr)
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
1:5
2^(1:5)     # Explain this
x <- 1:5
x           # The variable holds a vector of numbers
2^x
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

## Data Frames are central to working with tabular data

1.  Create a data frame

    ```r
    cats <- data.frame(coat = c("calico", "black", "tabby"),
                       weight = c(2.1, 5.0, 3.2),
                       likes_string = c(1, 0, 1))
    cats      # show contents of data frame
    str(cats) # inspect structure of data frame
    ```

2.  Write the data frame to a CSV and re-import it You can use
    `read.delim()` for tab-delimited files.

    ```r
    write.csv(x = cats, file = "data/feline_data.csv", row.names = FALSE)
    cats <- read.csv(file = "data/feline_data.csv", stringsAsFactors = TRUE)

    cats      # show contents of data frame
    str(cats) # the chr column is now a factor column
    ```

3.  Access the vectors of the data frame

    ```r
    cats$weight
    cats$coat
    ```

4.  Use data frame vectors as inputs

    ```r
    cats$weight + 2
    paste("My cat is", cats$coat)
    cats$coat + 2      # Illegal operation
    ```

## Data types

There are 5 basic vector types.

```r
typeof(cats$weight)
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
    length(cats$weight)
    length(3.14)
    ```

2.  New vectors are empty by default

    ```r
    # Vectors are logical by default
    vector1 <- vector(length = 3)
    vector1

    # You can specify other types
    vector2 <- vector(mode="character", length = 3)
    vector2
    str(vector2)

    # A data frame is a list of vectors
    str(cats$weight)
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

    # Modify your data frame in place
    cats$likes_string <- as.logical(cats$likes_string)
    ```

5.  There are multiple ways to generate vectors

    ```r
    # Two options for generating sequences
    series1 <- 1:10
    series2 <- seq(10)

    series1
    series2

    # The seq() function is more flexible
    series3 <- seq(10, by=0.1)
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

## Data frames

1.  A vector can only hold one type. Therefore, in a data frame each
    data column (vector) has to be a single type.

    ```r
    class(cats)    # data.frame
    typeof(cats)   # a data frame is list of vectors
    ```

2.  Data frames have column names

    ```r
    names(cats)
    names(cats)[2] <- "weight_kg"
    names
    ```

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
    cats[[1]]  # content by index
    cats$coat  # content by name
    cats[, 1]  # content by index, across all rows
    cats[1, 1] # content by index, single row
    ```

    1.  You can inspect all of these with `typeof()`
    2.  Note that you can address data frames by row and columns

## Matrices

```r
```

1.  A matrix is an enhanced vector.

    ```r
    # Create a matrix of zeros
    mat1 <- matrix(0, ncol=6, nrow=3)

    # Inspect it
    class(mat1)
    typeof(mat1)
    str(mat1)
    ```

2.  Some operations act like a wrapped vector

    ```r
    length(mat1)
    ```

## Challenge 4

See /scripts/curriculum.Rmd

# Exploring data frames

Move to gapminder data as quickly as possible

# Vectorization

# Control flow

# Functions explained

# Subsetting data

subset vs filter

# Tidyverse and pipes

# Writing data

# ggplot2

skip

# Splitting and combining data frames with plyr

skip?

# Data frame manipulation with dplyr

# Data frame manipulation with tidyr

# Producing reports with knitr

skip

# Writing good software

skip

# IDE Reference

1.  Clear console
    1.  RStudio: `C-l`
    2.  Emacs: `C-c M-o` / `M-x comint-clear-buffer`

# Credits

-   R for Reproducible Scientific Analysis:
    <https://swcarpentry.github.io/r-novice-gapminder/>
-   Andrea Sánchez-Tapia\'s workshop:
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
