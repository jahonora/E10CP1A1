module Test
	def result
		promedio = (@nota1 + @nota2)/2
		if promedio < 4
			"Estudiante reprobado!" 
		else
			"Estudiante aprobado!"
		end
	end
end

class Student
	@@quantity = 0
	include Test
	attr_reader :nombre
	def initialize(nombre, nota1 = 4, nota2 = 4)
		@nombre = nombre
		@nota1 = nota1
		@nota2 = nota2
		@@quantity += 1
	end

	def self.quantity
		@@quantity
	end
	def to_s
		"#{@nombre}: #{@nota1}; #{@nota2} || Result: #{self.result}"
	end

end

students = []
10.times do |i|
	students << Student.new("Juanito#{i+1}", rand(1..7), rand(1..7)) 
end

students.each{|s| puts s}

puts "Cantidad de alumnos: #{Student.quantity}"
