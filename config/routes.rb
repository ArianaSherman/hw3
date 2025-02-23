Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources "places"
  get("/places", {:controller => "places", :action => "index"})
  get("/places/:id", {:controller=>"places", :action=>"show"})
  resources "entries"

end
