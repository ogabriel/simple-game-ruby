require 'scenario.rb'
require 'fighting.rb'

class Engine
  def initialize()
    @hero = Player.new()
  end

  def play()
    InitialRoom.enter()
    where_is_portalkey = rand(1..10)
    count = 1
    while self.hero.portal_key == false
        if where_is_portalkey == count
          current_room.portal_key == true
        end
        count += 1
    end
    FinalRoom.enter()
  end
end

a_game = Engine.new()
a_game.play
