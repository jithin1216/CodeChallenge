package com.challenge.three
import grails.converters.JSON
import groovy.json.JsonSlurper

class PhoneController {

    def index() { }
	
	def contacts = {
		if(params.id && Phone.exists(params.id)){
			render Phone.findById(params.id).collect{it.phoneNumber} as JSON
		}else{
			render Phone.list().collect{it.phoneNumber} as JSON
		}
	}
	def customercontact={

		if(params.id && Phone.exists(params.id)){
			def result=Phone.executeQuery("select p from Customer c join c.phoneNumbers p where c.id ="+params.id).collect{it.phoneNumber}
			render result as JSON
		}
	}
}
