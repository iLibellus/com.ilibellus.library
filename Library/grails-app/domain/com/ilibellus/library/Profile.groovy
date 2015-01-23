package com.ilibellus.library

class Profile {

	User user
	String bio
	byte[] photo
	
    static constraints = {
    	user nullable:true
		bio nullable:true
		photo nullable:true
	}
}
