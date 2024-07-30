source("t_calculators/engine/engine.R")
source("t_calculators/engine/t_test_module.R")

# Define the server logic
server <- function(input, output, session) {
  router_server()
  t_testModuleServer("ttest")
  
  observeEvent(input$open_t_module, {
    change_page("t_test")
  })
  
  observeEvent(input$open_z_module, {
    change_page("z_test")
  })
  
  observeEvent(input$open_f_module, {
    change_page("f_test")
  })
  
  observeEvent(input$open_p_module, {
    change_page("proportion_test")
  })
  
  observeEvent(input$open_cr_module, {
    change_page("correlation_regression")
  })
  
  observeEvent(input$open_st_module, {
    change_page("summary_statistics")
  })
  
  observeEvent(input$open_dist_module, {
    change_page("distribution_calculators")
  })
  
  observeEvent(input$open_other_module, {
    change_page("other_calculators")
  })
  
  # Back to main page buttons
  observeEvent(input$back_to_maint, {
    change_page("/")
  })
  
  observeEvent(input$back_to_mainz, {
    change_page("/")
  })
  
  observeEvent(input$back_to_mainf, {
    change_page("/")
  })
  
  observeEvent(input$back_to_mainp, {
    change_page("/")
  })
  
  observeEvent(input$back_to_maincr, {
    change_page("/")
  })
  
  observeEvent(input$back_to_mainss, {
    change_page("/")
  })
  
  observeEvent(input$back_to_maind, {
    change_page("/")
  })
  
  observeEvent(input$back_to_maino, {
    change_page("/")
  })
}
