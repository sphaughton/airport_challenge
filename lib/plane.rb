require './lib/weather'

class Plane

	include Weather

	attr_reader :status

	def initialize
		@status
	end

	def land
		raise "Plane cannot land due to stormy weather" if sunny! == false
		@status = 'landed'
	end

	def take_off
		raise "Plane cannot take off due to stormy weather" if sunny! == false
		@status = 'flying'
	end

end