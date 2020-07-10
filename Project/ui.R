library(shiny)
library(DT)

shinyUI(fluidPage(
    tags$head(
        ),
    titlePanel(h1("Project Capscole - prediction of the next word")
    ),
    sidebarLayout(
        sidebarPanel(
            h4("Enter your text here"),
            tags$textarea(id = 'str1', placeholder = 'Type here', rows = 25, class='form-control'),
            tags$head(src='img1.png', align = "center")
        ),
        mainPanel(
            div(DT::dataTableOutput("table1"), style = "font-size: 110%; width: 100%; background: rgba( 125, 206, 160 ); 
                color: black; border: 1px solid black; table-layout: fixed; width:500px; border-radius: 10px"  )
            )
        )
    ))

