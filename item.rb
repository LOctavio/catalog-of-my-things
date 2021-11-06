require 'date'

class Item
  attr_reader :id, :label, :publish_date, :archived

  def initialize(id, publish_date)
    @id = id
    @label = nil
    @publish_date = publish_date
    @archived = false
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  def can_be_archived?
    current_date = Date.today
    publish_date = Date.parse(@publish_date)
    years = (current_date - publish_date).to_i / 365.25
    return true if years > 10

    false
  end

  def move_to_archived
    @archived = true if can_be_archived?
  end
end
