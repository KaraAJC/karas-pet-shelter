require 'faker'


20.times do
  Pet.create( name: Faker::Cat.name,
              species: Faker::Hobbit.thorins_company
              age: rand(0...50))
  Owner.create(name:
              )
end