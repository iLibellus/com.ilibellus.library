package com.ilibellus.library

class LibraryController {
	def springSecurityService
	
    def index() { }
	
	def dosupthin() {
		def user = User.get(springSecurityService.principal.id)
	}
}
