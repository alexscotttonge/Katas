require 'calculator'

describe Calculator do

  class BasketDouble
    attr_reader :basket_items

    def initialize
      @basket_items = []
    end

    def add_item(book_ID)
      basket_items.push(book_ID)
    end
  end

  subject(:basket) { BasketDouble.new }
  subject(:calculator) { described_class.new(basket) }

  it 'should calculate cost of empty basket' do
    calculator.add_basket_items(0)
    expect(calculator.total).to eq 0
  end

  it 'should return 8 for one book' do
    calculator.add_basket_items(1)
    expect(calculator.total).to eq 8
  end

  it 'should not give a discount for multiple copies of same book' do
    calculator.add_basket_items(3)
    calculator.add_basket_items(3)
    calculator.add_basket_items(3)
    expect(calculator.total).to eq 24
  end

  it 'should give a 5% discount for two copies of a different book' do
    calculator.add_basket_items(1)
    calculator.add_basket_items(2)
    expect(calculator.total).to eq 15.2
  end

  it 'should give a 5% discount for two copies of a different book' do
    calculator.add_basket_items(3)
    calculator.add_basket_items(4)
    expect(calculator.total).to eq 15.2
  end

  it 'should give a 10% discount for three different books' do
    calculator.add_basket_items(3)
    calculator.add_basket_items(4)
    calculator.add_basket_items(5)
    expect(calculator.total).to eq 21.6
  end

  it 'should give a 20% discount for four different books' do
    calculator.add_basket_items(2)
    calculator.add_basket_items(3)
    calculator.add_basket_items(4)
    calculator.add_basket_items(5)
    expect(calculator.total).to eq 25.6
  end

  it 'should give a 25% discount for five different books' do
    calculator.add_basket_items(1)
    calculator.add_basket_items(2)
    calculator.add_basket_items(3)
    calculator.add_basket_items(4)
    calculator.add_basket_items(5)
    expect(calculator.total).to eq 30
  end

  it 'should give the correct discount for only two different copies' do
    calculator.add_basket_items(1)
    calculator.add_basket_items(2)
    calculator.add_basket_items(2)
    expect(calculator.total).to eq 23.2
  end

  it 'should give the correct discount for only two different copies' do
    calculator.add_basket_items(1)
    calculator.add_basket_items(5)
    calculator.add_basket_items(5)
    calculator.add_basket_items(5)
    expect(calculator.total).to eq 31.2
  end

  it 'should give the correct discount for only three different copies' do
    calculator.add_basket_items(1)
    calculator.add_basket_items(2)
    calculator.add_basket_items(3)
    calculator.add_basket_items(3)
    expect(calculator.total).to eq 29.6
  end

  it 'should give the correct discount for only three different copies' do
    calculator.add_basket_items(3)
    calculator.add_basket_items(4)
    calculator.add_basket_items(5)
    calculator.add_basket_items(5)
    calculator.add_basket_items(5)
    expect(calculator.total).to eq 37.6
  end

  it 'should give the correct discount for only four different copies' do
    calculator.add_basket_items(2)
    calculator.add_basket_items(3)
    calculator.add_basket_items(4)
    calculator.add_basket_items(5)
    calculator.add_basket_items(5)
    expect(calculator.total).to eq 33.6
  end

  it 'should give the correct discount for only four different copies' do
    calculator.add_basket_items(2)
    calculator.add_basket_items(3)
    calculator.add_basket_items(4)
    calculator.add_basket_items(5)
    calculator.add_basket_items(5)
    calculator.add_basket_items(5)
    expect(calculator.total).to eq 41.6
  end

  it 'should give the correct discount for only five different copies' do
    calculator.add_basket_items(1)
    calculator.add_basket_items(2)
    calculator.add_basket_items(3)
    calculator.add_basket_items(4)
    calculator.add_basket_items(5)
    calculator.add_basket_items(5)
    expect(calculator.total).to eq 38
  end
end
