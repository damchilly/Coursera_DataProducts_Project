# COURSERA DATA PRODUCTS - PROJECT
# SKINNY PIZZA

crustCals <- 0
totalCals <- function (s,t,ch,p,o) (s*50)+(t*60)+(ch*120)+(p*25)+(o*20)
# skinnyTest <- function (s,t,ch,p,o) { 
#                         skinnylevel <- (s*50)+(t*60)+(ch*120)+(p*25)+(o*20)
#                         if skinnylevel >= 2000 return "This is not skinny!!!"
#                         else return "Enjoy your pizza!"
#}

shinyServer(
  function(input,output) {
    crustCals <- reactive({as.numeric(input$size)*10})
    tomatoCals <- reactive({as.numeric(input$tomate)*60})
    cheeseCals <- reactive({as.numeric(input$cheese)*120})
    pepperoniCals <- reactive({as.numeric(input$pepperoni)*25})
    othersCals <- reactive({as.numeric(input$others)*20})
    output$oid0 <- renderPrint({crustCals()})
    output$oid1 <- renderPrint({tomatoCals()})
    output$oid2 <- renderPrint({cheeseCals()})
    output$oid3 <- renderPrint({pepperoniCals()})
    output$oid4 <- renderPrint({othersCals()})
    output$oid5 <- renderPrint({totalCals(input$size,input$tomate,input$cheese,
                               input$pepperoni,input$others)}) 
  }
)