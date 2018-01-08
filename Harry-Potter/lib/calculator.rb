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
    return basket.basket_items.length * @book_price * @discount_percentage if discount?
    basket.basket_items.length * @book_price
  end

  private

  def discount?
    basket.basket_items.uniq.length >= 2
  end
end
