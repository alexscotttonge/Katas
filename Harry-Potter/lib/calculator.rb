require_relative 'basket'

class Calculator
  attr_reader :total, :basket

  CONST_BOOK_PRICE = 8

  def initialize(basket)
    @basket = basket
  end

  def add_basket_items(book_ID)
    @total_basket = basket.add_item(book_ID)
  end

  def add_basket_items_2
    @total_basket
  end

  def book_pairs(add_basket_items_2)
    @unique = add_basket_items_2.uniq
      @unique.each do |book_id|
        add_basket_items_2.delete_at(add_basket_items_2.index(book_id))
      end
    @remainder = add_basket_items_2
  end

  def remainder_books_from_book_pairs
    book_pairs(add_basket_items_2)
    if @remainder.uniq.length > 1
      book_pairs(@remainder)
      @unique2 = CONST_DISCOUNTS[@unique.uniq.length] * CONST_BOOK_PRICE
    end
    @remainder.length * CONST_BOOK_PRICE
  end

  def sub_total_2
    number_unique_copies_2 * CONST_BOOK_PRICE * discount_amount
  end

  def total_2
    return 0 if empty_basket?
    p sub_total_2
    p remainder_books_from_book_pairs
    sub_total_2 + remainder_books_from_book_pairs
  end

  def number_of_books
    basket.basket_items.length
  end

  def empty_basket?
    basket.basket_items.sum.zero?
  end

  def sub_total
    number_unique_copies * CONST_BOOK_PRICE * discount_amount
  end

  def remainder_books
    number_of_books - number_unique_copies
  end

  def remainder_price
    remainder_books * CONST_BOOK_PRICE
  end

  def total
    return 0 if empty_basket?
    sub_total + remainder_price
  end


  private

  CONST_DISCOUNTS = { 1 => 1, 2 => 0.95, 3 => 0.9, 4 => 0.8, 5 => 0.75 }

  def number_unique_copies_2
    basket.basket_items.uniq.length
  end

  def number_unique_copies
    basket.basket_items.uniq.length
  end

  def discount_amount
    CONST_DISCOUNTS[number_unique_copies]
  end
end
