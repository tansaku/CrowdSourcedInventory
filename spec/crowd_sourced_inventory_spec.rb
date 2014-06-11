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

  it "has no votes when first added" do
    expect(csi.vote_count('apple')).to eq 0
  end

  it 'can receive votes' do
    csi.vote('apple')
    expect(csi.vote_count('apple')).to eq 1
  end

  it 'can receive more than one vote' do
    csi.vote('apple')
    csi.vote('apple')
    expect(csi.vote_count('apple')).to eq 2 
  end

  it "receive votes on more than one foodstuff" do
    csi.vote('apple')
    csi.vote('pear')
    expect(csi.vote_count('apple')).to eq 1
    expect(csi.vote_count('pear')).to eq 1
  end




end 