# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'json'
require 'open-uri'
Politic.destroy_all

url = 'https://www.nosdeputes.fr/deputes/enmandat/json'
deputees = JSON.parse(URI.open(url).read)

deputees['deputes'].each do |depute|
  name = depute['depute']['nom']
  political_side = depute['depute']['groupe_sigle']
  politic_url = depute['depute']['url_an']
  Politic.create(name:, political_side:, politic_url:)
end
