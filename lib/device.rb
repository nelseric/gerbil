require 'rest-client'

class Spark
  attr_accessor :access_token, :device_id

  include OpenURI

  def initialize(device_id, access_token)
    @device_id = device_id
    @access_token = access_token
  end

  def base_url
    "https://api.spark.io/v1/devices/#{device_id}"
  end

  def digital_write pins
    RestClient.get base_url + "digitalwrite"
  end

  def digital_read
    RestClient.get base_url + "digitalread"
  end

  def analog_read
    RestClient.get base_url + "analogread"
  end

  def analog_write
    RestClient.get base_url + "analogread"
  end
end