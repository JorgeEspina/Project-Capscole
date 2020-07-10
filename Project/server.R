library(shiny)
library(DT)



load("DF_unigram.RData",envir=.GlobalEnv)
load("DF_bigram.RData",envir=.GlobalEnv)
load("DF_trigram.RData",envir=.GlobalEnv)
load("DF_quadgram.RData", envir=.GlobalEnv)

source("Clean_TextString.R")
source("Word_prediction_R.R")

shinyServer(function(input, output){
    
    strs <- reactive({
        
        Word_prediction(input$str1)
        
        
    })
    output$table1 <- DT::renderDataTable(strs())

})

