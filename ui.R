# COURSERA DATA PRODUCTS - PROJECT 
# SKINNY PIZZA
# This application calculates how many calories you are putting on
# homemade pizza.

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("SKINNY PIZZA: Calculate how much calories are in homemade pizza"),
  sidebarPanel(
    titlePanel("Choose your ingredients: "),
    sliderInput("size", 
                label = "Pizza diameter (inches):",
                min = 0, max = 20, value = c(0)),
    numericInput('tomate', 'Tomate sauce cups', 0, min=0, max=5, step=1),
    numericInput('cheese', 'Cheese slices', 0, min=0, max=20, step=1),
    numericInput('pepperoni', 'Pepperoni slices', 0, min=0, max=20, step=4),
    numericInput('others', 'Peppers/Mushrooms/Olives (tbsp)', 0, min=0, max=10, step=1)
  ),
  mainPanel(
    h3("Calories in this pizza:"),
    h4('Crust calories '),
    verbatimTextOutput("oid0"),
    h4('Tomato Sauce calories '),
    verbatimTextOutput("oid1"),
    h4('Cheese calories '),
    verbatimTextOutput("oid2"),
    h4('Pepperoni calories '),
    verbatimTextOutput("oid3"),
    h4('Other ingredients calories '),
    verbatimTextOutput("oid4"),
    h4('Total Calories '),
    verbatimTextOutput("oid5")   
  )
))