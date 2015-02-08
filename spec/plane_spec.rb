require './lib/plane'
require './lib/weather'

describe Plane do

	include Weather

	let(:plane){Plane.new}
	let(:weather){double :weather}

	it "should know it's flying" do
		plane.take_off
		expect(plane.status).to eq 'flying'
	end

	it "should be able to land" do
		plane.land
		expect(plane.status).to eq 'landed'
	end

	it "should be able to take off" do
		plane.land
		expect(plane.status).to eq 'landed'
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