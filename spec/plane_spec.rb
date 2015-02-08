require './lib/plane'
require './lib/airport'

describe Plane do

	let(:plane){Plane.new}
	let(:airport){double :airport, status: 'landed'}

	it "should know it's flying" do
		expect(plane.status).to eq 'flying'
	end

	it "should be able to land" do
		plane.land(airport)
		expect(plane.status).to eq airport
	end

	it "should be able to take off" do
		plane.land(airport)
		expect(plane.status).to eq airport
		plane.take_off
		expect(plane.status).to eq 'flying'                                          
	end

	it "should be able request take off" do
	end

	it "should be able request landing" do
	end
end