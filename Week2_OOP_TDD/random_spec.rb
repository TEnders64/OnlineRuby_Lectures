RSpec.describe Random do 
	it "returns an integer" do 
		expect(Random.new_seed.class == Bignum).to eq(true) 
	end
end