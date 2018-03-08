Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/query_params" => "params_examples#query_params"
  get "/game_guesser" => "params_examples#game_guesser"
  get "/url_segment_url/:input_something" => "params_examples#game_picker"
end
