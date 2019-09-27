class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(args)
    self.show = Show.new(args)
    self
  end

  def build_network(args)
    self.show.network = Network.new(args)
  end  

end