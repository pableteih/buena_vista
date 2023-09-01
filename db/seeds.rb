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

