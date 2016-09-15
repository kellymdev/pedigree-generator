CoatColour.destroy_all
Breed.destroy_all
Cat.destroy_all


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
bluecream = CoatColour.create!(name: "Bluecream")
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
user = User.find 1

top = Cat.create!(name: "Martes Top Gun", breed: persian, coat_colour: black, user: user)
betsy = Cat.create!(name: "Askari Heavens T Betsy", user: user)
yu = Cat.create!(name: "Askari Here's Looking At Yu Kid", user: user)
gee = Cat.create!(name: "Askari Golly Gosh N' Gee Whiz", breed: exotic, coat_colour: tortoiseshell, user: user, sire: top, dam: betsy)
flash = Cat.create!(name: "Askari Zee Flashie Red Bear", breed: exotic, coat_colour: red_tabby, user: user, sire: yu, dam: gee)
particular = Cat.create!(name: "Preview Most Particular (Imp Aust)", breed: persian, coat_colour: black, user: user)
johnny = Cat.create!(name: "Bolos Johnny Lee", user: user)
fancy = Cat.create!(name: "Bolos Fancy", user: user)
pure = Cat.create!(name: "Purest Phenonmonen (Imp USA)", breed: persian, user: user, sire: johnny, dam: fancy)
cream = Cat.create!(name: "Askari I'z Blu Wifa Bit O'Cream", breed: exotic, coat_colour: bluecream, user: user, sire: flash, dam: particular)
madison = Cat.create!(name: "Askari Dashin Bit O'Stuff", breed: exotic, coat_colour: blue, user: user, sire: pure, dam: cream)
heart = Cat.create!(name: "Sunnyway Place NM' Heart", breed: persian, coat_colour: blue_bicolour, user: user)
gussie = Cat.create!(name: "Askari The Delectable Miss Gussie", breed: persian, user: user)
dash = Cat.create!(name: "Askari Flash Wifa Spot Of Dash", breed: exotic, coat_colour: blue_bicolour, user: user, sire: flash, dam: heart)
mickey = Cat.create!(name: "Askari Hairy McKerrie", breed: persian, coat_colour: blue_bicolour, user: user, sire: dash, dam: gussie)
spot = Cat.create!(name: "Askari Blu Spot Ona White Cloud", breed: persian, coat_colour: blue_harlequin, user: user, sire: dash, dam: gussie)