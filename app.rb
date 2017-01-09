require 'sinatra'
require 'slim'
require 'yaml'

get '/' do
  @config = YAML.load(ERB.new(File.read('config/config.yml')).result)
  slim :index
end