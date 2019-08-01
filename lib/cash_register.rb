require "pry"

class CashRegister

  attr_accessor :total, :discount, :item, :price


  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
      counter +=1
    end
    else
      @items << item
    end
  end

  def apply_discount
    if discount == nil
      "There is no discount to apply."
    else @total = total - (total * discount / 100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items << item
    @items.compact
  end

  def void_last_transaction
    @total -= @price
  end
end
