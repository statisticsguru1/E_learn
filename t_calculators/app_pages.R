# Define UI for different pages
Mainpage <- div(
  div(class = "header",
      h1("E-Learn"),
      h2("A step by step statistical calculators")
  ),
  layout_column_wrap(
    fill=F,
    heights_equal='row',
    width = 1/3,
    
    card(full_screen = TRUE,
         card_header("T Calculators",class = "bg-warning"),
         card_body(
           div( 
             "1. Standard t-test", br(),
             "2. One-sample t-test", br(),
             "3. Paired sample t-test", br(),
             "4. T confidence interval", br(),
             "5. T-test for Pearson correlation", br(),
             "6. T-test for regression coefficient"
           ),
           actionButton("open_t_module", "Open Calculator", class = "open-module-btn"),
           padding = 10,
           gap = 0), class = "bg-warning1"),
    
    card(full_screen = TRUE,
         card_header("Z Calculators",class = "bg-warning"),
         card_body(
           div( 
             "1. One-sample z-test", br(),
             "2. Two-sample z-test", br(),
             "3. z-test for proportions", br(),
             "4. z-test for regression coefficient"
           ),
           actionButton("open_z_module", "Open Calculator", class = "open-module-btn"),
           padding = 10,
           gap = 0), class = "bg-warning1"),
    
    card(full_screen = TRUE,
         card_header("F Calculators",class = "bg-warning"),
         card_body(
           div( 
             "1. One-way ANOVA", br(),
             "2. Two-way ANOVA", br(),
             "3. Repeated measures ANOVA", br(),
             "4. MANOVA (Multivariate ANOVA)", br(),
             "5. F-test for variance comparison", br(),
             "6. Levene's test for homogeneity of variances"
           ),
           actionButton("open_f_module", "Open Calculator", class = "open-module-btn"),
           padding = 10,
           gap = 0), class = "bg-warning1"),
    
    card(full_screen = TRUE,
         card_header("Proportion Test Calculators",class = "bg-warning"),
         card_body(
           div( 
             "1. One-proportion test", br(),
             "2. Two-proportion test", br(),
             "3. Chi-square test for proportions"
           ),
           actionButton("open_p_module", "Open Calculator", class = "open-module-btn"),
           padding = 10,
           gap = 0), class = "bg-warning1"),
    
    card(full_screen = TRUE,
         card_header("Correlation and Regression Calculators",class = "bg-warning"),
         card_body(
           div( 
             "1. Simple linear regression", br(),
             "2. Multiple linear regression", br(),
             "3. Logistic regression", br(),
             "4. Polynomial regression", br(),
             "5. Regression diagnostics"
           ),
           actionButton("open_cr_module", "Open Calculator", class = "open-module-btn"),
           padding = 10,
           gap = 0), class = "bg-warning1"),
    
    card(full_screen = TRUE,
         card_header("Summary Statistic Calculators",class = "bg-warning"),
         card_body(
           div( 
             "1. Summary statistics for ungrouped data", br(),
             "2. Summary statistics for grouped data", br(),
             "3. Descriptive statistics", br(),
             "4. Frequency distribution", br(),
             "5. Measures of dispersion"
           ),
           actionButton("open_st_module", "Open Calculator", class = "open-module-btn"),
           padding = 10,
           gap = 0), class = "bg-warning1"),
    
    card(full_screen = TRUE,
         card_header("Distribution Calculators",class = "bg-warning"),
         card_body(
           div( 
             "1. Standard normal distribution calculator", br(),
             "2. t-distribution calculator", br(),
             "3. Chi-square distribution calculator", br(),
             "4. F-distribution calculator", br(),
             "5. Binomial distribution calculator", br(),
             "6. Poisson distribution calculator", br(),
             "7. Exponential distribution calculator", br(),
             "8. Uniform distribution calculator", br(),
             "9. Hypergeometric distribution calculator", br(),
             "10. Negative binomial distribution calculator"
           ),
           actionButton("open_dist_module", "Open Calculator", class = "open-module-btn"),
           padding = 10,
           gap = 0), class = "bg-warning1"),
    
    card(full_screen = TRUE,
         card_header("Other Calculators",class = "bg-warning"),
         card_body(
           div( 
             "1. Mann-Whitney U test", br(),
             "2. Wilcoxon signed-rank test", br(),
             "3. Kruskal-Wallis test", br(),
             "4. Friedman test"
           ),
           actionButton("open_other_module", "Open Calculator", class = "open-module-btn"),
           padding = 10,
           gap = 0), class = "bg-warning1"),
    
    card(full_screen = TRUE,
         card_header("Graphing Calculators",class = "bg-warning"),
         card_body(
           div( 
             "1. Histogram", br(),
             "2. Box plot", br(),
             "3. Bar chart", br(),
             "4. Pie chart", br(),
             "5. Scatter plot", br(),
             "6. Line graph", br(),
             "7. QQ plot"
           ),
           actionButton("open_graph_module", "Open Calculator", class = "open-module-btn"),
           padding = 10,
           gap = 0), class = "bg-warning1")
  ),
  
  div(class = "footer",
      "Connect with us on: ",
      tags$a(href = "https://www.youtube.com/channel/UCVzyiewHUDHu4Gqi56GG4gg", "Youtube"),
      tags$a(href = "https://web.facebook.com/FesnicResearchSolutions/", "Facebook"),
      tags$a(href = "https://www.linkedin.com/in/festus-nzuma-26580163", "LinkedIn")
  )
)



