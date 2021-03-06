require 'pry'

class CashRegister
	attr_accessor :total, :discount, :price, :title



	def initialize(discount = 0)
		@items = []
		@total = 0
		@discount = discount
	end

	def add_item(title,price,quantity=1)
		@title = title
		@price = price
		@quantity = quantity
		@total += @price * @quantity
		@quantity.times do 
			@items << @title
		end
	end

	def apply_discount
		if @discount == 0
			"There is no discount to apply."
		else
		@total -= @total * @discount/100
		"After the discount, the total comes to $#{@total}."
	  end
	end

	def items
		@items
	end

	def void_last_transaction
		@total = 0
	end




	# def add_item(title,price)
	# 	@title = title
	# 	@price = price
	# 	@total += @price
	# end

	
end
