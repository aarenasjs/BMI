library(shiny)
shinyUI(pageWithSidebar(
	 headerPanel("Calculate your BMI (Body Mass Index)!"),
		
		 sidebarPanel(
		 div("This app  allows you to calculate your  BMI (Body Mass Index)"),
		 br(),
		 div("The body mass index (BMI), or Quetelet index, is a measure of relative weight based on an individual's mass and height."),
		 br(),
		 div("Instructions:"),
		 br(),
		 div("1. Enter your Weight"),
		 br(),
		 div("2. Enter your Height"),
		 br(),
		 div("3. Press Calculate!"),
		 br(),
		 div("4. Compare your results"),
		 br(),
		 numericInput('Weight', 'Weight (Kg) (e.g 75)',0,min=1,max=200, step=10),
		 numericInput('Height', 'Height (meters) (e.g 1.73)',0,min=1,max=3, step=10),
		 br(),
		 actionButton('calculateButton','Calculate!'),
		 br(),
		 br(),
		 br(),
		 div("BMI = kg/m2")
	 ),
	 mainPanel(
		h3('Result!'),
		verbatimTextOutput("bmi"),
		br(),
		div("less than 15  ->  Very severely underweight"),
		br(),
		div("from 15.0 to 16.0 -> Severely underweight"),
		br(),
		div("from 16.0 to 18.5 -> Underweight"),
		br(),
		div("from 18.5 to 25 -> Normal (healthy weight)"),
		br(),
		div("from 25 to 30 -> Overweight"),
		br(),
		div("from 30 to 35 -> Obese Class I (Moderately obese)"),
		br(),
		div("from 35 to 40 -> Obese Class II (Severely obese)"),
		br(),
		div("over 40 -> Obese Class III (Very severely obese)")
	 )
))