puts "Destroying Pets..."
Pet.destroy_all

puts "Creating Pets"

Pet.create(
  name: "scooby",
  species: "dog",
  address: "canggu",
  found_on: "2018-07-02",
)

Pet.create(
  name: "spencer",
  species: "unicorn",
  address: "berawa",
  found_on: "2018-06-13",
)

Pet.create(
  name: "vincent",
  species: "tiger",
  address: "kuta",
  found_on: "2018-07-09",
)
