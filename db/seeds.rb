# Breeds
burmese = Breed.create!(name: "Burmese")
exotic = Breed.create!(name: "Exotic")
mandalay = Breed.create!(name: "Mandalay")
persian = Breed.create!(name: "Persian")

# Coat Colours
black = CoatColour.create!(name: "Black")
black_bicolour = CoatColour.create!(name: "Black Bicolour")
blue = CoatColour.create!(name: "Blue")
blue_bicolour = CoatColour.create!(name: "Blue Bicolour")
blue_harlequin = CoatColour.create!(name: "Blue Harlequin")
chocolate = CoatColour.create!(name: "Chocolate")
chocolate_bicolour = CoatColour.create!(name: "Chocolate Bicolour")
cinnamon = CoatColour.create!(name: "Cinnamon")
lilac = CoatColour.create!(name: "Lilac")
lilac_bicolour = CoatColour.create!(name: "Lilac Bicolour")
red_tabby = CoatColour.create!(name: "Red Tabby")
red_tabby_bicolour = CoatColour.create!(name: "Red Tabby Bicolour")
tortoiseshell = CoatColour.create!(name: "Tortoiseshell")
tortoiseshell_bicolour = CoatColour.create!(name: "Tortoiseshell Bicolour")

# Cats
Cat.create!(name: "Askari Dashin Bit O'Stuff", breed: exotic, coat_colour: blue)