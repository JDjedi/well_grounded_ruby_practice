
# class Ticket
# 	def initialize(date, venue, price)
# 		@venue = venue
# 		@date = date
# 		@price = price
# 	end

# 	def set_ticket(date, venue)
# 		@date = date
# 		@venue = venue
# 	end

# 	def get_ticket
# 		puts @venue
# 		puts @date
# 		puts @price
# 	end

# 	def cost=(amount) #this right here is a settler method
# 		@price = amount
# 	end
# end

#alt class to the one above, is below

class Ticket
	attr_reader :date, :venue
	attr_accessor :price #this amd attr_writer function as settler methods as well

	def initialize(date, venue, price)
		@venue = venue
		@date = date
		@price = price
	end

	def get_ticket
		puts @venue
		puts @date
		puts @price
	end
end

sect_one_seat = Ticket.new("11-11-2018", "The Roosevelt Theatre", "n/a")
sect_one_seat.price = (9.95)
sect_two_seat = Ticket.new("11-11-2018", "The Ford Theatre", "n/a")
sect_two_seat.price = (19.95)
sect_three_seat = Ticket.new("11-11-2018", "The Washington Theatre", "n/a")
sect_three_seat = (39.95)


def Ticket.most_expensive(*tickets) #singleton method, when you want to add to class but not class instances(the class made objects)
	tickets.max_by(:price)
	puts tickets
	

end

highest = Ticket.most_expensive(sect_one_seat, sect_two_seat, sect_three_seat)










