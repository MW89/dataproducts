# server.R

library(shiny)

# Define server logic for slider examples
shinyServer(function(input, output){
  
  # Reactive expression to compose a data frame containing all of the values
  sliderValues <- reactive({
    
    # Compose data frame
    data.frame(
      Name = c("Height (cm)", 
               "Weight (kg)",
               "BMI"),
      Value = as.character(c(input$height, input$weight,
                             round(input$weight/((input$height/100)^2), 2))), 
      stringsAsFactors=FALSE)
  }) 
  
  # introduction:
  output$intr <- renderText({ 
    paste("The Body mass index (BMI) is a measure of relative size based on the mass and height of an individual. It is calculated as BMI = weight / (height/100)^2.")
  })
  
  # introduction:
  output$intr2 <- renderText({ 
    paste("See http://en.wikipedia.org/wiki/Body_mass_index for further information.")
  })
  
  
  # Show the values using an HTML table
  output$values <- renderTable({
    sliderValues()
  })
  
  # output text:
  output$text1 <- renderText({ 
    paste("The BMI calculated for the entered values is", round(input$weight/((input$height/100)^2),2) )
  })
  
})


