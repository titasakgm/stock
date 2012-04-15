Stock::Application.routes.draw do
  resources :analyses

  get "chart/draw"

  resources :quotes

  resources :syms

  resources :setcloses

  match '/quotes/search(/:id)', :controller => :quotes, :action => :search
  match '/chart/draw/:id', :controller => :chart, :action => :draw
  match '/analyses/draw/:symbol/:date/:time', :controller => :analyses, :action => :draw
  # match ':controller(/:action(/:id))(.:format)'
end
