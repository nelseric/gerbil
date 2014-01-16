app = File.expand_path(File.join(File.dirname(__FILE__), "app"))
$LOAD_PATH.unshift app unless $LOAD_PATH.include? app
app = File.expand_path(File.join(File.dirname(__FILE__), "lib"))
$LOAD_PATH.unshift app unless $LOAD_PATH.include? app

Dir.glob("app/consumers/*").each do |file|
	require File.expand_path(file)
end

require 'yaml'

config = YAML.load_file(File.join(File.dirname(__FILE__),"config", "hutch.yml"))
config.each do |attr, value|
  Hutch::Config.set attr.to_sym, value
end

