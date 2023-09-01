# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


comunas = [
  "Santiago",
  "Providencia",
  "Valparaíso",
  "Viña del Mar",
  "Concepción",
  "La Serena",
  "Valdivia",
  "Temuco",
  "Puerto Montt",
  "Antofagasta",
  "Arica",
  "Iquique",
  "La Florida",
  "Maipú",
  "Las Condes",
  "Ñuñoa",
  "Coquimbo",
  "Rancagua",
  "Talca",
  "Curicó",
  "Los Ángeles",
  "Chillán",
  "Rengo",
  "Quillota",
  "San Felipe",
  "Ovalle",
  "Calama",
  "Copiapó",
  "Punta Arenas",
  "Osorno",
  "Villarrica",
  "San Carlos",
  "Linares",
  "Arauco",
  "Curanilahue",
  "Castro",
  "Ancud",
  "Puerto Varas",
  "Frutillar",
  "Vicuña",
  "Pucón",
  "San Antonio",
  "Quintero",
  "Olmue",
  "Limache",
  "Peñaflor",
  "Paine",
  "Cerrillos"
]

comunas.each do |comuna|
    Comuna.create(name: comuna)

end

#creación de estados
Status.create(name: "no disponible")
Status.create(name: "Arriendo")
Status.create(name: "Venta")

#creación de servicios para edificios

Service.create(name: "Piscina")
Service.create(name: "Quincho")
Service.create(name: "Gimnasio")
Service.create(name: "Parque")
Service.create(name: "Sala multiusos")

User.create!(
  name: "pablo",
  phone: 56978544,
  email: 'admin01@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  role: 'admin'
)
User.create!(
  name: "miguel",
  phone: 5328544,
  email: 'admin02@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  role: 'admin' 
)
User.create!(
  name: "leandro",
  phone: 56978535,
  email: 'ventas01@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  role: 'vendedor' 
)
User.create!(
  name: "andres",
  phone: 56974544,
  email: 'ventas02@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  role: 'vendedor' 
)
User.create!(
  name: "daniela",
  phone: 56968544,
  email: 'ventas03@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  role: 'vendedor' 
)

10.times do 
  Client.create!(
    name: Faker::Name.name,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.unique.email, # Utiliza Faker para generar correos electrónicos únicos
    user_id: 1
  )
end

Building.create!(
  name: "sacramento",
  street: "santa isabel",
  number: 1023,
  comuna_id: 2
)
