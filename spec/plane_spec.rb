require_relative '../lib/plane'

describe Plane do

	let(:plane){Plane.new}

	it "is landed when created" do
		expect(plane.status).to eq "landed"
	end

context "status" do

	it "shows 'flying' when flying" do
		plane.take_off
		expect(plane.status).to eq "flying"
	end

	it "shows 'landed' when landed" do
		plane.take_off
		plane.landed
		expect(plane.status).to eq "landed"
	end
end
end