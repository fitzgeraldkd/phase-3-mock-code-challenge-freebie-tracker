class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one(item_name)
    if self.freebies.index {|freebie| freebie.item_name == item_name}
      true
    else
      false
    end
  end

  def give_away(dev, freebie)
    if self.received_one(freebie.item_name)
      freebie.dev_id = dev.id
      freebie.save
    end
  end
end
