require './person'
class TrimmerDecorator
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name()
    return @nameable.name.slice(0, 10) if @nameable.name.length > 10

    @nameable.name
  end
end
