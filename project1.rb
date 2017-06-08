

class Main

	def initialize
		@civ_1 = Civilization.new("Western", "Christianity", "Europe and the Americas")
		@civ_2 = Civilization.new("Islamic", "Islam", "Middle East, Africa, Southeast Asia")
		@civ_array = []
		@civ_array << @civ_1
		@civ_array << @civ_2
	end

	def main_menu
		puts "Please enter a selection from the Civilization menu:"
		puts "Enter 1 to see exisiting civilization entries."
		puts "Enter 2 to amend an existing civilization entry"
		puts "Enter 9 to exit the program."

		option = gets.chomp.to_i
		case 
		when option === 1
			@civ_array.each { |x| x.output_data }
			puts
			main_menu
		when option === 2
			select_amend_civilization
			main_menu
		when option === 9
			exit
		else
			puts
			puts "please make a valid selection"
			puts
			main_menu
		end
	end

	def select_amend_civilization
		puts
		puts "Which civilization would you like to amend?"
		@civ_array.each { |x| x.output_data }
		puts 
		puts "Please select by civilization name:"
		choice = gets.chomp
		@civ_array.each do |x|
			if choice.downcase === x.civ_name.downcase
				x.main_menu
				main_menu
			else
				puts "No civilization matches you query"
				select_amend_civilization
			end
		end
	end
end

class Civilization

	attr_reader :civ_name

	def initialize(civ_name, religion, location)
		@civ_name = civ_name
		@religion = religion
		@location = location
		@traits = []
	end

	def main_menu
		puts "Please enter a selection from the amend civilization menu:"
		puts "Enter 1 to add a trait."
		puts "Enter 2 to run and return to the civilization menu."
		puts "Enter 9 to exit the program."

		option = gets.chomp.to_i
		case 
		when option === 1
			add_trait
			output_data
			main_menu
		when option === 2
			output_data
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
			puts
		end
	end

	def output_data
		puts "Civilization name: #{@civ_name}, Religion: #{@religion}, Location: #{@location}, Traits: #{@traits}"
	end
end


run = Main.new
run.main_menu





