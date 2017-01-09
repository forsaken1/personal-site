require 'sinatra'
require 'slim'
require 'yaml'

get '/' do
  @content = YAML.load(ERB.new(File.read('config/content.yml')).result)
  slim :index
end