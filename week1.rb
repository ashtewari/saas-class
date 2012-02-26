class Hw1
	def initialize
	end

	def palindrome?(string)
		true
	end

end



require 'test/unit'

class PalindromeTest < Test::Unit::TestCase
	def test_ctor
		target = Hw1.new
		assert_not_nil(target)
	end

	def test_palindrome_invalid()
		target = Hw1.new

		input = "abc"		
		actual = target.palindrome?(input)
		assert(!actual)

	end

end