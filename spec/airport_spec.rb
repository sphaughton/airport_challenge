require './lib/plane'
require './lib/airport'

describe Airport do

	let(:airport){Airport.new}
	let(:plane){double :plane}

	it "planes should be able to land" do
		expect(airport).to be_planes_can_land
	end

	it "planes should be able to take off" do
		expect(airport).to be_planes_can_fly
	end

end