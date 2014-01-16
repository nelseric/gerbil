begin
  require 'pi_piper'
  class Device
    def pin pin, direction
      PiPiper::Pin.new(pin: pin, direction: direction)
    end
  end
  puts "pi_piper loaded."
rescue LoadError
	require 'fake_piper'
  class Device
    def pin pin, direction
      FakePiper::Pin.new(pin: pin, direction: direction)
    end
  end
  puts "fake_piper loaded."
end
