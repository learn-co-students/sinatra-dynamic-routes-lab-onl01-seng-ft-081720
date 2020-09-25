require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    x = params[:number].to_i
    phrase = params[:phrase].split("%20").join(' ')
    Array.new(x, phrase)
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    array = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    array.join(' ') + "."
  end

  get '/:operation/:number1/:number2' do
    uno = params[:number1].to_i
    dos = params[:number2].to_i
    x = params[:operation]
    if x == "add"
      "#{uno + dos}"
    elsif x == "subtract"
      "#{uno - dos}"
    elsif x == "multiply"
      "#{uno * dos}"
    elsif x == "divide"
      "#{uno / dos}"
    end
  end
end