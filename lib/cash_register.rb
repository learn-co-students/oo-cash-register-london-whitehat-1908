class CashRegister
    attr_reader :discount
    attr_accessor :total, :items

    def initialize(*discount)
        @total = 0
        @items = []
        @quantity
        @price

        if !discount.empty?
            @discount = discount[0]
        else
            @discount = 0
        end
    end

    def add_item(item, price, *quantity)
        @price = price
        if !quantity.empty?
            price *= quantity[0]
            quantity[0].times {
                @quantity = quantity[0]
                @items << item
            }
            # @items + Array.new(quantity[0], item)
        else
            @items << item
            @quantity = 1
        end
        @total += price
    end

    def apply_discount
        unless discount == 0
            @total = (@total * ((100.0 - discount.to_f)/100.0)).to_i
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @quantity.times {
            @items.pop
            @total -= @price
        }
        if @items.empty?
            @total = 0
        end
    end
end