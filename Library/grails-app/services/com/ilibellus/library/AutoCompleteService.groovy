package com.ilibellus.library

class AutoCompleteService {

	def authorlist(params){
		def query = {
		 or {
		  like("firstName", "${params.term}%") // term is the parameter send by jQuery autocomplete
		  like("lastName", "${params.term}%")
		 }
		}
		return Author.createCriteria().list(query) // execute  to the get the list of companies
	 }
}
