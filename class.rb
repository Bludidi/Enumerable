require_relative 'module'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end
end

# Create a list
list = MyList.new(1, 2, 3, 4)

# Test #all? method
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }

# Test #any? method
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }

# Test #filter method
list.filter(&:even?)

# Test #max method
list.max

# Test #min method
list.min

# Test #sort method
list.sort