class Calculator
  attr_reader :total, :basket

  CONST_BOOK_PRICE = 8

  def initialize
    @basket = []
    @book_price = CONST_BOOK_PRICE
    @discount_percentage = 0.95
  end

  def add_item(book)
    basket.push(book)
  end

  def total
    return 0 if basket.sum.zero?
    return basket.length * @book_price * @discount_percentage if discount?
    basket.length * @book_price
  end

  private

  def discount?
    basket.uniq.length >= 2
  end
end
