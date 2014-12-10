

class Node

  # in order to do it as a linked list, we set up attr_accessor as well
  attr_accessor :next
  attr_reader :value
    
  def initialize(value = nil)
    @value = value
  end
end



