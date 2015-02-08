class Plane

	attr_reader :status

	def initialize
		@status = 'flying'
	end

	def land(airport)
		@status = airport
	end

	def take_off
		@status = 'flying'
	end

	def clear_take_off
	end

	def clear_land
	end
end