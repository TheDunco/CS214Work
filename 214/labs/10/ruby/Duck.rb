# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Duncan Van Keulen
# Date:4/23/2020
####################################################

require './Bird.rb'

class Duck < Bird

    def call
        'Quack!'
    end

end