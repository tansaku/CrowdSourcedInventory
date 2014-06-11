class CrowdSourcedInventory

  attr_reader :contents

  def initialize
    @contents = []
    @votes = Hash.new(0)
  end

  def add_item(item)
    @contents << item 
  end

  def vote(item)
    @votes[item] += 1
  end

  def vote_count(item)
    @votes[item]
  end

end



