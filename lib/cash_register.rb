

require "pry"

class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    #binding.pry
  end

  def add_item(title, price, quantity = 1)
    quantity.times{
      @items << title
      @total = @total + price
    }
  end

  def apply_discount
    @total = @total * (1 - discount/100.0)
    "After the discount, the total comes to $#{@total.to_int}."
  end

end
