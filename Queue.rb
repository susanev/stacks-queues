class Queue
  def initialize
    @store = Array.new
  end
  
  def enqueue(element)
    @store << element
  end
 
  def dequeue
    @store.delete(front)
  end

  def front
    return @store.first
  end
 
  def size
    return @store.length
  end

  def empty?
    return @store.length == 0
  end
end
