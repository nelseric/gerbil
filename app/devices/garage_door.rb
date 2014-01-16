require 'singleton'
require 'device'

class GarageDoor < Device
	include Singleton 

	def initialize
  	puts "Initializing GarageDoor"
		@pin = pin 17, :out
  end

  def trigger
  	puts "Triggering Garage Door!"
  	@pin.on
  	sleep 0.5
  	@pin.off
  end
end
