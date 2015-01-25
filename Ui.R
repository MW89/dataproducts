# Ui.R

library(shiny)

# # Define UI for miles per gallon application
# shinyUI(pageWithSidebar(
#   
#   # Application title
#   headerPanel("Body mass index"),
#   
#   sidebarPanel(
#     # enter height:
#     sliderInput("height", "Height (cm):", 
#                 min = 50, max = 250, value = 170, step= 1),
#   
#     # enter weight:
#     sliderInput("weight", "Weight (kg):", 
#                  min = 30, max = 300, value = 80, step= 0.1),
#     ),
#   
#   mainPanel(
#     # summary table:
#     tableOutput("values")
#     )
# ))

# Define UI for slider demo application
shinyUI(pageWithSidebar(
  
  #  Application title
  headerPanel("Body mass index (BMI) calculation"),
  
  # Sidebar with sliders that demonstrate various available options
  sidebarPanel(
    # enter height:
        sliderInput("height", "Height (cm):", 
                min=50, max=250, value=170, step =1),
    
  # enter weight:
       sliderInput("weight", "Weight (kg):",  
                min = 30, max = 300, value = 80, step = 0.1)
  ),
  
  # Show a table summarizing the values entered
  mainPanel(
    textOutput("intr"),
    textOutput("intr2"),
    tableOutput("values"),
    textOutput("text1")
  )
))



