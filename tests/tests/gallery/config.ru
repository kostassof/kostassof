require 'sinatra'
require 'carrierwave'
require 'carrierwave/sequel'
require 'puma'
require 'haml'
require 'sequel'
require 'sqlite3'
require 'pry-byebug'
require 'time_ago_in_words'
require 'rmagick'

ENV["RACK_ENV"] ||= 'development'
DB = Sequel.connect "sqlite://db/#{ENV["RACK_ENV"]}.sqlite3"

require './app'
require './lib/image_uploader'
require './lib/image'


run App
