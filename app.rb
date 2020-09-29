require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name].reverse 
    "#{@user_name}"
  end
  
  get '/square/:number' do
    @num_square = params[:number].to_i * params[:number].to_i
    "#{@num_square}" 
  end

  get '/say/:number/:phrase' do
    # @num = params[:number].to_i
    # @phrase = params[:phrase]
    # return "#{@phrase * @num}"
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    
    case params[:operation]
    when "add"
      "#{@num_1 + @num_2}"
    when "subtract"
      "#{@num_2 - @num_1}"
    when "multiply"
      "#{@num_1 * @num_2}"
    when "divide"
      "#{@num_1 / @num_2}"
    end
  end

end