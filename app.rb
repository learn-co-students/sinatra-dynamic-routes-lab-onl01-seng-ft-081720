require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @some_name = params[:name]
    "#{@some_name.reverse}"
   end

  get "/square/:number" do
    @some_num = params[:number.to_s]
    product = @some_num.to_i * @some_num.to_i
    "#{product.to_s}"
  end

  get "/say/:number/:phrase" do
  params[:phrase] * params[:number].to_i
  end
    

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1}" +" "+ "#{ @word2}" +" "+ "#{ @word3}" +" "+ "#{ @word4}" +" " +"#{ @word5}."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@num1 + @num2}"
    elsif params[:operation] == "subtract"
      "#{@num1 - @num2}"
    elsif params[:operation] == "multiply"
      "#{@num1 * @num2}"
    else params[:operation] == "divide"
        "#{@num1 / @num2}"
    end
  end
end