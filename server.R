library(shiny)
shinyServer(
	function(input, output){
	
		output$bmi <- renderText({
			if(input$calculateButton>=1){
				input$calculateButton
				isolate(paste({input$Weight/(input$Height*input$Height)}))
			}else{
				"Please enter your data and press calculate!"
				
			}
		})
		
		
		
		
	}
)