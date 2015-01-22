# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Sérgio Teixeira", "Cristiano Cerqueira", "Fábio Alencar", "Álvaro Chaves", "Edgar Duarte", "Vinícius Lobo", "Miguel Pinheiro", "Ricardo Amorim", "Vinícius Paim", "Sílvio Camargo"].each do |nome|
  User.create(fb_id: (rand * 100000).to_i, foto_url: 'https://imagem.gif', sexo: 'm', nome: nome)
end
["Gisele Farias", "Michele Ramos", "Nicole Lópes", "Sandra Canto", "Diana Aguiar", "Luiza Álvarez", "Luana Ávila", "Vitória Maciel", "Aline Justo", "Isabela Pires"].each do |nome|
  User.create(fb_id: (rand * 100000).to_i, foto_url: 'https://imagem.gif', sexo: 'f', nome: nome)
end
