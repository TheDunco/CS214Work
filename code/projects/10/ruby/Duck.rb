# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Duncan Van Keulen
# Date:4/27/2020
####################################################

require './FlyingBird.rb'

class Duck < FlyingBird

    def call
        'Quack!'
    end

end