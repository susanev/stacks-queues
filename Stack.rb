#LIFO
class Stack
  def initialize
    @store = Array.new
  end
  
  def push(element)
    @store << element
  end
 
  def pop
    return @store.delete(top)
  end

  def top
    return @store.first
  end
 
  def size
    return @store.length
  end

  def empty?
    return @store.length == 0
  end
end
