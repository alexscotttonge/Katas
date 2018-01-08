require 'basket'

describe Basket do
  let(:basket) { Basket.new }

  it 'should add an item to the basket' do
    basket.add_item(4)
    expect(basket.basket_items).to eq [4]
  end
end
