require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @num_to_square = params[:number].to_i
    @square_num = @num_to_square ** 2
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @repeat = @number.times.collect {@phrase}.join(' ') 
    "#{@repeat}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @sentence = @word1 + " #{@word2}" + " #{@word3}" + " #{@word4}" + " #{@word5}."
    "#{@sentence}" 
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
      when "add"
        (@num1 + @num2).to_s
      when "subtract"
        (@num1 - @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
      end
  end

end