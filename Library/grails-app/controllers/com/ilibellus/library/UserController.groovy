package com.ilibellus.library



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def register() {
		render(view:"register")
	}
	
	def test() {
		render "HI THERE"
	}
	
	def handleRegistration(){
		if(request.method == 'POST') {
			def u = new User()
			u.properties['username', 'password', 'firstName', 'lastName', 'email'] = params
			u.accountExpired = false
			u.accountLocked = false
			u.passwordExpired = false
			if(u.password != params.confirm) {
				u.errors.rejectValue("password", "user.password.dontmatch")
				return [user:u]
			} else if(u.save()) {
				session.user = u
				redirect action: "index"
			} else {
				return [user:u]
			} 
		}
	}
	
	def logout() {
		log.info 'logout'
		if(session.user) {
			session.user = null
			session.invalidate()
			redirect(controller:'login')
		}
	}
}


class LoginCommand {
	String login
	String password
	private u
	User getUser() {
		if(!u && login) {
			u = User.findByLogin(login, [fetch:[purchasedSongs:'join']])
		}
		return u
	}
	static constraints = {
		login blank:false, validator:{ val, obj ->
			if(!obj.user)
			return "user.not.found"
		}
		password blank:false, validator:{ val, obj ->
			if(obj.user && obj.user.password != val)
			return "user.password.invalid"
		}
	}
  }