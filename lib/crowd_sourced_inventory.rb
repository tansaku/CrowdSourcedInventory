class CrowdSourcedInventory

  attr_reader :contents

  def initialize
    @contents = []
  end

  def add_item(item)
    @contents << item 
  end

end



