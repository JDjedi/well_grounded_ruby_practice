class Civilization

	def initialize(civ_name, religion, location)
		@name = civ_name
		@religion = religion
		@location = location
		@traits = []
	end

	def main_menu
		puts "Please enter a selection from the menu:"
		puts "Pless 1 to add a trait."
		puts "Press 2 to run and exit the program."
		puts "Press 9 to exit the program."

		option = gets.chomp.to_i
		case 
		when option === 1
			add_trait
		when option === 2
			output_data
			exit
		when option === 9
			exit
		else
			puts
			puts "please make a valid selection"
			puts
			main_menu
		end
	end

	def add_trait(*arg)
		if arg.length === 1
			@traits << arg
		elsif arg.length > 1
			arg.each { |x| @traits << x }
		else
			puts "Please enter a new trait...."
			new_trait = gets.chomp
			@traits << new_trait
			output_data
		end
	end

	def output_data
		puts "Civilization name: #{@name}, Religion: #{@religion}, Location: #{@location}, Traits: #{@traits}"
	end


end

civ_1 = Civilization.new("Western", "Christianity", "Europe and the Americas")
civ_2 = Civilization.new("Islamic", "Islam", "Middle East, Africa, Southeast Asia")

civ_1.main_menu

