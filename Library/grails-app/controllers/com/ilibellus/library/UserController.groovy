package com.ilibellus.library

class UserController {

    def index() { 
		render view: "register"
	}
	
	def register() {
		if(request.method == 'POST') {
			def u = new User()
			u.properties['login', 'password', 'firstName', 'lastName'] = params
			if(u.password != params.confirm) {
			  u.errors.rejectValue("password", "user.password.dontmatch")
			  return [user:u]
			} else if(u.save()) {
			  session.user = u
			  redirect controller:"book"
			} else {
			  return [user:u]
			}
		}
	}
	
	def books() {}
	
	def logout() {}
	
}
