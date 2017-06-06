
class Something

	def initialize(arg, arg1)
		@arg = arg
		@arg1 = arg1
	end

	def method_one #instance method one
		foo = "This is a fun dat-"
		puts foo + @arg
		puts foo + @arg1

		method_two(foo)
	end

	def method_two(foo) #instance method two
		puts "Please insert an input: "
		answer = gets.chomp
		puts echo_one = foo + @arg + " #{answer}!"
		puts echo_two = + @arg1 + " #{answer}!"
		puts

		method_three(echo_one, echo_two)
	end

	def method_three(echo_one, echo_two) #instance method three
		puts "Please enter in a number: "
		number = gets.chomp.to_i

		if number % 2 == 0
			puts "The number you entered is even!"
			looper(echo_one, number)
		else
			puts "The number you entered is odd!"
			looper(echo_two, number)
		end
	end

	def looper(which_echo, number)
		count = 0
		while count <= number
			puts which_echo
			count += 1
		end
	end

	def optional_arguments(a, b, *c)
		p a, b, c
		puts
	end

	def reference
		str = "Bam"
		str2 = str # reference, if you change 'str' you change this too
		p str, str2 #bam, bam

		str.replace("Boom!")

		p str, str2 #boom!, boom!

	end






 end

def do_something
	boo = Something.new("bar", "ass")
	#boo.method_one
	#boo.optional_arguments("one", "two")
	#boo.optional_arguments("one", "two", "three", "four")
	boo.reference
end

do_something














