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

	def request_take_off
		take_off if airport.clear_take_off
	end

	def request_land
		land(airport) if airport.clear_landing
	end
end