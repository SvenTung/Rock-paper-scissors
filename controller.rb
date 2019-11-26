require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative './models/rock_paper_scissors'
also_reload './models/*'

get '/' do
  erb(:home)
end

get '/pvp' do
  erb(:pvp)
end

get '/pve' do
  @computer = Rps.random
  erb(:pve)
end

get '/next-turn' do
  erb(:player2)
end

get '/pvp/:player1' do
  $player1 = (params[:player1])
  erb(:next_turn)
end

get '/pvp/:player1/:player2' do
  @result = Rps.play(params[:player1], params[:player2])
  @player1 = (params[:player1])
  @player2 = (params[:player2])
  erb(:result)
end

get '/pve/:player1/:player2' do
  @result = Rps.play(params[:player1], params[:player2])
  @player1 = (params[:player1])
  @player2 = (params[:player2])
  erb(:result)
end
