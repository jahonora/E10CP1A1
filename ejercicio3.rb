class Vehicle
	def initialize(model, year)
		@model = model
		@year = year
		@start = false
	end

	def engine_start
		@start = true
	end
end

class Car < Vehicle
	@@cantidad_instancias = 0

	def initialize(model,year)
		super
		@@cantidad_instancias += 1
	end
	def self.num_instancias
		@@cantidad_instancias
	end
	def engine_start
		super
		puts "El motor se ha encendido!"
	end
end

cars = []
10.times do
	cars << Car.new("Peugeot", 1992)
end

cars.each{|c| c.engine_start}
puts Car.num_instancias