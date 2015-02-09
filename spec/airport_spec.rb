require_relative '../lib/plane'
require_relative '../lib/airport'
require_relative '../lib/weather'

describe Airport do

	let(:airport){Airport.new}
	let(:plane){double "Plane", landed: "landed", take_off: "flying"}

	it "should be empty when created" do
		expect(airport.planes_count).to eq(0)
	end

context "in sunny weather" do

	it "should let a plane land" do
			airport.land(plane)
			expect(airport.planes_count).to eq(1)
	end

	it "should let a plane take off" do
			airport.take_off(plane)
			expect(airport.planes_count).to eq(0)
	end

end

context "in stormy weather" do

	before do
		allow(airport).to receive(:stormy?).and_return true
	end

	it "should not let a plane land" do
		expect {airport.land(plane)}.to raise_error(RuntimeError, "Too stormy to land")
	end

	it "should not let a plane take off" do
		expect {airport.take_off(plane)}.to raise_error(RuntimeError, "Too stormy to take off")
	end

end

context "when full" do
	it "should not let a plane land" do
		10.times {airport.land(plane)}
		expect {airport.land(plane)}.to raise_error(RuntimeError, "Airport is full")
	end
end

end