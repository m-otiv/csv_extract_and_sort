require "./../city"

RSpec.describe City do
  it "check the output string" do
    city = City.new("Italy","Potenza", "698.0")

    expect(city.print).to eq("698m - Potenza, Italy")
  end
end
