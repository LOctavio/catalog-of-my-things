class Main
  def main
    loop do
      puts "Welcome!\nThis app will help you to keep a record of different types of things you won"
      puts 'Choose one of the following options'
      puts "1.-List all books\n2.-List all labels (e.g. 'Gift', 'New')\n3.-Add a book\n4.-Exit"
      option = gets.chomp.to_i
      break if option == 4
    end
    puts 'Thanks you for using this app!'
  end
end

app = Main.new
app.main
