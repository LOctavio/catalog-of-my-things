require_relative './item'

class Book < Item
  def initialize(id, publish_date, archived, publisher, cover_state)
    super(id, publish_date, archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end

  def to_json(_options = {})
    {
      'className' => self.class.name,
      'id' => @id,
      'publish_date' => @publish_date,
      'archived' => @archived,
      'publisher' => @publisher,
      'cover_state' => @cover_state
    }
  end
end
