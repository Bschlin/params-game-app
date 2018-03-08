class ParamsExamplesController < ApplicationController
  def query_params
    name = params["input_name"]
    if name[0] == "a"
      x = "hey your name starts with the first letter of the alphabet!"
    else 
      x = " "
    end

    render json:{
      user_name: "Your name is #{params["input_name"].upcase}" + ", " + x
    }
  end 

  def game_guesser
    if params["input_number"] > 36.to_s
      render json:{message: "Your guess is too high"}
    elsif params["input_number"] < 36.to_s
      render json:{message: "Your guess is too low"}
    else params["input_number"] == 36.to_s
      render json:{message: "Your guess of 36 is correct!!!!!"}
    end
  end

  def game_picker
     if params["input_something"] > 36.to_s
      render json:{message: "Your guess is too high", value: params["input_something"]}
    elsif params["input_something"] < 36.to_s
      render json:{message: "Your guess is too low", value: params["input_something"]}
    else params["input_something"] == 36.to_s
      render json:{message: "Your guess of 36 is correct!!!!!", value: params["input_something"]}
    end
  end 
end
