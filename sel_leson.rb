

puts "Top Level"
puts "self is #{self}"

class C
	puts "Class definition block"
	puts "Self is #{self}"

	def function_1
		puts "Class method is C.function_1:"
		puts "Self  is #{self}"
	end

	def function_2
		puts "Instance method C#function_2"
		puts "Self is #{self}"
	end
end

one = C.new
one.function_1
one.function_2








