
# E-Learn

## Overview

E-Learn is a comprehensive online platform providing step-by-step statistical calculators. The application is designed to help users perform a wide range of statistical tests and analyses with ease. 

This repository contains the source code for the public part of the application, including the user interface and server logic for the Shiny app.

## Available Calculators

### T Calculators
1. Standard t-test
2. One-sample t-test
3. Paired sample t-test
4. Independent sample t-test
5. T confidence interval
6. T-test for Pearson correlation
7. T-test for regression coefficient

### Z Calculators
1. Z-test (Coming Soon)

### F Calculators
1. F-test (Coming Soon)

### Proportion Test Calculators
1. Proportion test (Coming Soon)

### Correlation and Regression Calculators
1. Correlation and Regression (Coming Soon)

### Summary Statistic Calculators
1. Summary Statistics (Coming Soon)

### Distribution Calculators
1. Distribution Calculators (Coming Soon)

### Other Calculators
1. Other Calculators (Coming Soon)

## Note
This is a work in progress and some calculators are still under development. Therefore, this is an early version of the application. The engine files are kept private during development but can be provided on request.

## Live Application
The calculator is available at [https://statisticsguru1.shinyapps.io/e-learn/](https://statisticsguru1.shinyapps.io/e-learn/).

## Technologies Used
- **R**
- **Shiny**
- **shiny.router** for routing pages

## Directory Structure
```
E-Learn/
├── server
├── ui
├── www
├── t_calculators
│   ├── app_pages
│   └── engine (private)
└── README.md
```

## Usage
To run the application locally, you need to have R and Shiny installed. Clone this repository and run the following commands in R:

```R
library(shiny)
runApp("path/to/your/app")
```
