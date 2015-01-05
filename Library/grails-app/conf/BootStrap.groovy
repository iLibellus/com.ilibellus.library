import com.ilibellus.library.Author;
import com.ilibellus.library.Book;
import com.ilibellus.library.Owner;

class BootStrap {

    def init = { servletContext ->
		def Owner owner = new Owner(firstName:"Anna", lastName:"Wentzel Svärd", address:"Kattgränd 6").save()
		
		def Author author1 = new Author(firstName:"F. Scott", lastName:"Fitzgerald").save()
		def Author author2 = new Author(firstName:"Ernest", lastName:"Hemingway").save()
		
		def Book book1 = new Book(titel:"Tender is the night", language:"English", origLanguage:"English", editionYear:"2010", owner:owner).save()
		def Book book2 = new Book(titel:"On Boose", language:"English", origLanguage:"English", editionYear:"2014", owner:owner).save()
		def Book book3 = new Book(titel:"Solen har sin gång", language:"Svenska", origLanguage:"English", editionYear:"1968", owner:owner).save()
		def Book book4 = new Book(titel:"For Whom the Bell Tolls", language:"English", origLanguage:"English", editionYear:"2010", owner:owner).save()
		
		author1.addToBooks(book1).save()
		author1.addToBooks(book2).save()
		author2.addToBooks(book3).save()
		author2.addToBooks(book4).save()
		
    }
    def destroy = {
    }
}
