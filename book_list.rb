require 'json'
require_relative './book'
require_relative './label_list'

class BookList
  def initialize
    file = File.open('books.json', 'a+')
    @books = file.size.zero? ? [] : JSON.parse(file.read)
    file.close
  end

  def show
    file = File.open('books.json', 'r')
    @books.each do |book|
      puts "id: #{book['id']}\npublish date: #{book['publish_date']}\narchived: #{book['archived']}"
      puts "publisher: #{book['publisher']}\ncover state: #{book['cover_state']}"
      puts
    end
    file.close
  end

  def add
    file = File.open('books.json', 'w')
    book = Book.new(user_input('ID:'), user_input('publish date:'), user_input('publisher'),
                    user_input('cover state'))
    book.archived = book.can_be_archived?
    book = book.to_json
    @books.push(book)
    file.write(JSON[@books])
    file.close
    puts 'Book created successfully'
  end

  private

  def user_input(message)
    puts message
    gets.chomp
  end
end
