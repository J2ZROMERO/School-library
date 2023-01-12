class CapitalizeDecorator
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name()
    @nameable.name.upcase
  end
end
