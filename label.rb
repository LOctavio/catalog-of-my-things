class Label
  attr_reader :id, :title, :color, :items

  def initialize(id, title, color)
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.label = self
  end

  def to_json(_options = {})
    {
      'className' => self.class.name,
      'id' => @id,
      'title' => @title,
      'color' => @color
    }
  end
end
