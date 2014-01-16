
app = File.expand_path(File.join(File.dirname(__FILE__),'..', "app"))
$LOAD_PATH.unshift app unless $LOAD_PATH.include? app
lib = File.expand_path(File.join(File.dirname(__FILE__),'..', "lib"))
$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib

require 'pry'
