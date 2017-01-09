require 'sinatra'
require 'slim'
require 'yaml'
require 'byebug'

get '/' do
  @config = YAML.load_file('config/config.yml')
  slim :index
end