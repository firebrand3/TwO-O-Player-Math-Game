class Player
  attr_accessor :name, :lives, :score

  def initialize (name)
    @name = name
    @lives = 3
  end  
    
  def reduce_life
    @lives -= 1
  end

  def is_alive
    @lives > 0
  end
      
end