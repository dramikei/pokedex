# pokedex
Simple Pokedex App - Devslopes

# What is this Pokedex app, and what does it Do?

This is an app which shows the list of all 718 Pokemons, and also displays their Bio,Defence,Attact,Weight etc. to the User.

# How does this App Work?

This app parses through pokemon CSV file, the pokemon.csv has the id of the Pokemon and its name and other stuff,
this app pulls the id and name from the csv and appends it in an array of pokemon, and also sets the number of CollectionViewCells to the
number of elements in that pokemon array (pokemon.count).

The name of the images in this project is the same as the id of the corresponding Pokemon, thus using the id and name from the csv,
the image and name of the pokemon are implemented in the each cell.

<Working of the API and other stuff to be implemented in the project and wriiten.>

# Working of the Segue.

There is a Generic segue in this project, which is called when a Cell is tapped, this segue also send the array of pokemons to the second ViewControlelr
(named: PokemonDetailVC) 

# Working of the Music button
Music is loaded when the app starts, and can be paused,resumed with the Music button in this project, when the music button is called the function which i have created in this project is called.
this function checks weather the music is playing, if it IS playing then it stops it, and if it is already stopped, it simply resumes it,
It also changes the alpha of the button when the music is stopped, this gives the app a really cool effect.

# Pulling data from the API and using it to change stuff in the 2nd View

<To be written>

# NOTE:

Pokémon© 2002-2015
Pokémon.© 1995-2015
Nintendo/Creatures Inc./GAME FREAK inc.TM,® and Pokémon character names are trademarks of Nintendo
No Copyright or trademark infringement is intended in using Pokémon Content.
Pokémon Content used in this project here falls under the Fair Use copyright law under the teaching Category.
