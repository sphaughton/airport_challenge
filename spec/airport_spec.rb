require './lib/plane'
require './lib/airport'
require './lib/weather'

describe Airport do

	include Weather

	let(:airport){Airport.new}
	let(:plane){double :plane}
	let(:weather){double :weather}

	it "planes should be able to land" do
		expect(airport).to be_planes_can_land
	end

	it "planes should be able to take off" do
		expect(airport).to be_planes_can_fly
	end

	it "will not allow planes to land when the weather is stormy" do
		expect(airport.planes_can_land).to raise_error(RuntimeError, "Plane cannot land due to stormy weather") if sunny! == false
	end

	it "should be able to stop a plane taking it if it's stormy" do
		expect(airport.be_planes_can_fly).to raise_error(RuntimeError, "Plane cannot take off due to stormy weather") if sunny! == false
	end
end