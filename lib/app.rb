require_relative 'bookmark'
require 'sinatra/base'
class Bookmarks < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
  @bookmarks = Bookmark.all
  erb :bookmarks
  end




  run! if app_file == $0
end
