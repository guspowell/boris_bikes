require 'bike_container'
require 'garage'


describe Garage do

	let (:garage) {Garage.new(:capacity => 25)}

	it "should have a default capacity when initialised" do
		expect(garage.capacity).to eq(25)
	end

	it "should be able to fix the bike" do 		# garage should be able to fix bike
		broken_bike = double :bike              # we create a double to create object bike
		expect(broken_bike).to receive(:fix!)    # we must fix! object bike, with method fix!, receive allows for the message fix!
		garage.accept(broken_bike)         			# Garage must accept broken bike       
	end

	it 'has the bike after fixing it' do 
		broken_bike = double :bike 								#create a double
		allow(broken_bike).to receive(:fix!)			#allow the double to receive method fix
		garage.accept(broken_bike)								#garage accepts the double
		expect(garage.bikes).to eq [broken_bike]	#expect no. of bikes in array to equal no. of bikes fixed.
	end

end
