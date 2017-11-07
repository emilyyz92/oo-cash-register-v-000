class CashRegister
  attr_accessor :cash_register, :title, :price
  attr_reader :cash_register_with_discount
  attr_writer :total


  def initialize(discount = 20)
    @cash_register_with_discount = discount
    self.total = 0
  end

  def total
    @total
  end

  def add_item(title,price,quantity = 1)
    self.total = self.total + price*quantity
    @title = title
    @price = price
  end

  def apply_discount
    self.price = self.price * 0.8
    self.total = self.total * 0.8
    puts "After the discount, the total comes to #{self.total}."
  end
end
