class Calculator

  attr_reader :total, :basket

  def initialize
    @basket = []
    @book_price = 8
  end

  def add_item(book)
    basket.push(book)
  end

  def total
    basket.sum * @book_price
  end

end
