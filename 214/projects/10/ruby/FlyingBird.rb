# FlyingBird.rb | Defines the FlyingBird class which inherits attributes and methods
#   from the Bird superclass.
#
# By: Duncan Van Keulen
# Date:4/27/2020
####################################################

require './Bird.rb'

class FlyingBird < Bird

    def movement
        'flew by'
    end
end