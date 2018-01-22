require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get '/' do
  erb :index
end

get '/list' do
  erb :list
end

get '/create' do
  erb :create
end

get '/destroy' do
  erb :destroy
end

get '/mark_as_tested' do
  erb :mark_as_tested
end

get '/import' do
  erb :import
end

get '/team/:username' do
  puts params[:username]
  "The username is #{params[:username]}"
end
