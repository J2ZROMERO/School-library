require 'securerandom'
class Person
  # Atributos de instancia
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age = 10, name = 'Unknown', parent_permission: true)
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
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

  def add_rentals(rental)
    @rentals.push(rental)
    rental.person = self
  end
end
