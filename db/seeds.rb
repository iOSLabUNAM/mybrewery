# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[
  {
  name: "Pilsner",
  kind: "lager",
  abu: 4.5,
  ibu: 40
},
{
  name: "IPA",
  kind: "ale",
  abu: 6.2,
  ibu: 60
},
{
  name: "Stout",
  kind: "ale",
  abu: 5.0,
  ibu: 30
},
{
  name: "Belgan Wit",
  kind: "ale",
  abu: 5.0,
  ibu: 20
}].each do |beer|
  Beer.find_or_create_by!(beer)
end
