package com.ilibellus.library

class Author extends Person {
	
	static hasMany = [books:Book]
    static constraints = {
    }
}
