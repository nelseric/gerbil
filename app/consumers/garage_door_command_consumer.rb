require 'hutch'

require 'devices/garage_door'

class GarageDoorCommandConsumer
  include Hutch::Consumer
  consume 'home.door.garage'
  queue_name 'garage_door_commands'

  def process(message)
    GarageDoor.instance.trigger
  end
end
