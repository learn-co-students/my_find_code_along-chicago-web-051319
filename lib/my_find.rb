require 'pry'

def my_find(collection)
  index = 0
  while index < collection.length
    #one line version
    return collection[index] if yield(collection[index])
    # returns the i element if passed through the block
    # and returns true
    
    #if yield(collection[i])
      #return collection[i]
    #end
    index = index + 1
  end
end

# example)
# collection = (5..25)
# my_find(collection){|index|
#   index % 3 == 0 && index % 5 == 0}
#   
# => outputs 15 since it is the first available value that passes as "true"
# multiple conditionals will allow for further precision

# note to self: use bracket notation to make this easier to understand