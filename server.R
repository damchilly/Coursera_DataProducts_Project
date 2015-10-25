# COURSERA DATA PRODUCTS - PROJECT
# SKINNY PIZZA

crustCals <- 0
totalCals <- function (s,t,ch,p,o) (s*15)+(t*70)+(ch*75)+(p*10)+(o*10)

shinyServer(
  function(input,output) {
    crustCals <- reactive({as.numeric(input$size)*15})
    tomatoCals <- reactive({as.numeric(input$tomate)*70})
    cheeseCals <- reactive({as.numeric(input$cheese)*75})
    pepperoniCals <- reactive({as.numeric(input$pepperoni)*10})
    othersCals <- reactive({as.numeric(input$others)*10})
    output$oid0 <- renderPrint({crustCals()})
    output$oid1 <- renderPrint({tomatoCals()})
    output$oid2 <- renderPrint({cheeseCals()})
    output$oid3 <- renderPrint({pepperoniCals()})
    output$oid4 <- renderPrint({othersCals()})
    output$oid5 <- renderPrint({totalCals(input$size,input$tomate,input$cheese,
                               input$pepperoni,input$others)}) 
  }
)