class CashRegister 
    attr_accessor :items, :discount, :total, :last_transaction
    
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        new_price = price * quantity
        @total += new_price
        quantity.times do
            items << title
        end
        @last_transaction = price * quantity
    end

    def apply_discount
        if discount != 0 then 
            @total = (total * ((100.0 - discount.to_f)/100)).to_i
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end

    def items  
        @items
    end     

    def void_last_transaction 
        @total = @total - @last_transaction
    end
end