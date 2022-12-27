require_relative './node'
require 'pry'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value, current = @root)
    # your code here
    # check value against current.value
    if !root 
      return nil
    end
    
  
    if value == current.value
      return current
    elsif value < current.value && current.left
      current = current.left
    elsif value > current.value && current.right
      current = current.right
    else 
      return nil
    end
    search(value, current)
  end

  def insert(value)
    # your code here
  end

end 
