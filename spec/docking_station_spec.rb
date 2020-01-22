# In spec/docking_station_spec.rb
require 'docking_station'
require 'bike'
docking_station = DockingStation.new
bike = Bike.new

describe DockingStation do 
    it "responds to release bike" do
      expect(docking_station.release_bike).to be_instance_of Bike
    end
    it "docks a bike at a docking station" do
        expect(subject.dock(bike)).to eq bike
    end
    it { is_expected.to respond_to(:bike)}
    it 'returns docked bikes' do 
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
    end
end

describe Bike do
    it "show the bike is working" do
      expect(bike.working?).to be true
    end

end

