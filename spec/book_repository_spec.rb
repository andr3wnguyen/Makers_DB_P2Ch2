require 'book_repository'

RSpec.describe 'BookRepository' do

def reset_table
    seed_sql = File.read('spec/seeds_books.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
    connection.exec(seed_sql)
  end
    before(:each) do 
      reset_table
    end
  
  it "returns the expected values" do
      repo = BookRepository.new
      books = repo.all
      expect(books.length).to eq 2
      expect(books.first.title). to eq "Nineteen Eighty-Four"
      expect(books.last.author_name).to eq 'Virginia Woolf'
  end
end