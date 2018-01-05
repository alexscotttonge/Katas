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
    return 0 if basket.sum == 0
    else basket.length * @book_price
  end

end
