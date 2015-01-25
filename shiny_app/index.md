---
title       : A Simple Shiny Prototype 
subtitle    : A Quick Preview of Datasets
author      : hyacinthuslove
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

--- .class #1

## Introducton to a Simply Shiny Prototype
 
 
__Goal: Preview datasets in library(dataset) easily:__
 
 + Select R library dataset easily with English-like phrases
 
 + Choose how many observations in the selected dataset to view
 
 + Display description and a quick summary of the selected dataset
 
 + No need to remember / learn R
 

--- .class #2 

## Clean and Easy to Use Interface


<img src="image.JPG" width="800">

--- .class #3 

## How does it help non-R users?

 By typing _library(help=datasets)_ at R command line, you will see a full 
 list of datasets in the library. However, it's be inconvenient for non-R users 
 to install the software, learn R and type the commands to view the datasets in 
 R. An example is __head(anscombe, 5)__. It's intimidating, isn't it?
 

```r
head(anscombe,5)
```

```
##   x1 x2 x3 x4   y1   y2    y3   y4
## 1 10 10 10  8 8.04 9.14  7.46 6.58
## 2  8  8  8  8 6.95 8.14  6.77 5.76
## 3 13 13 13  8 7.58 8.74 12.74 7.71
## 4  9  9  9  8 8.81 8.77  7.11 8.84
## 5 11 11 11  8 8.33 9.26  7.81 8.47
```

--- .class #4 

## Future Developments
 
We planned to include these new features: 
 
+ Dynamically list all datasets in dataset library 
 
+ Select columns of each dataset 
 
+ Dynamic selection of variables to check for correlation

Any Questions?



