require_relative 'lib/database_connection'
require_relative 'lib/book_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store_test')

books_repo = BookRepository.new

book_list = books_repo.all

book_list.each {|x| puts x.id + ' - ' + x.title + ' - ' + x.author_name} 

#x book '#{book.id} - #{book.title} - #{book.author_name'}
