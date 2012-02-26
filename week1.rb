class Hw1
	def initialize
	end

	def palindrome?(string)		
		string == string.reverse
	end
end







# Unit tests

require 'test/unit'

class PalindromeTest < Test::Unit::TestCase
	def test_ctor
		target = Hw1.new
		assert_not_nil(target)
	end

	def test_palindrome_simple_valid()
		target = Hw1.new

		input = 'aaa'		
		assert(target.palindrome?(input))

	end

	def test_palindrome_invalid()
		target = Hw1.new

		input = 'abc'		
		actual = target.palindrome?(input)
		assert(!actual)

	end
end