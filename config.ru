require 'rubygems'
require 'bundler/setup'
require 'status_dogs'

require File.expand_path('../spec/test_app', __FILE__)

use StatusDogs
run TestApp.new
