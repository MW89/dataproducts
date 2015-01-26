---
title       : The body mass index
subtitle    : BMIapp - an interactive Shiny app
author      : MW
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## The body mass index I

1. The body mass index (BMI), or Quetelet index, is a measure of relative size based on the mass and height of an individual.
2. The BMI for a person is defined as their body mass divided by the square of their height—with the value universally being given in units of kg/m^2. 
3. So if the weight is in kilograms and the height in metres, the result is immediate, if pounds and inches are used, a conversion factor of 703 (kg/m2)/(lb/in2) must be applied.
4. See http://en.wikipedia.org/wiki/Body_mass_index for more details.


--- .class #id 

## BMIapp 

1. I build a simple shiny app usable to calculate the BMI for given height (cm) and weight (kg).
2. Visit https://mw89.shinyapps.io/BMIapp/ and try it out yourself!
3. Height and weight input is done by 2 sliders.
4. The server.R file contains the BMI formula

```r
round(input$weight/((input$height/100)^2), 2)
```
5. You can find the ui.R and server.R files here: https://github.com/MW89/dataproducts
6. unit convertion: 1 in = 2.54 cm / 1 lb = 0.45 kg

--- .class #id 

## BMIapp - sample calculation

```r
# input values:
input <- list(weight=80, height=180)

# calculate BMI:
round(input$weight/((input$height/100)^2), 2)   
```

```
## [1] 24.69
```





--- .class #id 

## References

1. http://en.wikipedia.org/wiki/Body_mass_index
2. http://shiny.rstudio.com/
3. http://slidify.org/




