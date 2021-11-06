require_relative '../book'

describe Book do
  context 'Testing can_be_archived? method' do
    before(:context) do
      id = 1
      publish_date = '2000-10-10'
      publish_date2 = '2015-10-10'
      archived = false
      publisher = 'paanini'
      cover_state = 'bad'
      cover_state2 = 'good'
      @book = Book.new(id, publish_date, publisher, cover_state2)
      @book2 = Book.new(id, publish_date2, publisher, cover_state)
      @book3 = Book.new(id, publish_date2, publisher, cover_state2)
    end

    it "Return true if parent's method is equal to true" do
      expect(@book.can_be_archived?).to eq(true)
    end

    it 'Return true if cover_state is equal to bad' do
      expect(@book2.can_be_archived?).to eq(true)
    end

    it 'Return false if none of the conditions is true' do
      expect(@book3.can_be_archived?).to eq(false)
    end
  end
end
