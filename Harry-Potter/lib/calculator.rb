class Calculator

  attr_reader :total, :basket

  def initialize
    @basket = []
    @book_price = 8
    @discount_percentage = 0.95
  end

  def add_item(book)
    basket.push(book)
  end

  def total
    return 0 if basket.sum == 0
    return basket.length * @book_price * @discount_percentage if has_discount?
    basket.length * @book_price
  end

  private
  def has_discount?
    basket.uniq.length >= 2
  end

end
