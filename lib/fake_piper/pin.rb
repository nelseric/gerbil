module FakePiper
	class Pin
		def initialize(pin: nil, direction:nil)
			@pin = pin
			@dir = direction
			puts "#{to_s} initialized."
		end
		def to_s
			"Fake pin #{@pin}:#{@dir}"
		end

		def on
			puts "#{to_s} set on"
		end
		def off
			puts "#{to_s} set off"
		end
	end
end