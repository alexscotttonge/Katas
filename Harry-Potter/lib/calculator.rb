require_relative 'basket'

class Calculator
  attr_reader :total, :basket

  CONST_BOOK_PRICE = 8

  def initialize(basket)
    @basket = basket
    @book_price = CONST_BOOK_PRICE
    @discount_percentage = 0.95
  end

  def basket_items(book_ID)
    basket.add_item(book_ID)
  end

  def total
    return 0 if basket.basket_items.sum.zero?
    basket.basket_items.length * @book_price * discount_amount
  end

  private

  DISCOUNTS = {1 => 1, 2 => 0.95, 3 => 0.9, 4 => 0.8, 5 => 0.75}

  def number_unique_copies
    basket.basket_items.uniq.length
  end

  def discount_amount
    DISCOUNTS[number_unique_copies]
  end
end
