require_relative '../label'
require_relative '../item'

describe Label do
  context 'Testing add_item method' do
    before(:context) do
      @label = Label.new(1, 'New', 'White')
      @item = Item.new(1, '2000-12-12', false)
    end

    it 'Adds item to the colecction of items' do
      @label.add_item(@item)
      expect(@label.items.length).to eq(1)
    end

    it 'add self as a property of the item object' do
      expect(@item.label).to eq(@label)
    end
  end
end
