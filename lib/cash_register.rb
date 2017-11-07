class CashRegister
  attr_accessor :cash_register
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
  end

  def apply_discount(title,price)
    price = price * 0.8
    puts "After the discount, the total comes to #{price}."
    self.total = self.total - price*0.2
  end
end
