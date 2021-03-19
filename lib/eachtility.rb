require "eachtility/version"

module Eachtility

end

module Enumerable

  def each_with_previous(&my_block)
    result = []
    previous = nil
    each do |item|
      result << block = [ item, previous ]
      my_block.call(block)
      previous = item
    end
    result
  end

  def each_with_index_and_previous(&my_block)
    result = []
    previous = nil
    each_with_index do |item, index|
      result << block = [ item, index, previous ]
      my_block.call(block)
      previous = item
    end
    result
  end  

  def each_with_next(&my_block)
    result = []
    tot = count
    each_with_index do |item, index|
      result << block = [ item, (index >= tot) ? nil : self[index+1] ]
      my_block.call(block)
    end
    result
  end

  def each_with_index_and_next(&my_block)
    result = []
    tot = count
    each_with_index do |item, index|
      result << block = [ item, index, (index >= tot) ? nil : self[index+1] ]
      my_block.call(block)
    end
    result
  end

  def each_with_previous_and_next(&my_block)
    result = []
    tot = count
    previous = nil
    each_with_index do |item, index|
      result << block = [ item, previous, (index >= tot) ? nil : self[index+1] ]
      my_block.call(block)
      previous = item
    end
    result
  end

  def each_with_index_previous_and_next(&my_block)
    result = []
    tot = count
    previous = nil
    each_with_index do |item, index|
      result << block = [ item, index, previous, (index >= tot) ? nil : self[index+1] ]
      my_block.call(block)
      previous = item
    end
    result
  end  

  def each_with_is_first(&my_block)
    result = []
    each_with_index do |item, index|
      result << block = [ item, (index == 0) ]
      my_block.call(block)
    end
    result
  end

  def each_with_is_last(&my_block)
    result = []
    tot = count
    each_with_index do |item, index|
      result << block = [ item, (tot == (index+1)) ]
      my_block.call(block)
    end
    result
  end

	def each_with_is_first_and_last(&my_block)
    result = []
    tot = count
    each_with_index do |item, index|
      result << block = [ item, (index == 0), (tot == (index+1)) ]
      my_block.call(block)
    end
    result
  end

end