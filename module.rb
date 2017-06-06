module Stacklike
	def stack
		@stack ||= []
	end

	def add_to_stack(obj)
		stack.push(obj)
	end

	def take_from_stack
		stack.pop
	end
end


#this is supposed to be in another file

require_relative "stacklike" #module filename, searches diskfile

class Stack
	include Stacklike #performs a in-memory operation
end

