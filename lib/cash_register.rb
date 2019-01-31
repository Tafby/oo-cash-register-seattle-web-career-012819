class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    quantity.times do @items << title
    end
      @last_transaction = @total
  end

  def apply_discount
    if @discount
      @discount = @discount/100.00
      @total = @total - (@total * @discount)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

def void_last_transaction
@total -= @last_transaction
end

end # end of class
