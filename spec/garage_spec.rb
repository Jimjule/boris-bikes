describe Garage do
  it 'Fixes bikes' do
    garage = Garage.new
    garage.repair_bikes
    garage.bikes.each do |bike|
      expect(bike.working?).to eq true
    end 
  end

end
