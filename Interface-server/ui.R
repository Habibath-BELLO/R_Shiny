
library(shiny)

datasets <- c("economics", "faithfuld", "seals")
  
fluidPage(
    
    # Application title
    titlePanel("TP Programation Statistique Habibath BELLO"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
      sidebarPanel(
        h1("Ma Première Shiny app"),
        h2("Voici ma question :"),
        br(), #séparer les lignes
        textInput("nom", "Quel est ton nom ?"),
        textOutput("salutation"),
        h1("Deuxième Challenge du Curseur"),
        sliderInput("curseur", label = "Si x est ", min = 1, max = 100, value = 30 ), 
        sliderInput("exo4", label = "et y est", min = 1, max = 100, value = 5),
        
        "alors x*y est : ",
        textOutput("le_texte")
        
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
        selectInput("dataset", "Dataset", choices = datasets),
        verbatimTextOutput("summary"),
        plotOutput("le_graphe")
      )
    )
  
)
