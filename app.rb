require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name, @coach, @pg, @sg, @sf, @pf, @c = params['name'], params['coach'], params['pg'], params['sg'], params['sf'], params['pf'], params['c']
    # print params
    erb :team
  end

end