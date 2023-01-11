require './person'
class TrimmerDecorator
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name()
    if @nameable.name.length > 10
      return @nameable.name.slice(0, 10) 
    else 
      return @nameable.name
    end
  end
end
