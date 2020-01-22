# In spec/docking_station_spec.rb
require 'docking_station'
docking_station = DockingStation.new
bike = Bike.new

describe DockingStation do 
    it "responds to release bike" do
      expect(docking_station).to respond_to(:release_bike)
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
    describe '#release bike' do
        it "raises an error when no bikes are avaliable" do
            expect{subject.release_bike}.to raise_error "No bikes left"
        end
    end
end


