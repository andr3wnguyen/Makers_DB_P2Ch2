require_relative './book'

class BookRepository

    def all
        books = []
        sql_script = 'SELECT id, title, author_name FROM books;'
        return_data = DatabaseConnection.exec_params(sql_script, [])

        return_data.each do |object|
        book = Book.new
        book.id = object['id']
        book.title = object['title']
        book.author_name = object['author_name']

        books << book

    end
    return books
end

end