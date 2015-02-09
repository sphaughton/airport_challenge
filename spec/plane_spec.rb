require './lib/plane'
require './lib/weather'
require './lib/airport'

describe Plane do

	include Weather

	let(:plane){Plane.new}
	let(:weather){double :weather}
	let(:airport){double :airport, :planes_can_land, :planes_can_fly}

	it "should know it's flying" do
		plane.take_off
		expect(plane.status).to eq 'flying'
	end

	it "should be able to land" do
		expect{airport.planes_can_land}
		plane.land
		expect(plane.status).to eq 'landed'
	end

	it "should be able to take off" do
		expect{airport.planes_can_fly}
		plane.take_off
		expect(plane.status).to eq 'flying'                                          
	end

	it "can't land when the weather is stormy" do
		plane.land
		expect(plane.land).to raise_error(RuntimeError, "Plane cannot land due to stormy weather") if sunny! == false
	end

	it "can't take off when the weather is stormy" do
		plane.take_off
		expect(plane.take_off).to raise_error(RuntimeError, "Plane cannot take off due to stormy weather") if sunny! == false
	end
end