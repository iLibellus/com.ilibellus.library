package com.ilibellus.library

class Book {
	String titel
	String language
	String origLanguage
	String editionYear
	String publishedYear
	String publisher
	Integer rating
	byte[] photo
	Owner owner
	
	static belongsTo = [author:Author]
	
    static constraints = {
    	titel blank:false
		language blank:false
		origLanguage blank:true, nullable:true
		editionYear blank:true, nullable:true
		publishedYear blank:true, nullable:true
		publisher blank:true, nullable:true
		rating blank:true, nullable:true
		photo nullable:true
		owner nullable:false
	}
	
	def String toString() {
		this.titel
	}
}
