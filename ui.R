shinyUI(pageWithSidebar(
    headerPanel("Percentage Difference Calculator"),
    sidebarPanel(
        p("Find out the difference between two numbers"),
        numericInput("num1", "Original number", NULL),
        numericInput("num2", "New number", NULL)
    ),
    mainPanel(
        p("The difference between the numbers is:"),
        verbatimTextOutput("diff.num"),
        p("The percentage difference between the numbers is"),
        verbatimTextOutput("diff.pct")
    )
))