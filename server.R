shinyServer(
    function(input, output) {
        d <- reactive(diff(c(input$num1, input$num2)))
        output$diff.num <- renderText({d()})
        output$diff.pct <- renderText({paste0(d() / input$num1 * 100, "%")})
    }
)