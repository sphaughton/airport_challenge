module Weather

	def weather_today

		weather_today = ["sunny", "stormy"]

	end

	def sunny!
		
		unless weather_today.sample == "stormy"
			@stormy = true
		end

	end

end