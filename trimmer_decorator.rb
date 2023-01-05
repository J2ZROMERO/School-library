require './person'

class TrimmerDecorator < Person

def initialize(nameable)
@nameable = nameable
end


def correct_name()
if @nameable.correct_name.length > 10
return @nameable.correct_name.slice(0, 10)
else 
    return @nameable.correct_name
end


end



end
person = Person.new("jose juan zepeda Romero",10, 'juan', parent_permission: false)
trimer = TrimmerDecorator.new(person)
puts trimer.correct_name