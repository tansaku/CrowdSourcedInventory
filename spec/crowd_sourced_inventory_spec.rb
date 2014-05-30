require 'crowd_sourced_inventory'

describe CrowdSourcedInventory do
  let(:csi) {CrowdSourcedInventory.new}
  it "can accept a new inventory item" do
    expect(csi.add_item('apple')).to eq ['apple'] 
  end 



end 