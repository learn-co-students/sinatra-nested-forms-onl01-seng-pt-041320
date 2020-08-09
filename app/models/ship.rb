class Ship
    attr_reader :name, :type, :booty_attribute

    SHIPS = []

    def initialize(args)
        @name = args[:name]
        @type = args[:type]
        @booty_attribute = args[:booty_attribute]
        SHIPS << self
    end

    def self.all
        COURSES
    end

    def self.clear
        COURSES.clear
    end
end