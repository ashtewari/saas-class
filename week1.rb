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
  
  def count_words(string)
    if(string == nil || string.length == 0) 
      return nil 
    end  
    
    input = string.downcase.gsub(/\W/, ' ')
    
    table = Hash.new(0)    
    input.split.each { |word| table[word]+=1 }
    
    return table
  end  
  
end







# Unit tests
# todo - setup and teardown
#      - data driven tests/assertions

require 'test/unit'

class CountWordsTest < Test::Unit::TestCase

  def test_case_1
    target = Hw1.new
    
    result = target.count_words("A man, a plan, a canal -- Panama") 
  # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}   

    assert_not_nil(result)
    assert_kind_of(Hash, result)
    assert_equal(5, result.length)
    assert_equal(5, result.keys.length)
    assert_equal('a', result.keys[0])
    assert_equal(1, result['plan'])
    
  end


  def test_case_2
    target = Hw1.new
   
    result = target.count_words("Doo bee doo bee doo")  
    # => {'doo' => 3, 'bee' => 2}

    assert_not_nil(result)
    assert_kind_of(Hash, result)
    assert_equal(2, result.length)
    assert_equal(2, result.keys.length)
    assert_equal('doo', result.keys[0])
    assert_equal(2, result['bee'])
    
  end

  
end

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