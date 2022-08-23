require 'book_repository'
require 'book'

def reset_books_table
	seed_sql = File.read('spec/seeds_books.sql')
	connection = PG.connect({ host: '127.0.0.1', dbname: 'books_test' })
	connection.exec(seed_sql)
	end

	describe BookRepository do
	before(:each) do 
			reset_books_table
	end

	# (your tests will go here).

	it 'returns a list of all the books' do
		repo = BookRepository.new
		books = repo.all
		expect(books.length).to eq 3
		expect(books.first.id).to eq "1"
		expect(books.first.title).to eq "Dracula"
	end

end