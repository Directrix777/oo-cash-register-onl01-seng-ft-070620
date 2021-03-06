

require "pry"

class CashRegister

  attr_accessor :total, :discount, :items, :prev_total, :prev_items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    #binding.pry
  end

  def add_item(title, price, quantity = 1)
    @prev_total = @total
    @prev_items = @items
    quantity.times{
      @items << title
      @total = @total + price
    }
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total = @total * (1 - @discount/100.0)
    return "After the discount, the total comes to $#{@total.to_int}."
  end

  def void_last_transaction
    @total = @prev_total
    @items = @prev_items
  end

end
