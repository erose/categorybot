require 'Twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "exTgxepeUXRy067ku2IlXadGj"
  config.consumer_secret     = "H0H23CG50JZsIJJ7QYUEAbIJy6D8wFiqaTtzDqiITjnN22fW7g"
  config.access_token        = "776815249735507968-YRYiSM67A1mpisJSCaIclE7uhm6THJs"
  config.access_token_secret = "s9mxpalFySa2SxfM3vqxxeGabH2c4Vy9BeKGVeB5hJB3w"
end

$objects = [
  "sets",
  "ducks",
  "gnomes",
  "nation-states",
  "groups",
  "English words",
  "people",
  "topological spaces",
  "vector spaces",
  "boats",
  "spiders",
  "uncles",
  "sofas",
  "fruits",
  "restaurants",
  "babies",
  "religions",
  "corporations"
]
$morphisms = [
  "transformations",
  "relationships",
  "interrelationships",
  "similarities",
  "functions",
  "family ties",
  "ordering relationships",
  "marriages",
  "political alliances",
  "memories",
  "isomorphisms",
  "dependencies"
]
$adjectives = [
  "loving",
  "smooth",
  "twisted",
  "evil",
  "adorable",
  "thin",
  "fat",
  "bijective",
  "homeomorphic",
  "natural",
  "linear",
  "abelian",
  "grim",
  "dark",
  "relevant",
  "squishy",
  "doomed",
  "friendly"
]

def get_category
  computed_objects = if rand < 0.5 then "#{$adjectives.sample} #{$objects.sample}" else "#{$objects.sample}" end
  computed_morphisms = if rand < 0.5 then "#{$adjectives.sample} #{$morphisms.sample}" else "#{$morphisms.sample}" end
  [
    "The category of #{computed_objects} and the #{computed_morphisms} between them.",
    "The category whose objects are #{computed_objects} and whose morphisms are #{computed_morphisms}."
  ].sample
end

puts get_category
# client.update "The category of sets and functions between them."
