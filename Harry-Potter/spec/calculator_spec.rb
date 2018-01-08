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

  let(:basket) { BasketDouble.new }
  let(:calculator) { Calculator.new(basket) }

  it 'should calculate cost of empty basket' do
    calculator.basket_items(0)
    expect(calculator.total).to eq 0
  end

  it 'should return 8 for one book' do
    calculator.basket_items(1)
    expect(calculator.total).to eq 8
  end

  it 'should not give a discount for multiple copies of same book' do
    calculator.basket_items(3)
    calculator.basket_items(3)
    calculator.basket_items(3)
    expect(calculator.total).to eq 24
  end

  it 'should give a 5% discount for two copies of a different book' do
    calculator.basket_items(1)
    calculator.basket_items(2)
    expect(calculator.total).to eq 15.2
  end

  it 'should give a 5% discount for two copies of a different book' do
    calculator.basket_items(3)
    calculator.basket_items(4)
    expect(calculator.total).to eq 15.2
  end

  it 'should give a 10% discount for three different books' do
    calculator.basket_items(3)
    calculator.basket_items(4)
    calculator.basket_items(5)
    expect(calculator.total).to eq 21.6
  end
end
