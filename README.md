- [<span class="toc-section-number">1</span> Fundamentals (Week 1)](#fundamentals-week-1)
  - [<span class="toc-section-number">1.1</span> Introduction to RStudio](#introduction-to-rstudio)
  - [<span class="toc-section-number">1.2</span> Introduction to R](#introduction-to-r)
  - [<span class="toc-section-number">1.3</span> Project management with RStudio](#project-management-with-rstudio)
  - [<span class="toc-section-number">1.4</span> Seeking help](#seeking-help)
  - [<span class="toc-section-number">1.5</span> Data structures](#data-structures)
  - [<span class="toc-section-number">1.6</span> Creating data frames](#creating-data-frames)
  - [<span class="toc-section-number">1.7</span> Subsetting data](#subsetting-data)
- [<span class="toc-section-number">2</span> Building Programs in R (Week 2)](#building-programs-in-r-week-2)
  - [<span class="toc-section-number">2.1</span> Control flow](#control-flow)
  - [<span class="toc-section-number">2.2</span> Vectorization](#vectorization-1)
  - [<span class="toc-section-number">2.3</span> Higher-order functions](#higher-order-functions)
  - [<span class="toc-section-number">2.4</span> Functions explained](#functions-explained)
  - [<span class="toc-section-number">2.5</span> Reading and writing data](#reading-and-writing-data)
- [<span class="toc-section-number">3</span> Tidyverse (Week 3)](#tidyverse-week-3)
  - [<span class="toc-section-number">3.1</span> Data frame manipulation with dplyr](#data-frame-manipulation-with-dplyr)
  - [<span class="toc-section-number">3.2</span> Data frame manipulation with tidyr](#data-frame-manipulation-with-tidyr)
  - [<span class="toc-section-number">3.3</span> Additional tidyverse libraries](#additional-tidyverse-libraries)
  - [<span class="toc-section-number">3.4</span> (Optional) Database interfaces](#optional-database-interfaces)
- [<span class="toc-section-number">4</span> Creating publication-quality graphics with ggplot2 (Week 4)](#creating-publication-quality-graphics-with-ggplot2-week-4)
- [<span class="toc-section-number">5</span> Plots and exploratory data analysis in R](#plots-and-exploratory-data-analysis-in-r)
  - [<span class="toc-section-number">5.1</span> Why do we plot our data?](#why-do-we-plot-our-data)
  - [<span class="toc-section-number">5.2</span> What do you need to know about your data?](#what-do-you-need-to-know-about-your-data)
  - [<span class="toc-section-number">5.3</span> Motivating exaample: Anscombe quartet](#motivating-exaample-anscombe-quartet)
- [<span class="toc-section-number">6</span> ggplot2](#ggplot2)
  - [<span class="toc-section-number">6.1</span> Grammar of graphics](#grammar-of-graphics)
  - [<span class="toc-section-number">6.2</span> Read the docs](#read-the-docs)
  - [<span class="toc-section-number">6.3</span> Basic plotting functions](#basic-plotting-functions)
  - [<span class="toc-section-number">6.4</span> Libraries](#libraries)
- [<span class="toc-section-number">7</span> Endnotes](#endnotes)
  - [<span class="toc-section-number">7.1</span> Credits](#credits)
  - [<span class="toc-section-number">7.2</span> References](#references)
  - [<span class="toc-section-number">7.3</span> Data Sources](#data-sources)

# Fundamentals (Week 1)

## Introduction to RStudio

### Orientation

<figure id="Data science workflow">
<img src="images/data-science-workflow.png" />
<figcaption>Building programs that support your research workflow.</figcaption>
</figure>

1.  R was created by statisticians for statisticians (and other researchers)
2.  R contains multitudes; this can be good and bad

### RStudio configuration

#### Configuration menu

1.  PC/Linux: Tools \> Global Options
2.  MacOS: RStudio \> Preferences *or* Tools \> Global Options

#### Helpful configuration settings

1.  General \> Basic
    - Don't save or restore .RData
2.  Code \> Editing
    - Use native pipe operator
    - Ctrl+Enter executes single line (or Multi-line R statement)
3.  Code \> Display
    - Rainbow parentheses
4.  Appearance: Adjust font and syntax colors
5.  Pane Layout: Move IDE panes

### (Optional) Workstation configuration

By default, your view of your file system will be opaque. We want to make it transparent (e.g. you may have a local Desktop and a cloud Desktop folder).

#### Mac OS Finder \> Preferences

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

#### Windows System \> File Explorer

Your local Desktop folder is in your Home directory or Computer directory.

1.  File \> Change folder and search options \> View
    1.  Files and Folders
        1.  Show hidden files, folders, and drives
        2.  Hide protected operating system files
        3.  **Uncheck** Hide extensions for known file types
    2.  Navigation Pane
        1.  Show all folders
2.  View
    1.  File name extensions

### Workflow in RStudio

1.  Set working directory

2.  Test code snippets in the R console \[REPL\]

    ``` r
    print("hello")
    ```

3.  Create an .R script in the working directory

    ``` r
    print("hello")
    ```

4.  **Run** the script

    1.  Keyboard shortcut
        - Windows/Linux: `Control-Enter`
        - MacOS: `Command-Enter`
    2.  Run button
    3.  Highlight and run lines

5.  **Source** the script to reduce console clutter and make contents available to other scripts

    - <https://stackoverflow.com/a/24418219>
    - <https://support.rstudio.com/hc/en-us/articles/200484448-Editing-and-Executing-Code>

6.  **Insert** assignment arrow `<-`

    - MacOS: `Option -`
    - Windows/Linux: `Alt -`
    - Good customization: `Control -`

7.  **Break** execution if console hangs

    1.  Windows: `ESC`
    2.  MacOS/Linux: `Control-c`

8.  **Clear** console

    1.  RStudio: `C-l`
    2.  Emacs: `C-c M-o` / `M-x comint-clear-buffer`

9.  **Comment/Uncomment** code

    - MacOS: `Command-/`

## Introduction to R

A whirlwind tour of R fundamentals

### Mathematical expressions

``` r
1 + 100
(3 + 5) * 2  # operator precedence
5 * (3 ^ 2)  # powers
2/10000      # outputs 2e-04
2 * 10^(-4)  # 2e-04 explicated
```

### Built-in functions

1.  Some functions need inputs ("arguments")

    ``` r
    getwd()      # no argument required
    sin(1)       # requires arg
    log(1)       # natural log
    ```

2.  RStudio has auto-completion

    ``` r
    log...
    ```

3.  Use `help()` to find out more about a function

    ``` r
    help(exp)
    exp(0.5)    # e^(1/2)
    ```

### Comparing things

1.  Basic comparisons

    ``` r
    1 == 1
    1 != 2
    1 < 2
    1 <= 1
    ```

2.  Use `all.equal()` for floating point numbers

    ``` r
    all.equal(3.0, 3.0)        # TRUE
    all.equal(2.99, 3.0)       # 7 places: Gives difference
    all.equal(2.99999999, 3.0) # 8 places: TRUE
    2.99999999 == 3.0          # 8 places: FALSE
    ```

### Variables and assignment

1.  R uses the assignment arrow (`C-c C-=` in ESS)

    ``` r
    # Assign a value to the variable name
    x <- 0.025
    ```

2.  You can inspect a variable's value in the Environment tab or by evaluating it in the console

    ``` r
    # Evaluate the variable and echo its value to the console
    x
    ```

3.  Variables can be re-used and re-assigned

    ``` r
    log(x)
    x <- 100
    x <- x + 1
    y <- x * 2
    ```

4.  Use a standard naming scheme for your variables

    ``` r
    r.style.variable <- 10
    python_style_variable <- 11
    javaStyleVariable <- 12
    ```

### Vectorization

Vectorize all the things! This makes idiomatic R very different from most programming languages, which use iteration ("for" loops) by default.

``` r
# Create a sequence 1 - 5
1:5

# Raise 2 to the Nth power for each element of the sequence
2^(1:5)

# Assign the resulting vector to a variable
v <- 1:5
2^v
```

### Managing your environment

``` r
ls()             # List the objects in the environment
ls               # Echo the contents of ls(), i.e. the code
rm(x)            # Remove the x object
rm(list = ls())  # Remove all objects in environment
```

Note that parameter passing (`=`) is not the same as assignment (`<-`) in R!

### Built-in data sets

``` r
data()
```

### R Packages

"Package" and "library" are roughly interchangeable.

1.  Install additional packages

    ``` r
    install.packages("tidyverse")
    ## install.packages("rmarkdown")
    ```

2.  Activate a package for use

    ``` r
    library("tidyverse")
    ```

## Project management with RStudio

### General file management

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

### Create projects with Rstudio

1.  File \> New Project
2.  Create in existing Folder
3.  If you close RStudio and double-click Rproj, RStudio will open to the project location and set the working directory.

## Seeking help

### Basic help syntax

``` r
help(write.csv)
?write.csv
```

### Help file format

1.  Description
2.  Usage
3.  Arguments
4.  Details
5.  Examples (highlight and run with `C-Enter`)

### Special operators

``` r
help("<-")
```

### Introspection

``` r
methods()
```

### Library examples

``` r
vignette("dplyr")
```

### What if you don't know where to start?

1.  RStudio autocomplete

2.  Fuzzy search

    ``` r
    ??set
    ```

3.  Browse by topic: <https://cran.r-project.org/web/views/>

## Data structures

### R stores "atomic" data as vectors

There are no scalars in R; everything is a vector, even if it's a vector of length 1.

``` r
v <- 1:5

length(v)
length(3.14)
```

### Every vector has a type

There are 5 basic (vector) data types: double, integer, complex, logical and character.

``` r
typeof(v)
typeof(3.14)
typeof(1L)
typeof(1+1i)
typeof(TRUE)
typeof("banana")
```

### Vectors and type coercion

1.  A vector must be all one type. If you mix types, R will perform type coercion. See coercion rules in scripts/curriculum.Rmd

    ``` r
    c(2, 6, '3')
    c(0, TRUE)
    ```

2.  You can change vector types

    ``` r
    # Create a character vector
    chr_vector <- c('0', '2', '4')
    str(chr_vector)

    # Use it to create a numeric vector
    num_vector <- as.numeric(chr_vector)

    # Show the structure of the collection
    str(num_vector)
    ```

3.  There are multiple ways to generate vectors

    ``` r
    # Two options for generating sequences
    1:10
    seq(10)

    # The seq() function is more flexible
    series <- seq(1, 10, by=0.1)
    series
    ```

4.  Get information about a collection

    ``` r
    # Don't print everything to the screen
    length(series)
    head(series)
    tail(series, n=2)
    ```

    ``` r
    # You can add informative labels to most things in R
    names(v) <- c("a", "b", "c", "d", "e")
    v
    str(v)
    ```

5.  Get an item by its position or label

    ``` r
    v[1]
    v["a"]
    ```

6.  Set an item by its position or label

    ``` r
    v[1] = 4
    v
    ```

7.  (Optional) New vectors are empty by default

    ``` r
    # Vectors are logical by default
    vector1 <- vector(length = 3)
    vector1

    # You can specify the type of an empty vector
    vector2 <- vector(mode="character", length = 3)
    vector2
    str(vector2)
    ```

### **Challenge 1**: Generate and label a vector

See /scripts/curriculum.Rmd

### (Optional) Matrices

1.  A matrix is 2-dimensional vector

    ``` r
    # Create a matrix of zeros
    mat1 <- matrix(0, ncol = 6, nrow = 3)

    # Inspect it
    class(mat1)
    typeof(mat1)
    str(mat1)
    ```

2.  Some operations act as if the matrix is a 1-D wrapped vector

    ``` r
    mat2 <- matrix(1:25, nrow = 5, byrow = TRUE)
    str(mat2)
    length(mat2)
    ```

### (Optional) Factors

1.  Factors represent unique levels (e.g., experimental conditions)

    ``` r
    coats <- c("tabby", "tortoise", "tortoise", "black", "tabby")
    str(coats)

    # The reprentation has 3 levels, some of which have multiple instances
    categories <- factor(coats)
    str(categories)
    ```

2.  R assumes that the first factor represents the baseline level, so you may need to change your factor ordering so that it makes sense for your variables

    ``` r
    ## "control" should be the baseline, regardless of trial order
    trials <- c("manipulation", "control", "control", "manipulation")

    trial_factors <- factor(trials, levels = c("control", "manipulation"))
    str(trial_factors)
    ```

### Data Frames are central to working with tabular data

1.  Import data from a CSV file. You can use `read.delim()` for tab-delimited files, or `read.table()` for flexible, general-purpose input.

    ``` r
    plots <- read.csv(file = "data/plots.csv", stringsAsFactors = FALSE)

    plots # show contents of data frame
    str(plots) # inspect structure of data frame

    plots <- read.csv(file = "data/plots.csv", stringsAsFactors = TRUE)
    str(plots) # the chr column is now a factor column
    ```

2.  Access the column (vectors) of the data frame

    ``` r
    plots$plot_id
    plots$plot_type
    ```

3.  A vector can only hold one type. Therefore, in a data frame each data column (vector) has to be a single type.

    ``` r
    typeof(plots$plot_id)
    ```

4.  Data frames have column names `names()` gets or sets a name

    ``` r
    names(plots)
    names(plots)[1] <- "id"
    plots
    ```

5.  Use data frame vectors in operations

    ``` r
    # Function applies to every element of the vector
    paste("Enclosure type is", plots$plot_type)
    plots$id * 2

    # Operations are ephemeral unless their outputs are reassigned to the variable
    plots <- plots$id * 2
    ```

### Working with realistic data

``` r
gapminder <- read.csv("data/gapminder_long.csv", stringsAsFactors = TRUE)

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

### Lists

1.  Let's re-inspect our Gapminder data

    ``` r
    # It's a list
    typeof(gapminder)

    # Properties of a list
    length(gapminder)
    colnames(gapminder)

    # It's also a data frame!
    class(gapminder)
    ```

2.  Lists can contain anything

    ``` r
    list1 <- list(1, "a", TRUE)

    # Inspect each element of the list
    list1[[1]]
    list1[[2]]
    list1[[3]]
    ```

3.  If you use a single bracket `[]`, you get back a shorter section of the list, which is also a list. Use double brackets `[[]]` to drill down to the actual value.

    ``` r
    list2 <- list(first = 1, second = "a", third = TRUE)

    # Single brackets retrieve a slice of the list, containing the name:value pair
    list2[2]

    # Double brackets retrieve the value, i.e. the contents of the list item
    list2[[3]]
    ```

4.  (Optional) Some operations return lists, others return vectors (basically, are you getting the column with its label, or are you drilling down to the data?)

    1.  Get list slices

        ``` r
        # List slices
        plots[2]           # list slice by index
        plots["plot_type"] # list slice by name
        plots[1, ]         # get data frame row by row number
        ```

    2.  Get list contents (in this case, vectors)

        ``` r
        # List contents (in this case, vectors)
        plots[[2]]           # content by index
        plots[["plot_type"]] # content by name
        plots$plot_type      # content by name; shorthand for previous
        plots[, 1]           # content by index, across all rows
        plots[1, 1]          # content by index, single row
        ```

    3.  You can inspect all of these with `typeof()`

    4.  Note that you can address data frames by row and columns

### **(Optional) Challenge 2**: Creating matrices

See /scripts/curriculum.Rmd

### **Challenge 3**: New gapminder data frame

See /scripts/curriculum.Rmd

## Creating data frames

### Create a new data frame

``` r
gap <- data.frame(country = gapminder$country, year = gapminder$year, gdp = gapminder$gdpPercap)
```

### Adding columns

``` r
cbind(gap, continent = gapminder$continent)
str(gap)                                           # cats is unchanged

gap <- cbind(gap, continent = gapminder$continent) # overwrite old cats
str(gap)
```

### Appending rows (remember, rows are lists!)

``` r
newRow <- list("Afghanistan", 2023, 415.71, "Asia")
gap <- rbind(gap, newRow)
```

## Subsetting data

### Subset by index

``` r
v <- 1:5
```

1.  Index selection

    ``` r
    v[1]
    v[1:3]     # index range
    v[c(1, 3)] # selected indices
    ```

2.  (Optional) Index exclusion

    ``` r
    v[-1]
    v[-c(1, 3)]
    ```

### Subset by name

``` r
letters[1:5]
names(v) <- letters[1:5]
```

1.  Character selection

    ``` r
    v["a"]
    v[names(v) %in% c("a", "c")]
    ```

2.  (Optional) Character exclusion

    ``` r
    v[! names(v) %in% c("a", "c")]
    ```

### (Optional) Subsetting matrices

``` r
m <- matrix(1:28, nrow = 7, byrow = TRUE)

# Matrices are just 2D vectors
m[2:4, 1:3]
m[c(1, 3, 5), c(2, 4)]
```

### (Optional) Extracting list elements

Single brackets get you subsets of the same type (`list -> list`, `vector -> vector`, etc.). Double brackets extract the underlying vector from a list or data frame.

``` r
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

### Subsetting by logical operations

1.  Explicitly mask each item using TRUE or FALSE. This returns the reduced vector.

    ``` r
    v[c(FALSE, TRUE, TRUE, FALSE, FALSE)]
    ```

2.  Evaluate the truth of each item, then produce the TRUE ones

    ``` r
    # Use a criterion to generate a truth vector
    v > 4

    # Filter the original vector by the criterion
    v[v > 4]
    ```

3.  Combining logical operations

    ``` r
    v[v < 3 | v > 4]
    ```

### Subsetting Data Frames

Data frames have characteristics of both lists and matrices.

1.  Get first three rows

    ``` r
    gapminder <- read.csv("data/gapminder_long.csv", stringsAsFactors = TRUE)

    # Get first three rows
    gapminder[1:3,]
    ```

2.  Rows and columns

    ``` r
    gapminder[1:6, 1:3]
    gapminder[1:6, c("country", "pop")]
    ```

3.  Data frames are lists, so one index gets you the **columns**

    ``` r
    gapminder[1:3]
    ```

4.  Filter by contents

    ``` r
    gapminder[gapminder$country == "Mexico",]
    north_america <- c("Canada", "Mexico", "United States")
    gapminder[gapminder$country %in% north_america,]
    gapminder[gapminder$country %in% north_america & gapminder$year > 1999,]
    gapminder[gapminder$country %in% north_america & gapminder$year > 1999, c("country", "pop")]
    ```

### (Optional) Subset by factor

``` r
# First three items
gapminder$country[1:3]

# All items in factor set
north_america <- c("Canada", "Mexico", "United States")
gapminder$country[gapminder$country %in% north_america]
```

### **Challenge 4**: Extract data by region

See /scripts/curriculum.Rmd

# Building Programs in R (Week 2)

## Control flow

### Conditionals

1.  Look at Conditional template in curriculum.Rmd

2.  If

    ``` r
    x <- 8

    if (x >= 10) {
      print("x is greater than or equal to 10")
    }
    ```

3.  Else

    ``` r
    if (x >= 10) {
      print("x is greater than or equal to 10")
    } else {
      print("x is less than 10")
    }
    ```

4.  Else If

    ``` r
    if (x >= 10) {
      print("x is greater than or equal to 10")
    } else if (x > 5) {
      print("x is greater than 5, but less than 10")
    } else {
      print("x is less than 5")
    }
    ```

5.  Vectorize your tests

    ``` r
    x <- 1:4

    if (any(x < 2)) {
      print("Some x less than 2")
    }

    if (all(x < 2)){
      print("All x less than 2")
    }
    ```

### Review Subsetting section

Subsetting is frequently an alternative to if-else statements in R

### Iteration

1.  Look at Iteration template in curriculum.Rmd

2.  Basic For loop

    ``` r
    for (i in 1:10) {
      print(i)
    }
    ```

3.  Nested For loop

    ``` r
    for (i in 1:5) {
      for (j in letters[1:4]) {
        print(paste(i,j))
      }
    }
    ```

4.  This is where we skip the example where we append things to the end of a data frame. For loops are slow, vectorize operations are fast (and idiomatic). Use for loops where they're the appropriate tool (e.g., loading files, cycling through whole data sets, etc). We will see more of this in the section on reading and writing data.

## Vectorization

### Vector operations are element-wise by default

``` r
x <- 1:4
y <- 6:9
x + y
log(x)

# A more realistic example
gapminder$pop_millions <- gapminder$pop / 1e6
head(gapminder)
```

### Vectors of unequal length are recycled

``` r
z <- 1:2
x + z
```

### Logical comparisons

1.  Do the elements match a criterion?

    ``` r
    x > 2
    a <- (x > 2) # you can assign the output to a variable

    # Evaluate a boolean vector
    any(a)
    all(a)
    ```

2.  Can you detect missing data?

    ``` r
    nan_vec <- c(1, 3, NaN)

    ## Which elements are NaN?
    is.nan(nan_vec)

    ## Which elements are not NaN?
    !is.nan(nan_vec)

    ## Are any elements NaN?
    any(is.nan(nan_vec))

    ## Are all elements NaN?
    all(is.nan(nan_vec))
    ```

### Matrix operations are also element-wise by default

``` r
m <- matrix(1:12, nrow=3, ncol=4)

# Multiply each item by -1
m * -1
```

### Linear algebra uses matrix multiplication

``` r
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

### **Challenge 5**: Sum of squares

See /scripts/curriculum.Rmd

## Higher-order functions

`apply()` lets you apply an arbitrary function over a collection. This is an example of a higher-order function (map, apply, filter, reduce, fold, etc.) that can (and should) replace loops for most purposes. They are an intermediate case between vectorized operations (very fast) and for loops (very slow). Use them when you need to build a new collection and vectorized operations aren't available.

### (Optional) `apply()`: Apply a function over the margins of an array

``` r
m <- matrix(1:28, nrow = 7, byrow = TRUE)

apply(m, 1, mean)
apply(m, 2, mean)
apply(m, 1, sum)
apply(m, 2, sum)
```

### `lapply()`: Apply a function over a list, returning a list

``` r
lst <- list(title = "Numbers", numbers = 1:10, data = TRUE)
str(lst)

## length() returns the length of the whole list
length(lst)

## Use lapply() to get the length of the individual elements
lapply(lst, length)
```

### `sapply()`: Apply a function polymorphically over list, returning vector, matrix, or array as appropriate

``` r
## Simplify and return a vector by default
sapply(lst, length)

## Optionally, eturn the original data type
sapply(lst, length, simplify = FALSE)
```

### (Optional) Use `apply` and friends to extract nested data from a list

1.  Read a file JSON into a nested list

    ``` r
    ## Read JSON file into nested list
    library("jsonlite")
    books <- fromJSON("../data/books.json")

    ## View list structure
    str(books)
    ```

2.  Extract all of the authors with `lapply()`. This requires us to define an *anonymous function*.

    ``` r
    ## Extract a single author
    books[["bk110"]]$author

    ## Use lapply to extract all the authors
    authors <- lapply(books, function(x) x$author)

    ## Returns list
    str(authors)
    ```

3.  Extract all of the authors with `sapply()`

    ``` r
    authors <- sapply(books, function(x) x$author)

    # Returns vector
    str(authors)
    ```

### (Optional) Convert nested list into data frame

1.  Method 1: Create a list of data frames, then bind them together into a single data frame

    ``` r
    ## This approach omits the top-level book id
    df <- do.call(rbind, lapply(books, data.frame))
    ```

    - `lapply()` applies a given function for each element in a list, so there will be several function calls.
    - `do.call()` applies a given function to the list as a whole, so there is only one function call.

2.  Method 2: Use the `rbindlist()` function from data.table

    ``` r
    ## This approach includes the top-level book id
    df <- data.table::rbindlist(books, idcol = TRUE)
    ```

## Functions explained

Functions let you encapsulate and re-use chunks of code. This has several benefits:

1.  Eliminates repetition in your code. This saves labor, but more importantly it reduces errors, and makes it easier for you to find and correct errors.
2.  Allows you to write more generic (i.e. flexible) code.
3.  Reduces cognitive overhead.

### Defining a function

1.  Look at Function template in data/curriculum.Rmd

2.  Define a simple function

    ``` r
    # Convert Fahrenheit to Celcius
    f_to_celcius <- function(temp) {
      celcius <- (temp - 32) * (5/9)
      return(celcius)
    }
    ```

3.  Call the function

    ``` r
    f_to_celcius(32)

    boiling <- f_to_celcius(212)
    ```

### Combining functions

Define a second function and call the first function within the second.

``` r
f_to_kelvin <- function(temp) {
  celcius <- f_to_celcius(temp)
  kelvin <- celcius + 273.15
  return(kelvin)
}

f_to_kelvin(212)
```

### Most functions work with collections

``` r
## Create a vector of temperatures
temps <- seq(from = 1, to = 101, by = 10)

# Vectorized calculation (fast)
f_to_kelvin(temps)

# Apply
sapply(temps, f_to_kelvin)
```

### Defensive programming

1.  Check whether input meets criteria before proceeding (this is \`assert\` in other languages).

    ``` r
    f_to_celcius <- function(temp) {
      ## Check inputs
      stopifnot(is.numeric(temp), temp > -460)
      celcius <- (temp - 32) * (5/9)
      return(celcius)
    }

    f_to_celcius("a")
    f_to_celcius(-470)
    ```

2.  Fail with a custom error if criterion not met

    ``` r
    f_to_celcius <- function(temp) {
      if(!is.numeric(temp)) {
        stop("temp must be a numeric vector")
      }
      celcius <- (temp - 32) * (5/9)

      return(celcius)
    }
    ```

### Working with rich data

``` r
## Prerequisites
gapminder <- read.csv("../data/gapminder_data.csv", stringsAsFactors = TRUE)
north_america <- c("Canada", "Mexico", "United States")
```

1.  Calculate the total GDP for each entry in the data set

    ``` r
    gapminder <- read.csv("../data/gapminder_data.csv", stringsAsFactors = TRUE)

    gdp <- gapminder$pop * gapminder$gdpPercap
    ```

2.  Write a function to perform a total GDP calculation on a filtered subset of your data. Begin with the minimal working function.

    ``` r
    calcGDP <- function(df, year, country) {
      # Note that year and country are vectors
      # Get rows that match year
      df <- df[df$year %in% year, ]

      # Get subset of year rows that match country
      df <- df[df$country %in% country,]

      # Calculate total GDP
      gdp <- df$pop * df$gdpPercap

      # Return new data frame with GDP column
      new_df <- cbind(df, gdp=gdp)
      return(new_df)
    }
    ```

3.  (Optional) Add defensive programming elements

    ``` r
    calcGDP <- function(df, year=NULL, country=NULL) {
      if(!is.null(year)) {
        df <- df[df$year %in% year, ]
      }
      if (!is.null(country)) {
        df <- df[df$country %in% country,]
      }
      gdp <- df$pop * df$gdpPercap

      new_df <- cbind(df, gdp=gdp)
      return(new_df)
    }
    ```

4.  Mutating `df` inside the function doesn't affect the global `gapminder` data frame (because of pass-by-value and scope).

### **Challenge 6**: Testing and debugging your function

See data/curriculum.Rmd

## Reading and writing data

### Create sample data sets and write them to the \`processed\` directory

1.  Preliminaries

    ``` r
    if (!dir.exists("../processed")) {
      dir.create("../processed")
    }

    north_america <- c("Canada", "Mexico", "United States")
    ```

2.  Version 1: Use `calcGDP` function

    ``` r
    for (year in unique(gapminder$year)) {
      df <- calcGDP(gapminder, year = year, country = north_america)

      ## Generate a file name. This will fail if "processed" doesn't exist
      fname <- paste("../processed/north_america_", as.character(year), ".csv", sep = "")

      ## Write the file
      write.csv(x = df, file = fname, row.names = FALSE)
    }
    ```

3.  (Optional) Version 2: Bypass `calcGDP` function

    ``` r
    for (year in unique(gapminder$year)) {
      df <- gapminder[gapminder$year == year, ]
      df <- df[df$country %in% north_america, ]
      fname <- paste("processed/north_america_", as.character(year), ".csv", sep="")
      write.csv(x = df, file = fname, row.names = FALSE)
    }
    ```

### How to find files

``` r
## Get matching files from the `processed` subdirectory
dir(path = "../processed", pattern = "north_america_[1-9]*.csv")
```

### Read files using a for loop

1.  Read each file into a data frame and add it to a list

    ``` r
    ## Create an empty list
    df_list <- list()

    ## Get the locations of the matching files
    file_names <- dir(path = "../processed", pattern = "north_america_[1-9]*.csv")
    file_paths <- file.path("../processed", file_names)

    for (f in file_paths){
      df_list[[f]] <- read.csv(f, stringsAsFactors = TRUE)
    }
    ```

2.  Access the list items to view the individual data frames

    ``` r
    length(df_list)
    names(df_list)
    lapply(df_list, length)
    df_list[["north_america_1952.csv"]]
    ```

### Read files using apply

1.  Instead of a for loop that handles each file individually, use a single vectorized function.

    ``` r
    df_list <- lapply(file_paths, read.csv, stringsAsFactors = TRUE)

    ## The resulting list does not have names set by default
    names(df_list)

    ## You can still access by index position
    df_list[[2]]
    ```

2.  Add names manually

    ``` r
    names(df_list) <- file_names
    df_list$north_america_1952.csv
    ```

3.  (Optional) Automatically set names for the output list This example sets each name to the complete path name (e.g., `"../processed/north_america_1952.csv"`).

    ``` r
    df_list <- sapply(file_paths, read.csv, simplify = FALSE, USE.NAMES = TRUE)
    ```

### Concatenate list of data frames into a single data frame

1.  Method 1: Create a list of data frames, then bind them together into a single data frame

    ``` r
    df <- do.call(rbind, df_list)
    ```

    - `lapply()` applies a given function for each element in a list, so there will be several function calls.
    - `do.call()` applies a given function to the list as a whole, so there is only one function call.

2.  (Optional) Method 2: Use the `rbindlist()` function from data.table. This *can* be faster for large data sets. It also give you the option of preserving the list names (in this case, the source file names) as a new column in the new data frame.

    ``` r
    df_list <- sapply(file.path("../processed", file_names), read.csv, simplify = FALSE, USE.NAMES = TRUE)
    df <- data.table::rbindlist(df_list, idcol = TRUE)
    ```

# Tidyverse (Week 3)

## Data frame manipulation with dplyr

### Orientation

``` r
library("dplyr")
```

1.  Explain Tidyverse briefly: <https://www.tidyverse.org/packages/>
2.  (Optional) Demo unix pipes with `history | grep`
3.  Explain tibbles briefly
4.  dplyr allows you to treat data frames like relational database tables; i.e. as *sets*

### Select data frame variables

1.  `select()` provides a mini-language for selecting data frame variables

    ``` r
    df <- select(gapminder, year, country, gdpPercap)
    str(df)
    ```

2.  `select()` understands negation (and many other intuitive operators)

    ``` r
    df2 <- select(gapminder, -continent)
    str(df2)
    ```

3.  You can link multiple operations using pipes. This will be more intuitive once we see this combined with `filter()`

    ``` r
    df <- gapminder %>% select(year, country, gdpPercap)

    ## You can use the native pipe. This has a few limitations:
    ## df <- gapminder |> select(year, country, gdpPercap)
    ```

### Filter data frames by content

1.  Filter by continent

    ``` r
    df_europe <- gapminder %>%
      filter(continent == "Europe") %>%
      select(year, country, gdpPercap)

    str(df_europe)
    ```

2.  Filter by continent and year

    ``` r
    europe_2007 <- gapminder %>%
      filter(continent == "Europe", year == 2007) %>%
      select(country, lifeExp)

    str(europe_2007)
    ```

### **(Optional) Challenge 7**: Filter

See data/curriculum.Rmd

### Group rows

1.  Group data by a data frame variable

    ``` r
    grouped_df <- gapminder %>% group_by(continent)

    ## This produces a tibble
    str(grouped_df)
    ```

2.  The grouped data frame contains metadata (i.e. bookkeeping) that tracks the group membership of each row. You can inspect this metadata:

    ``` r
    grouped_df %>% tally ()
    grouped_df %>% group_keys ()
    grouped_df %>% group_vars ()

    ## These produce a lot of output:
    grouped_df %>% group_indices ()
    grouped_df %>% group_rows ()
    ```

    - More information about grouped data frames: <https://dplyr.tidyverse.org/articles/grouping.html>

### Summarize grouped data

1.  Calculate mean gdp per capita by continent

    ``` r
    grouped_df %>% summarise(mean_gdpPercap = mean(gdpPercap))
    ```

2.  (Optional) Using pipes allows you to do ad hoc reporting with creating intermediate variables

    ``` r
    gapminder %>%
      group_by(continent) %>%
      summarise(mean_gdpPercap = mean(gdpPercap))
    ```

3.  Group data by multiple variables

    ``` r
    df <- gapminder %>%
      group_by(continent, year) %>%
      summarise(mean_gdpPercap = mean(gdpPercap))
    ```

4.  Create multiple data summaries

    ``` r
    df <- gapminder %>%
      group_by(continent, year) %>%
      summarise(mean_gdp = mean(gdpPercap),
                sd_gdp = sd(gdpPercap),
                mean_pop = mean(pop),
                sd_pop = sd(pop))
    ```

### Use group counts

1.  `count()` lets you get an ad hoc count of any variable

    ``` r
    gapminder %>%
      filter(year == 2002) %>%
      count(continent, sort = TRUE)
    ```

2.  `n()` gives the number of observations in a group

    ``` r
    ## Get the standard error of life expectancy by continent
    gapminder %>%
      group_by(continent) %>%
      summarise(se_le = sd(lifeExp)/sqrt(n()))
    ```

### Mutate the data to create new variables

Mutate creates a new variable within your pipeline

``` r
## Total GDP and population by continent and year
df <- gapminder %>%
  mutate(gdp_billion = gdpPercap * pop / 10^9) %>%
  group_by(continent, year) %>%
  summarise(mean_gdp = mean(gdp_billion),
            sd_gdp = sd(gdp_billion),
            mean_pop = mean(pop),
            sd_pop = sd(pop))
```

### Add conditional filtering to a pipeline with `ifelse`

1.  Perform previous calculation, but only in cases in which the life expectancy is over 25

    ``` r
    df <- gapminder %>%
      mutate(gdp_billion = ifelse(lifeExp > 25, gdpPercap * pop / 10^9, NA)) %>%
      group_by(continent, year) %>%
      summarise(mean_gdp = mean(gdp_billion),
                sd_gdp = sd(gdp_billion),
                mean_pop = mean(pop),
                sd_pop = sd(pop))
    ```

2.  (Optional) Predict future GDP per capita for countries with higher life expectancies

    ``` r
    df <- gapminder %>%
      mutate(gdp_expected = ifelse(lifeExp > 40, gdpPercap * 1.5, gdpPercap)) %>%
      group_by(continent, year) %>%
      summarize(mean_gdpPercap = mean(gdpPercap),
                mean_gdpPercap_expected = mean(gdp_expected))
    ```

### **Challenge 8**: Life expectancy in random countries

``` r
gapminder %>%
  filter(year == 2002) %>%
  group_by(continent) %>%
  sample_n(2) %>%
  summarize(mean_lifeExp = mean(lifeExp), country = country) %>%
  arrange(desc(mean_lifeExp))
```

## Data frame manipulation with tidyr

1.  Long format: All rows are unique observations (ideally)
    1.  each column is a variable
    2.  each row is an observation
2.  Wide format: Rows contain multiple observations
    1.  Repeated measures
    2.  Multiple variables

### Gapminder data

``` r
library("tidyr")
library("dplyr")

str(gapminder)
```

- 3 ID variables: continent, country, year
- 3 Observation variables: pop, lifeExp, gdpPercap

### Wide to long with `pivot_longer()`

1.  Load wide gapminder data

    ``` r
    gap_wide <- read.csv("../data/gapminder_wide.csv", stringsAsFactors = FALSE)
    str(gap_wide)
    ```

2.  Group comparable columns into a single variable. Here we group all of the "pop" columns, all of the "lifeExp" columns, and all of the "gdpPercap" columns.

    ``` r
    gap_long <- gap_wide %>%
      pivot_longer(
        cols = c(starts_with('pop'), starts_with('lifeExp'), starts_with('gdpPercap')),
        names_to = "obstype_year", values_to = "obs_values"
      )

    str(gap_long)
    head(gap_long, n=20)
    ```

    1.  Original column headers become keys
    2.  Original column values become values
    3.  This pushes **all** values into a single column, which is unintuitive. We will generate the intermediate format later.

3.  (Optional) Same pivot operation as (2), specifying the columns to be omitted rather than included.

    ``` r
    gap_long <- gap_wide %>%
      pivot_longer(
        cols = c(-continent, -country),
        names_to = "obstype_year", values_to = "obs_values"
      )

    str(gap_long)
    ```

4.  Split compound variables into individual variables

    ``` r
    gap_long <- gap_long %>% separate(obstype_year, into = c('obs_type', 'year'), sep = "_")
    gap_long$year <- as.integer(gap_long$year)
    ```

### Long to intermediate with `pivot_wider()`

1.  Recreate the original gapminder data frame (as a tibble)

    ``` r
    ## Read in the original data without factors for comparison purposes
    gapminder <- read.csv("../data/gapminder_data.csv", stringsAsFactors = FALSE)

    gap_normal <- gap_long %>%
      pivot_wider(names_from = obstype, values_from = obs_values)

    str(gap_normal)
    str(gapminder)
    ```

2.  Rearrange the column order of `gap_normal` so that it matches `gapminder`

    ``` r
    gap_normal <- gap_normal[, names(gapminder)]
    ```

3.  Check whether the data frames are equivalent (they aren't yet)

    ``` r
    all.equal(gap_normal, gapminder)

    head(gap_normal)
    head(gapminder)
    ```

4.  Change the sort order of `gap_normal` so that it matches

    ``` r
    gap_normal <- gap_normal %>% arrange(country, year)
    all.equal(gap_normal, gapminder)
    ```

### Long to wide with `pivot_wider()`

``` r
```

1.  Create variable labels for wide columns. In this case, the new variables are all combinations of metric (pop, lifeExp, or gdpPercap) and year. Effectively we are squishing many columns together.

    ``` r
    help(unite)

    df_temp <- gap_long %>%
      ## unite(ID_var, continent, country, sep = "_") %>%
      unite(var_names, obs_type, year, sep = "_")

    str(df_temp)
    head(df_temp, n=20)
    ```

2.  Pivot to wide format, distributing data into columns for each unique label

    ``` r
    gap_wide_new <- gap_long %>%
      ## unite(ID_var, continent, country, sep = "_") %>%
      unite(var_names, obs_type, year, sep = "_") %>%
      pivot_wider(names_from = var_names, values_from = obs_values)

    str(gap_wide_new)
    ```

3.  Sort columns alphabetically by variable name, then check for equality. You can move a single column to a different positions with `relocate()`

    ``` r
    gap_wide_new <- gap_wide_new[,order(colnames(gap_wide_new))]
    all.equal(gap_wide, gap_wide_new)
    ```

## Additional tidyverse libraries

### Reading data with readr

Fast, user-friendly file imports.

### String processing with stringr

Real string processing for R.

### Functional programming with purrr

Functional programming for the Tidyverse. The `map` family of functions replaces the `apply` family for most use cases. Map functions are strongly typed. For example, you can use `purrr:::map_chr()` to extract nested data from a list:

``` r
## View the relevant map function
library("purrr")
library("jsonlite")

help(map_chr)

books <- fromJSON("books.json")

## Returns vector
authors <- map_chr(books, ~.x$author)
```

1.  The `~` operation in Purrr creates an anonymous function that applies to all the elements in the `.x` collection.
    1.  Best overview in `as_mapper()` documentation: <https://purrr.tidyverse.org/reference/as_mapper.html>
    2.  <https://stackoverflow.com/a/53160041>
    3.  <https://stackoverflow.com/a/62488532>
    4.  <https://stackoverflow.com/a/44834671>
2.  Additional references
    1.  <https://purrr.tidyverse.org/reference/map.html>
    2.  <https://jtr13.github.io/spring19/ss5593&fq2150.html>

## (Optional) Database interfaces

### Data frame joins with dplyr

1.  <https://jozef.io/r006-merge/#alternatives-to-base-r>
2.  <https://dplyr.tidyverse.org/reference/mutate-joins.html>

### Access databases using dplyr

1.  <https://dbplyr.tidyverse.org>

# Creating publication-quality graphics with ggplot2 (Week 4)

# Plots and exploratory data analysis in R

## Why do we plot our data?

1.  Understand your data
2.  Quality control
3.  support the selection of statistical procedures
4.  evaluate whether data conform with assumptions of the statistical tests (e.g.,y normality)

## What do you need to know about your data?

1.  central tendency measures: mean, median, mode
2.  variation/dispersion measures: range, range width, variance, standard deviation, variation coefficient
3.  data distribution: quantiles, inter-quantile ranges, <u>boxplots</u>, <u>histograms</u>.
4.  relationship between variables: <u>scatterplots</u>, correlations, linear models

## Motivating exaample: Anscombe quartet

``` r
data("anscombe")
print(anscombe)
```

1.  Central tendency measures

    ``` r
    mean(anscombe$x1)
    apply(anscombe[,1:4], 2, mean)
    apply(anscombe[,5:8], 2, mean)
    apply(anscombe, 2, var)
    ```

2.  Correlations

    ``` r
    cor(anscombe$x1, anscombe$y1)
    cor(anscombe$x2, anscombe$y2)
    cor(anscombe$x3, anscombe$y3)
    cor(anscombe$x4, anscombe$y4)
    ```

3.  Linear regression parameters

    ``` r
    m1 <- lm(anscombe$y1 ~ anscombe$x1)
    m2 <- lm(anscombe$y2 ~ anscombe$x2)
    m3 <- lm(anscombe$y3 ~ anscombe$x3)
    m4 <- lm(anscombe$y4 ~ anscombe$x4)

    coef(m1)
    coef(m2)
    coef(m3)
    coef(m4)
    ```

4.  Plot the data and regression lines

    ``` r
    mlist <- list(m1, m2, m3, m4)
    lapply(mlist, coef)

    ## Plots
    plot(anscombe$y1 ~ anscombe$x1)
    abline(mlist[[1]])

    plot(anscombe$y2 ~ anscombe$x2)
    abline(mlist[[2]])

    plot(anscombe$y3 ~ anscombe$x3)
    abline(mlist[[3]])

    plot(anscombe$y4 ~ anscombe$x4)
    abline(mlist[[4]])
    ```

# ggplot2

## Grammar of graphics

Separates the data from the aesthetics part and allows layers of information to be added sequentially with \`+\`

``` r
ggplot(data = <data>,
       mapping = aes(<mappings>)) +
  geom_xxx()
```

1.  data
2.  mappings: the specific variables (x, y, z, group…)
3.  geom_xxx(): functions for plotting options \`geom_point()\`, \`geom_line()\`

## Read the docs

<https://ggplot2.tidyverse.org>

## Basic plotting functions

## Libraries

1.  wesanderson
2.  latticeExtra
3.  plotrix
4.  ggplot2

# Endnotes

## Credits

- R for Reproducible Scientific Analysis: <https://swcarpentry.github.io/r-novice-gapminder/>
- Andrea Sánchez-Tapia's workshop: <https://github.com/AndreaSanchezTapia/UCMerced_R>
- Instructor notes for "R for Reproducible Scientific Analysis": <https://swcarpentry.github.io/r-novice-gapminder/guide/>
- R for Ecology: <https://datacarpentry.org/R-ecology-lesson/04-visualization-ggplot2.html>

## References

- R Project documentation: <https://cran.r-project.org/manuals.html>

- CRAN task views: <https://cran.r-project.org/web/views/>

- R for Data Science: <https://r4ds.had.co.nz/index.html>

- R Cookbook: <http://www.cookbook-r.com>

- RStudio cheat sheets: <https://www.rstudio.com/resources/cheatsheets/>

- Matrix algebra operations in R: <https://www.statmethods.net/advstats/matrix.html>

- RStudio keyboard shortcuts: <https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts>

- RStudio shortcuts and tips: <https://appsilon.com/rstudio-shortcuts-and-tips/>

- Why `typeof()` and `class()` give different outputs: <https://stackoverflow.com/a/8857411>

- How to get function code from the different object systems: <https://stackoverflow.com/questions/19226816/how-can-i-view-the-source-code-for-a-function>

- Various approaches to contrast coding: <https://stats.oarc.ucla.edu/r/library/r-library-contrast-coding-systems-for-categorical-variables/>

  If you tell R that a factor is ordered, it defaults to Orthogonal polynomial contrasts. This means that it assumes you want it to check for linear, cubic, and quadratic trends. If you tell R that a factor is NOT ordered, it defaults to treatment contrasts: it compares all levels to a reference level. This probably doesn't make sense for lots of psych data. So if I say income is ordered, it calculates linear, quadratic etc. trends for income, which is not only not what I want, but is inappropriate unless your groups are evenly spaced. Treatment means it calculates whether each level is significantly different from a reference level (i.e. the highest income group).

  So if you want first-year stats output in a design with more than 2 levels in the factor, put this at the top of the R code:

  ``` r
  options(contrasts = c("contr.sum","contr.poly"))
  ```

  `contr.sum` is R for deviation contrasts, which you may recall as contrasts like -1, 0, 1.

## Data Sources

1.  Gapminder data:
    - <https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv>
    - <https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_wide.csv>
2.  JSON derived from Microsoft sample XML file: <https://learn.microsoft.com/en-us/previous-versions/windows/desktop/ms762271(v=vs.85>)
