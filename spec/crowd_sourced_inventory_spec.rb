require 'crowd_sourced_inventory'

describe CrowdSourcedInventory do
  let(:csi) {CrowdSourcedInventory.new}

  it "has no contents by default" do
    expect(csi.contents).to eq []
  end

  it "can accept more than one item" do
    csi.add_item('apple')
    csi.add_item('pear')
    expect(csi.contents).to eq ['apple','pear']
  end

  it "can show the contents" do
    csi.add_item('apple')
    expect(csi.contents).to eq ['apple']
  end




end 