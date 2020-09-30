require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name]
    name_reverse = @user_name.reverse
    "#{name_reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    square = @number ** 2
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    all = []
    while @number > 0 
      all << "#{@phrase}"
      @number -= 1
    end
    all
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    operation = params[:operation]
    
    case operation
    when "add"
      sum = number1 + number2
    when "subtract"
      sum = number1 - number2
    when "multiply"
      sum = number1 * number2
    when "divide"
      sum = number1 / number2
    end
    "#{sum}"
  end



end