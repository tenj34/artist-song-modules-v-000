module Memorable
  def reset_all
    all.clear
  end

  def count
    all.count
  end

  def initialize
    self.class.all << self 
  end
end
