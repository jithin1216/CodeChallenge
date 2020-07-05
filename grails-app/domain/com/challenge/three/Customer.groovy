package com.challenge.three

class Customer {

    String customerName
	Collection<Phone> phoneNumbers
	static hasMany = [phoneNumbers:Phone]
    static constraints = {
    }
}
