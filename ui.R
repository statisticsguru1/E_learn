# Load necessary libraries
library(shiny)
library(shinythemes)
library(readxl)
library(tidyverse)
library(devtools)
library(DT)
library(BSDA)
library(knitr)
library(rstatix)
library(stringr)
library(scales)
library(datamods)
library(bslib)
library(shiny.router)

options(shiny.maxRequestSize=1000000*1024^2)

source("t_calculators/engine/engine.R")
source("t_calculators/engine/t_test_module.R")
source("t_calculators/app_pages.R")

# Create the main UI
ui <- fluidPage(
  theme = bslib::bs_theme(),
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),
  router_ui(
    route("/", Mainpage),
    route("t_test", t_page),
    route("z_test", z_page),
    route("f_test", f_page),
    route("proportion_test", proportion_page),
    route("correlation_regression", correlation_regression_page),
    route("summary_statistics", summary_statistics_page),
    route("distribution_calculators", distribution_page),
    route("other_calculators", other_page)
  )
)
