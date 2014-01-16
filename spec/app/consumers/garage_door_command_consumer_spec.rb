require 'spec_helper'

require 'consumers/garage_door_command_consumer'

describe GarageDoorCommandConsumer do
  subject(:consumer) { GarageDoorCommandConsumer.new }
  it 'it consumes "home.door.garage' do
    expect(GarageDoorCommandConsumer.routing_keys).to include "home.door.garage"
  end

  describe "#process" do
  	let(:door) { double("GarageDoor", :trigger => true) }
  	before do
  		GarageDoor.stub(:instance => door)
  	end

  	it "triggers the garage door" do
  		expect(door).to receive(:trigger)
  		consumer.process({})
  	end
  end
end
