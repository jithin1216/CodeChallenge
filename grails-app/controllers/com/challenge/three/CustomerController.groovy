package com.challenge.three
import grails.converters.JSON
import groovy.json.JsonSlurper

class CustomerController {

    def index() { }
	
	def activatecontact={
		String a=request.getJSON();
		def jsonList = new JsonSlurper().parseText(a);
		Customer customer=new Customer(jsonList);
		if(customer.save(flush: true))
		render customer as JSON
		else
		System.out.println("Error happend while saving contact")
}
}
