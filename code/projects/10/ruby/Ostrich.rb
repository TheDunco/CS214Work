# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# By: Duncan Van Keulen
# Date:4/27/2020
####################################################

require './WalkingBird.rb'

class Ostrich < WalkingBird

    def call
        'Snork!'
    end

end