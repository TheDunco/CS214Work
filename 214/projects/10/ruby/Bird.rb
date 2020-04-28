# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Duncan Van Keulen
# Date: 4/27/2020
####################################################

class Bird

    attr_reader :name

    def initialize(name)
        @name = name
    end

    # Define a default bird's call
    def call
        'Squaaaaaaawk!'
        end
    
    def className
        self.class.to_s
    end

    # Output a bird
    def print
        puts name + " " + className + " just " + movement + " and said " + call
    end

    # Define the movement of a bird abstractly, to be supplied by subclasses
    def movement ; end

end