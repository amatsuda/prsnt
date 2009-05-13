ActionController::Routing::Routes.draw do |map|
  map.resources :events do |event|
    event.resources :presents
    event.resources :entries
  end

  map.root :controller => 'events'
end
