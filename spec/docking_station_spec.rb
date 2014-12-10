require 'docking_station'
require 'bike'

describe DockingStation do


	let (:bike) {Bike.new}
	let (:station) {DockingStation.new(:capacity => 20)}

	def fill_station(station)
		20.times {station.dock(bike)}
	end

	it "should accept a bike" do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "should release a bike" do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should know when it is full" do
		expect(station).not_to be_full
		fill_station(station)
		expect(station).to be_full
	end

	it "shouldn\'t accept the bike if the station is full" do
		fill_station(station)
		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError, 'Station is full')
		
	end



end

