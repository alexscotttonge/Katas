class Calculator

  attr_reader :total, :basket

  def initialize
    @basket = []
  end

  def add_item(book)
    basket.push(book)
  end

  def total
    return 0 if basket.sum == 0
  end

end
