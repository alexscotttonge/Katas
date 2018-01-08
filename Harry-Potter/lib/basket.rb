class Basket
  attr_reader :basket_items

  def initialize
    @basket_items = []
  end

  def add_item(book_ID)
    basket_items.push(book_ID)
  end
end
