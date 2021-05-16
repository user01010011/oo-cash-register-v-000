class CashRegister
  attr_accessor :total, :discount

  def initialize
    @total = 0
    @discount = discount
  end

  def add_item (item, price, amount=1)
    self.total += price * amount
  end

  def apply_discount
    if discount?
      self.total = (self.total * (100.0-discount.to_f)/100).to_i
      puts "After the discount, the total comes to #{self.total}."
    else
      puts "There is no discount to apply."
      self.total
    end
  end

  def items
    items[array]
  end

  def self.void_last_transaction
    items[array].pop
    #last_transaction.clear
  end

end 

