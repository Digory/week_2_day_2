require_relative('fish.rb')

class River

  attr_reader :name, :fish

  def initialize(name)
    @name = name
    @fish1 = Fish.new("Carp")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Cod")
    @fish = [@fish1, @fish2, @fish3]
  end

  def take_fish()
    return @fish.pop()
  end

  def fish_count()
    return @fish.length()
  end


end
