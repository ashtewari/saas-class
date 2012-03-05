class Dessert

	def initialize(name, calories)
		@name = name
		@calories = calories
	end

	def healthy?
		if @calories < 200
			return true
		else
			return false
		end
	end

	def delicious?
		return true
	end

end

class JellyBean < Dessert

	def initialize(name, calories, flavor)
		super(name, calories)
		@flavor = flavor
	end

	def delicious?
		if @flavor == 'black licorice'
			return false
		end
		return true
	end

end




require 'test/unit'

class DessertTest < Test::Unit::TestCase

def test_make_dessert
	target = Dessert.new 'yummy', 0
	assert_not_nil(target)
end

def test_make_healthy_dessert
	target = Dessert.new 'weight_watchers', 100
	assert(target.healthy?)
end

def test_make_real_dessert
	target = Dessert.new 'the real thing', 1000
	assert_equal(false, target.healthy?)
end

def test_barely_healthy_dessert
	target = Dessert.new 'almost', 199
	assert(target.healthy?)
end

def test_borderline_unhealthy_dessert
	target = Dessert.new 'almost unhealthy', 200
	assert_equal(false,target.healthy?)
end

def test_make_jellybean
	target = JellyBean.new 'jb', 20, 'artificial'
	assert_not_nil(target)
end

def test_make_delicious_jellybean
	target = JellyBean.new 'jb', 2000, 'orange'
	assert(target.delicious?)
	assert_equal(false, target.healthy?)
end

def test_make_yucky_jellybean
	target = JellyBean.new 'jb', 20, 'black licorice'
	assert_equal(false, target.delicious?)
end


def test_make_delicious_dessert
	target = Dessert.new 'del', 0
	assert(target.delicious?)
end

 
end
