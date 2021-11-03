class CashRegister

    attr_accessor :total, :discount
    def initialize (total = 0, discount = 20)
        @total = total
        @discount = discount
    end

    def add_item(item, price, quantity = 1)
        self.total += price * quantity
    end
    
    def apply_discount()
        if @discount > 0
          @discount = @discount/100.to_f
          @total = @total - (@total * (@discount))
          "After the discount, the total comes to $#{@total.to_i}."
        else
          "There is no discount to apply."
        end
      end
end
