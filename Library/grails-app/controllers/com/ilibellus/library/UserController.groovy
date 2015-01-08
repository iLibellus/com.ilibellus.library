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
		render view:"register"
	}
	
	def handleRegistration(){
		def user = new User()
		log.info("HANDLE REGISTRATION")
		// using the log.info here will only print out the object, not a listing of it
		println params
		// create the property object
		user.properties = params
		if(params.password != params.confirm) {
			flash.message = "The two passwords you entered dont match!"
			render(view:'register', model:[user:user])
		}
		else if (user.password?.length() <= 3) {
			flash.message = "The password length is under 3 characters."
			render(view:'register', model:[user:user])
		} else {
			log.info "before save"
			// lets hash the password
			user.encodePassword()
			if(user.save()) {
				// also add this user to the authority system
				//def userAuth = Authority.findByAuthority("ROLE_USER")
				//userAuth.addToPeople(user)
				// not sure if the save is necessary.
				//userAuth.save()
				// send a confirmation email
				//sendAcknowledgment (user)
				log.info "saved redirecting to user controller"
				// they will be prompted to login when they
				// go to an internal place anyway.
				redirect(controller:'todo')
			}
			else {
				log.info "didn't save"
				println "didn't save"
				flash.user = user
				render(view:'register', model:[user:user])
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
