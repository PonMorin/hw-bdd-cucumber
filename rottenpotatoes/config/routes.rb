Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  post '/movies/search_tmdb' => 'movies#search_tmdb', :as => 'search_tmdb'
  get '/movies/search_results' => 'movies#search_results', :as =>'search_results'
  
  #get 'search_tmdb/:search_terms', to: 'movies#search_tmdb_happy_path', as: :search_tmdb_happy_path
  #get 'search_tmdb', to: 'movies#search_tmdb_sad_path', as: :search_tmdb_sad_path
end
