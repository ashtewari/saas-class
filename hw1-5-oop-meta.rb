class Class

	def attr_accessor_with_history(attr_name)
		attr_name = attr_name.to_s # make sure it's a string
		attr_reader attr_name # create the attribute's getter
		attr_reader attr_name+"_history" # create bar_history getter
		class_eval "your code here, use %Q for multiline strings"
	end

end

class Foo
	attr_accessor_with_history :bar
end



require 'test/unit'

class HistoryTest < Test::Unit::TestCase

def test_history
	f = Foo.new
	f.bar = 1
	f.bar = 2
	f.bar_history # => if your code works, should be [nil,1,2]
end

def test_history_per_instance
	f = Foo.new
	f.bar = 1
	f.bar = 2
	f = Foo.new
	f. bar = 4
	result = f.bar_history
	#[nil,4]
end

end

