class Hw1

	def initialize
	end

	def palindrome?(string) 
    
    if(string == nil || string.length == 0) 
      return false 
    end
    
    input = string.downcase.gsub(/\W/, '')
		input == input.reverse
    
	end
end







# Unit tests

require 'test/unit'

class PalindromeTest < Test::Unit::TestCase

	def test_ctor
		target = Hw1.new
		assert_not_nil(target)
	end

	def test_palindrome_invalid()

    target = Hw1.new
		
    assert(!target.palindrome?(''))
    assert(!target.palindrome?(nil))

	end

	def test_palindrome_simple_valid()
		target = Hw1.new

    assert(!target.palindrome?('abc'))
		assert(target.palindrome?('aaa'))
    assert(target.palindrome?(' '))
    assert(target.palindrome?(' !'))    

	end

	def test_palindrome_simple_cased_valid()
		target = Hw1.new
	
		assert(target.palindrome?("Aaa"))

	end

	def test_palindrome_simple_nonword_valid()
		target = Hw1.new

		assert(target.palindrome?("Aa!a"))
    assert(target.palindrome?("A a!!a"))
    assert(target.palindrome?("A man, a plan, a canal -- Panama"))
    assert(target.palindrome?("Madam, I'm Adam!"))
    assert(!target.palindrome?("Abracadabra"))


	end
end