require 'date'

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

  def can_be_achived?
    current_date = Date.today
    publish_date = Date.parse(@publish_date)
    years = (current_date - publish_date).to_i / 365.25
    return true if years > 10

    false
  end

  def move_to_achived
    @achived = true if can_be_achived?
  end
end
