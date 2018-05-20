Rails.application.routes.draw do
  root 'home#index' 
  #get '/' => 'home#index'
  
  get 'utilities/index' # => 'utilities#index'
  get '/utilities/pick_lucky_numbers'
  get '/utilities/get_stock_info'
  get 'utilities/show_stock_info'
  
  get '/animals' => 'animals#index'
  get '/animals/cat' => 'animals#cat'
  get '/animals/dog' => 'animals#dog'
  
  get '/musics' => 'musics#index'
  get '/musics/music_1' => 'musics#music_1'
  get '/musics/music_2' => 'musics#music_2'
    get '/musics/music_3' => 'musics#music_3'
end

