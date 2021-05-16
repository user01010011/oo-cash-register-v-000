class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize
    @total = 0
    @discount = discount
    @items = [ ]
  end

  def add_item (title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      items << title
    end
  end

  def apply_discount
    if discount!= 0
      self.total = (total * (100.0-discount.to_f)/100).to_i
      puts "After the discount, the total comes to $#{self.total}."
    else
      puts "There is no discount to apply."
    end
  end

  def self.void_last_transaction
    items.pop
    #last_transaction.clear
  end

end
