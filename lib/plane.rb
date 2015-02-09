class Plane

	attr_reader :status

	def initialize
		@status = "landed"
	end

	def landed
		raise "Plane is already landed" if already_landed?
		@status = "landed"
	end

	def take_off
		@status = "flying"
	end

	def already_landed?
		@status != "flying"
	end
end