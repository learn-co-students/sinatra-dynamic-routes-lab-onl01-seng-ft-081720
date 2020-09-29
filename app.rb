require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do 
    @square_num = params[:number].to_i * params[:number].to_i
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    @string = ""
    params[:number].to_i.times do
      @string << params[:phrase]
    end
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@string}"
  end

  get '/:operation/:number1/:number2' do
    @result = nil
    if params[:operation] == 'multiply'
      @result = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == 'subtract'
      @result = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == 'add'
      @result = params[:number1].to_i + params[:number2].to_i
    else
      @result = params[:number1].to_i / params[:number2].to_i
    end
    "#{@result}"
  end
end