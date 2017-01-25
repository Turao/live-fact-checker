people_list = [
  [ "Arthur", "abc@gmail.com" ],
  [ "Bia", "bia@gmail.com" ],
  [ "Carol", "carol@gmail.com" ],
  [ "Fabi", "fabi@gmail.com" ],
  [ "Gabi", "gabi@gmail.com" ],
  [ "Ju", "ju@gmail.com" ]
]

people_list.each do |name, email|
  Person.create(name: name, email: email)
end



organizations_list = [
   "RBS" ,
   "CBS" ,
   "ABC" ,
   "CNN" ,
   "BBC" ,
]

organizations_list.each do |name|
  Organization.create(name: name)
end


parties_list = [
  [ "Get Schwifty", "GSW" ],
  [ "Run the Jewels", "RTJ" ],
  [ "Gremio", "GFBPA" ],
  [ "Ahoy", "CPT" ],
]

parties_list.each do |name, abbreviation|
  Party.create(name: name, abbreviation: abbreviation)
end