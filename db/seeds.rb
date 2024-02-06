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
puts "//////////////////////////////////////////////////////////////////"

# Crear el banco Caja Social
caja_social = Bank.create(
  name: "Caja Social"
)

if caja_social.persisted?
  puts 'Caja Social creado exitosamente'
else
  puts 'Error al crear el banco:'
  puts caja_social.errors.full_messages
end

# Crear el banco Banco de la Mujer
banco_mujer = Bank.create(
  name: "Banco de la Mujer"
)

if banco_mujer.persisted?
  puts 'Banco de la Mujer creado exitosamente'
else
  puts 'Error al crear el banco:'
  puts banco_mujer.errors.full_messages
end

# Crear el banco Banco Pichincha
banco_pichincha = Bank.create(
  name: "Banco Pichincha"
)

if banco_pichincha.persisted?
  puts 'Banco Pichincha creado exitosamente'
else
  puts 'Error al crear el banco:'
  puts banco_pichincha.errors.full_messages
end

# Crear el banco Banco de Bogotá
banco_bogota = Bank.create(
  name: "Banco de Bogotá"
)

if banco_bogota.persisted?
  puts 'Banco de Bogotá creado exitosamente'
else
  puts 'Error al crear el banco:'
  puts banco_bogota.errors.full_messages
end

# Crear el banco BBVA
bbva = Bank.create(
  name: "BBVA"
)

if bbva.persisted?
  puts 'BBVA creado exitosamente'
else
  puts 'Error al crear el banco:'
  puts bbva.errors.full_messages
end

bancolombia = Bank.create(
  name: "Bancolombia"
)

if bancolombia.persisted?
  puts 'Bancolombia creado exitosamente'
else
  puts 'Error al crear el banco:'
  puts bancolombia.errors.full_messages
end

provider1 = Provider.new(
  name: 'Proveedor 1',
  nit: "901362343-4",
  contact_person: "David Varon",
  contact_number: "3232313535",
  account_number: "123456789"
)

# Asignar el bank_id antes de intentar guardar el proveedor
provider1.bank_id = bancolombia.id

if provider1.save
  puts 'Proveedor creado exitosamente'
else
  puts 'Error al crear el proveedor:'
  puts provider1.errors.full_messages
end

puts "//////////////////////////////////////////////////////////////////"
davivienda = Bank.create(
  name: "Davivienda"
)

if davivienda.persisted?
  puts 'Davivienda creado exitosamente'
else
  puts 'Error al crear el banco:'
  puts davivienda.errors.full_messages
end

provider2 = Provider.new(
  name: 'Proveedor 2',
  nit: "623439013-4",
  contact_person: "David Varon",
  contact_number: "3235353231",
  account_number: "678912345"
)

# Asignar el bank_id antes de intentar guardar el proveedor
provider2.bank_id = davivienda.id

if provider2.save
  puts 'Proveedor creado exitosamente'
else
  puts 'Error al crear el proveedor:'
  puts provider2.errors.full_messages
end

provider3 = Provider.new(
  name: 'Proveedor 3',
  nit: "623439013-4",
  contact_person: "David Varon",
  contact_number: "3235353231",
  account_number: "678912345"
)

# Asignar el bank_id antes de intentar guardar el proveedor
provider3.bank_id = caja_social.id

if provider3.save
  puts 'Proveedor creado exitosamente'
else
  puts 'Error al crear el proveedor:'
  puts provider3.errors.full_messages
end