t_page <- div(
  div(class = "page-header",
      div(class = "header-content",
          div(class = "header-title", "T-Test"),  # Title on the left
          div(class = "back-link-container",
              actionLink("back_to_maint", "Back to Main Page", class = "back-link")  # Back link on the right
          )
      )
  ),
  t_testModuleUI("ttest")
)

z_page <- div(
  div(class = "page-header",
      div(class = "header-content",
          div(class = "header-title", "Z-Test"),  # Title on the left
          div(class = "back-link-container",
              actionLink("back_to_mainz", "Back to Main Page", class = "back-link")  # Back link on the right
          )
      )
  ),
  p("Page coming soon...")
)

f_page <- div(
  div(class = "page-header",
      div(class = "header-content",
          div(class = "header-title", "F-Test"),  # Title on the left
          div(class = "back-link-container",
              actionLink("back_to_mainf", "Back to Main Page", class = "back-link")  # Back link on the right
          )
      )
  ),
  p("Page coming soon...")
)

proportion_page <- div(
  div(class = "page-header",
      div(class = "header-content",
          div(class = "header-title", "Proportion Test"),  # Title on the left
          div(class = "back-link-container",
              actionLink("back_to_mainp", "Back to Main Page", class = "back-link")  # Back link on the right
          )
      )
  ),
  p("Page coming soon...")
)

correlation_regression_page <- div(
  div(class = "page-header",
      div(class = "header-content",
          div(class = "header-title", "Correlation and Regression"),  # Title on the left
          div(class = "back-link-container",
              actionLink("back_to_maincr", "Back to Main Page", class = "back-link")  # Back link on the right
          )
      )
  ),
  p("Page coming soon...")
)

summary_statistics_page <- div(
  div(class = "page-header",
      div(class = "header-content",
          div(class = "header-title", "Summary Statistics"),  # Title on the left
          div(class = "back-link-container",
              actionLink("back_to_mainss", "Back to Main Page", class = "back-link")  # Back link on the right
          )
      )
  ),
  p("Page coming soon...")
)

distribution_page <- div(
  div(class = "page-header",
      div(class = "header-content",
          div(class = "header-title", "Distribution Calculators"),  # Title on the left
          div(class = "back-link-container",
              actionLink("back_to_maind", "Back to Main Page", class = "back-link")  # Back link on the right
          )
      )
  ),
  p("Page coming soon...")
)

other_page <- div(
  div(class = "page-header",
      div(class = "header-content",
          div(class = "header-title", "Other Calculators"),  # Title on the left
          div(class = "back-link-container",
              actionLink("back_to_maino", "Back to Main Page", class = "back-link")  # Back link on the right
          )
      )
  ),
  p("Page coming soon...")
)
