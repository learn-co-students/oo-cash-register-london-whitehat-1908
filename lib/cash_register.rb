#add items of varying prices
#calculate discount
#keep track of what's been added
#void the last transaction =
#e.g. "Lucky Charms", 4.5

class CashRegister

attr_accessor :CashRegister, :total, :discount, :items, :last_transaction, :void_last_transaction

def initialize(discount = 0)
	@CashRegister = CashRegister
	@total = 0
	@discount = discount
	@items = []
end

def add_item(title, price, quantity = 1)
	#@cash_register << item
		@last_transaction = quantity * price
		@total += last_transaction
		quantity.times do 
			@items << title #youre executing putting the title into items 'quantity' number of times
		end
	#@total = @total + new_price
end

def apply_discount
	if discount != 0
	discount_as_percentage = discount/100.0
	discount_size = discount_as_percentage * total
	new_total = (total - discount_size).to_i
	@total = new_total
	return "After the discount, the total comes to $#{@total}."
else
	return "There is no discount to apply."
end
end

def void_last_transaction
	@total = @total - @last_transaction.to_f
end 
#take away last title in array, times by the number we stored as the quatity
#take away the last price, time by the Q


	 #identify last transaction
	# minus it from total

end