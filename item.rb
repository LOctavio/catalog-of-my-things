class Item
  def initialize(id, publish_date, achived)
    @id = id
    @label = nil
    @publish_date = publish_date
    @achived = achived
  end

  def label=(label)
    @label = label
  end

  def can_be_achived?; end

  def move_to_achived; end
end
