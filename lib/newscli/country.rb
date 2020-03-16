class Country

    attr_accessor :name, :cases, :deaths, :recovery
    @@all = []

    def initialize(name, cases, deaths, recovery)
        @name = name
        @cases = cases
        @deaths = deaths
        @recovery = recovery
        @@all << self
    end

    def self.all
        @@all
    end

    def self.display
        @@all.each {|country| puts "#{country.name}"}
    end

    # Country.display_all
    # france = Country.new()
    # france.display_information

    def display_information
        puts "Here is the data for #{@name}"
        puts "There are currently #{@cases} reported cases"
        puts "Out of those cases, there have been #{@deaths} deaths"
        puts "The goods news is #{@recovery} people have recovered"
        
    end

end