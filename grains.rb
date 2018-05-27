require 'pry'

class Grains
  def self.square(num)
    if num == 0 || num < 0 || num > 64
      raise ArgumentError, 'invalid input'
    else
      x = 2**(num-1)
    end
  end

  def self.total
    grains = []

    for x in 0..63
      grains[x] = 2**x
    end

    grains.sum
  end
end