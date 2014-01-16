app = File.expand_path(File.join(File.dirname(__FILE__), "app"))
$LOAD_PATH.unshift app unless $LOAD_PATH.include? app
app = File.expand_path(File.join(File.dirname(__FILE__), "lib"))
$LOAD_PATH.unshift app unless $LOAD_PATH.include? app

require "consumers/garage_door_consumer"
