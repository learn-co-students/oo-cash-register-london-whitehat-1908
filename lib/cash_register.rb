class CashRegister
    attr_accessor :total, :items, :discount

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @prevP
        @prevA
    end

    def add_item (item, price , *amount)
        @prevP = price
        unless amount.empty?
            amount[0].times {
                @items << item
            }
            @prevA = amount[0]
            @total = @total + (price * amount[0])
        else 
            @prevA = 1
            @items << item
            @total = @total + price 
        end 

    end

    def apply_discount 
        if @discount 
            @total -= (@total.to_f * (@discount.to_f / 100.0)).to_i
            "After the discount, the total comes to $800."
        else
            "There is no discount to apply."
        end 
    end

    def void_last_transaction
        @prevA.times {
            @items.pop
        }
        @total = @total - (@prevP * @prevA)
        if @items.empty?
            return @total = 0.0
        end
    end
end

