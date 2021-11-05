require_relative './label'

class LabelList
  def initialize
    file = File.open('labels.json', 'a+')
    @labels = file.size.zero? ? add_examples : JSON.parse(file.read)
    add_examples
    file.close
  end

  def show
    file = File.open('labels.json', 'r')
    @labels.each { |label| puts "id: #{label['id']}, title: #{label['title']}, color: #{label['color']}" }
    file.close
  end

  def add_examples
    file = File.open('labels.json', 'w')
    label1 = Label.new(1, 'Gift', 'White')
    label1 = label1.to_json
    label2 = Label.new(2, 'New', 'Blue')
    label2 = label2.to_json
    file.write(JSON[@labels])
    file.close
    [label1, label2]
  end
end
