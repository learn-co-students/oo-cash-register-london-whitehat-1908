class CashRegister
    attr_accessor :total
    attr_accessor :discount
    def initialize(discount = 0)
        @items = []
        @discount = discount
        @total = 0
    end

    def add_item(title, price, quantity = 1)
        @price = (price * quantity)
        @total += @price
        while quantity > 1 do
            @items << title
            quantity -=1
        end
            @items << title
    end
    
    def apply_discount
        if @discount > 0
            @total = @total-(@total * @discount/100)
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items  
    end

    def void_last_transaction
        @total -= @price
    end
end
