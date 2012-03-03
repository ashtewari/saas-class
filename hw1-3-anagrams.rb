
# HINT: you can quickly tell if two words are anagrams by sorting their
# letters, keeping in mind that upper vs lowercase doesn't matter

class Hw1_3

	def initialize
	end

	def combine_anagrams(words)
		result = Hash.new
		words.each do|w| 
			k = w.downcase.split(//).sort.join
			result[k] ||= []
			result[k] << w	
		end
		return result.values	
	end

end


# Unit tests
# todo - setup and teardown
#      - data driven tests/assertions

require 'test/unit'

class CombineAnagramsTests < Test::Unit::TestCase

  def test_case_1    
    
	words = ['cars', 'for', 'potatoes', 'Racs', 'four','scar', 'creams','scream']
	# => output: [["cars", "Racs", "scar"], ["four"], ["for"],["potatoes"], ["creams", "scream"]]

	result = Hw1_3.new.combine_anagrams(words)  
	print result
    
  end

  
end

