# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Duncan Van Keulen
# Date: 4/27/2020
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './FlyingBird.rb'
require './WalkingBird.rb'
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = FlyingBird.new "Average Flyer"
bird4.print

bird5 = WalkingBird.new "Average Walker"
bird5.print

bird6 = Penguin.new "Peter"
bird6.print

bird7 = Ostrich.new "Orville"
bird7.print

bird8 = Kiwi.new "Kathy"
bird8.print

puts "\n\n"