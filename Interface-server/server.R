
library(shiny)
library(ggplot2)


function(input, output, session) {
    output$salutation <- renderText({
      paste0("Bonjour ", input$nom)
    })
    
    
    output$le_texte <- renderText({ 
      input$curseur * input$exo4
    })
    
    dataset <- reactive({
      get(input$dataset, "package:ggplot2")
    })
    
    output$summary <- renderPrint({
      summary(dataset())
    })
    
    output$le_graphe <- renderPlot({
      plot(dataset())
    }, res = 96)
    
    
  }

