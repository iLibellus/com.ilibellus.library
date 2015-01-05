package com.ilibellus.library

class Person {
	String firstName
	String lastName
	
    static constraints = {
    	firstName blank:false
		lastName blank:false
	}
	
	def String toString() {
		"$firstName"
	}
}
