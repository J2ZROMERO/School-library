require 'securerandom'
require './nameable'

class Person < Nameable
  # Atributos de instancia
  attr_accessor :name, :age
  attr_reader :id

  def initialize(nameable, age = 10, name = 'Unknown', parent_permission: true)
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
    @nameable = nameable
    super()
  end

  # Método privado
  private

  def of_age?
    @age >= 18
  end

  # Método público
  public

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name()
    @nameable
  end
end

# person = Person.new('carlitos', 10, 'juan', parent_permission: false)
# puts person.correct_name
