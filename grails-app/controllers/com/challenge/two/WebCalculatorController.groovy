package com.challenge.two
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured;
import wslite.soap.*


@Secured(['ROLE_USER'])
class WebCalculatorController {

    def index() { }  
	
	def conversion(){
		ArrayList<String> result=new ArrayList<String>()
		String input,output=""
		try{
		def params=request.JSON
		def url = "https://www.q88.com/WS/Q88WSInternal.asmx"
		def soapClient = new SOAPClient(url)
		def message = new SOAPMessageBuilder().build({
			body {
				ConvertTemperature(xmlns: "http://q88.com/webservices/") {
					property(params.temp)
					val(params.value)
				}
			}
		})
		def response = soapClient.send(message.toString());
		if(params.temp.equals("Celsius")){
			input=params.value
			output = response.ConvertTemperatureResponse.ConvertTemperatureResult.Fahrenheit
		}
		else{
			input=params.value
			output = response.ConvertTemperatureResponse.ConvertTemperatureResult.Celsius
		}
		result.add(input)
		result.add(output)
		render result as JSON
		}
		catch(Exception e){
			result.add(input)
			result.add(output)
			render result as JSON
		}
	}
}
