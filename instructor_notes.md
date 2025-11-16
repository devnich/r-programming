- [<span class="toc-section-number">1</span> R for Public Health](#r-for-public-health)
  - [<span class="toc-section-number">1.1</span> Curriculum](#curriculum)
  - [<span class="toc-section-number">1.2</span> Day 1](#day-1)
  - [<span class="toc-section-number">1.3</span> Day 2](#day-2)
- [<span class="toc-section-number">2</span> R for Reproducible Scientific Analysis](#r-for-reproducible-scientific-analysis)

# R for Public Health

## Curriculum

<https://datacarpentry.github.io/r-socialsci/>

## Day 1

### Before we start

1.  Explain directories and OneDrive
2.  Create directories through file manager (not RStudio) and move data

### Introduction to R

### Starting with data

1.  Use data frames, not tibbles

2.  Filtering data frames by criteria - use R Programming lesson

    ``` r
    small.villages <- safi[safi$no_membrs < 7,]
    small.mud.villages <- safi[safi$no_membrs < 7 & safi$respondent_wall_type %in% c("muddaub", "sunbricks"),]
    room.count <- small.mud.villages[, c("village", "rooms")]
    ```

3.  10 minutes on Factors

    ``` r
    # Convert chr to factor
    wall.factor <- factor(safi$respondent_wall_type)
    str(wall.factor)
    nlevels(wall.factor)

    # Change order of levels
    levels(wall.factor)
    wall.factor <- factor(wall.factor, levels = c("muddaub","sunbricks","burntbricks","cement"))
    levels(wall.factor)

    # Update data frame
    safi$respondent_wall_type <- wall.factor
    ```

4.  (Skip) Replace "NULL" with NA for tests:

    ``` r
    df$memb_assoc[df$memb_assoc == "NULL"] <- NA
    ```

5.  Parse dates with lubridate:

    ``` r
    library(lubridate)

    parse_date_time(dates, "YmdHMSz")
    ```

## Day 2

1.  (Skip) Flow control
2.  ggplot2

# R for Reproducible Scientific Analysis

1.  Make sure to emphasize good practices: put code in scripts, and make sure they’re version controlled. Encourage students to create script files for challenges.
2.  If you’re working in a cloud environment, get them to upload the gapminder data after the second lesson.
3.  Make sure to emphasize that matrices are vectors underneath the hood and data frames are lists underneath the hood: this will explain a lot of the esoteric behaviour encountered in basic operations.
4.  Vector recycling and function stacks are probably best explained with diagrams on a whiteboard.
5.  Be sure to actually go through examples of an R help page: help files can be intimidating at first, but knowing how to read them is tremendously useful.
6.  Be sure to show the CRAN task views, look at one of the topics.
7.  There’s a lot of content: move quickly through the earlier lessons. Their extensiveness is mostly for purposes of learning by osmosis: so that their memory will trigger later when they encounter a problem or some esoteric behaviour.
8.  Key lessons to take time on:
    - Data subsetting - conceptually difficult for novices
    - Functions - learners especially struggle with this
    - Data structures - worth being thorough, but you can go through it quickly.
9.  Don’t worry about being correct or knowing the material back-to-front. Use mistakes as teaching moments: the most vital skill you can impart is how to debug and recover from unexpected errors.
