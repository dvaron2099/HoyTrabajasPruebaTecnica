# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(name: 'David Varon', email: 'prueba1@gmail.com', password: '123456', password_confirmation: '123456')

if user.persisted?
  puts 'Usuario creado exitosamente'
else
  puts 'Error al crear el usuario:'
  puts user.errors.full_messages
end

bank = Bank.create(
  name: "Bancolombia"
)

if bank.persisted?
  puts 'Banco creado exitosamente'
else
  puts 'Error al crear el banco:'
  puts bank.errors.full_messages
end

provider = Provider.new(
  name: 'Proveedor 1',
  nit: "901362343-4",
  contact_person: "David Varon",
  contact_number: "3232313535",
  account_number: "123456789"
)

# Asignar el bank_id antes de intentar guardar el proveedor
provider.bank_id = bank.id

if provider.save
  puts 'Proveedor creado exitosamente'
else
  puts 'Error al crear el proveedor:'
  puts provider.errors.full_messages
end
