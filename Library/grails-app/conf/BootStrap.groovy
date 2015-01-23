import com.ilibellus.library.Author;
import com.ilibellus.library.Book;
import com.ilibellus.library.Owner;
import com.ilibellus.library.Profile
import com.ilibellus.library.Role;
import com.ilibellus.library.User;
import com.ilibellus.library.UserRole;

class BootStrap {

    def init = { servletContext ->
		def Owner owner = new Owner(firstName:"Anna", lastName:"Wentzel Svärd", address:"Kattgränd 6").save()
		
		def Author author1 = new Author(firstName:"F. Scott", lastName:"Fitzgerald").save()
		def Author author2 = new Author(firstName:"Ernest", lastName:"Hemingway").save()
		
		def Book book1 = new Book(titel:"Tender is the night", language:"English", origLanguage:"English", editionYear:"2010", owner:owner, author:author1).save()
		def Book book2 = new Book(titel:"On Boose", language:"English", origLanguage:"English", editionYear:"2014", owner:owner, author:author1).save()
		def Book book3 = new Book(titel:"Solen har sin gång", language:"Svenska", origLanguage:"English", editionYear:"1968", owner:owner, author:author2).save()
		def Book book4 = new Book(titel:"For Whom the Bell Tolls", language:"English", origLanguage:"English", editionYear:"2010", owner:owner, author:author2).save()
		
		/*
		author1.addToBooks(Book.get(book1.id)).save()
		author1.addToBooks(book2).save()
		author2.addToBooks(book3).save()
		author2.addToBooks(book4).save()
		*/
		/*The default password is 'password'*/
		def password = "password"
		def User user = new User(firstName:"Anna", lastName:"Wentzel Svärd", email:"username", address:"Kattgränd 6", username:"testuser", password:password, enabled:true, accountExpired:false, accountLocked:false, passwordExpired:false).save()
		def Role role = new Role(authority : "ROLE_USER").save(flush: true, insert: true)
		
		assert User.count() == 1
		/*create the first user role map*/
		UserRole.create user, role, true
		
		assert UserRole.count() == 1
		
    }
    def destroy = {
    }
}
