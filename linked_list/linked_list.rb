class LinkedList 

  attr_accessor :head
  attr_reader :value

  def initialize(value = nil)
    @value = value 
  end



  def push(value)
    node = Node.new value
    unless @head
      @head = node
    else 
      current = @head

      while current.next
        current = current.next
      end 
      current.next = node
    end
  end 

  def pop
    current = @head 
    if current && !current.next
      @head = nil
      return current.value
    end 

    while current.next
      prev = current
      current = current.next
    end 
    prev.next = nil
    return current.value
  end 

  def insert_after search, v
    unless @head
    push v
  else
    current = @head
    until current.value == search
      current = current.next
    end 
    old_text = current.next
      current.next = Node.new v
      current.next.next = old_text
    end 
  end






end 