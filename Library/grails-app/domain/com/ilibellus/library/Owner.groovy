package com.ilibellus.library

class Owner extends Person {
	//String address

	static hasMany = [books:Book]
	 
    static constraints = {
    }
}
