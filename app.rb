require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @squared = params[:number].to_i**2
    "#{@squared}"
  end

  get "/say/:number/:phrase" do 
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @a = params[:word1]
    @b = params[:word2]
    @c = params[:word3]
    @d = params[:word4]
    @e = params[:word5]
    "#{@a} #{@b} #{@c} #{@d} #{@e}."
  end

  get "/:operation/:number1/:number2" do
      @oper = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      case @oper
    when "subtract"
      (@num1 - @num2).to_s
    when "add"
      (@num1 + @num2).to_s
    when "multiply"
      (@num1 * @num2).to_s
    when "divide"
      (@num1 / @num2).to_s
    end
  end

end

# "#{ @number1.to_i * @number2.to_i}"

# get "/hello/:name" do
#   @user_name = params[:name]
#   "Hello #{@user_name}!"
# end
