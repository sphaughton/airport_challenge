require_relative '../lib/plane'

describe Plane do

	let(:plane){Plane.new}

	it "is landed when created" do
		expect(plane.status).to eq "landed"
	end

	it "shows a flying status when flying" do
		plane.take_off
		expect(plane.status).to eq "flying"
	end

	it "shows a landed status when landed" do
		plane.take_off
		plane.landed
		expect(plane.status).to eq "landed"
	end
end