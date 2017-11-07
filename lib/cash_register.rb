class CashRegister
  attr_accessor :cash_register, :title, :price
  attr_reader :cash_register_with_discount
  attr_writer :total, :items


  def initialize(discount = 20)
    @cash_register_with_discount = discount
    self.total = 0
    self.items = []
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
    if self.total == 0
      return "There is no discount to apply."
    else
      self.price = self.price * 0.8
      self.total = self.total * 0.8
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items

end
