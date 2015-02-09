require_relative '../lib/plane'
require_relative '../lib/airport'
require_relative '../lib/weather'

describe Airport do

	let(:airport){Airport.new}
	let(:plane){double "Plane", landed: "landed", take_off: "flying"}

context "In sunny weather" do

	it "should let planes land" do
			airport.land(plane)
			expect(plane.landed).to eq "landed"
	end

	it "should let planes take off" do
			airport.take_off(plane)
			expect(plane.take_off).to eq "flying"
	end

end

context "In stormy weather" do

	before do
		allow(airport).to receive(:stormy?).and_return true
	end

	it "should not let planes land" do
		expect {airport.land(plane)}.to raise_error(RuntimeError, "Too stormy to land")
	end

	it "should not let planes take off" do
		expect {airport.take_off(plane)}.to raise_error(RuntimeError, "Too stormy to take off")
	end

end
	
end