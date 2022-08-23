class BookRepository
	# Selecting all records
	# No arguments
	def all
		sql = "SELECT * FROM books;"
		result_set = DatabaseConnection.exec_params(sql, [])

		books = []

		result_set.each do |instance|
			book = Book.new
			book.id = instance["id"]
			book.title = instance["title"]
			book.author_name = instance["author_name"]

			books << book
		end

		return books
	end

	# Gets a single record by its ID
	# One argument: the id (number)
	def find(id)
			# Executes the SQL query:
			# SELECT id, title, author_name FROM books WHERE id = 1;

			# Returns a single Book object.
	end

	# Add more methods below for each operation you'd like to implement.

	# def create(book)
	# end

	# def update(book)
	# end

	# def delete(book)
	# end
end