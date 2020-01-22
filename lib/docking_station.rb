require 'bike'


class DockingStation
    attr_reader :bike

    def release_bike
        fail 'No bikes left' unless @bike
        @bike
    end 
    def dock(bike)
        fail "Dock at capacity, can't store a bike" if @bike
        @bike = bike
    end
end
