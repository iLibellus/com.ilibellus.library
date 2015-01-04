package com.ilibellus.library

class Book {
	String titel
	String language
	String origLanguage
	String editionYear
	String publishedYear
	String publisher
	Integer rating
	Owner owner
	
	static belongsTo = [Author]
	
    static constraints = {
    	titel blank:false
		language blank:false
		owner owner:false
	}
}
