require_relative('river.rb')

class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(river)
    @stomach << river.take_fish()
  end

  def roar()
    return "ROAAAAARRRR!"
  end

  def food_count()
    return @stomach.length()
  end

end
