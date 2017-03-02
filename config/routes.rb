Rails.application.routes.draw do
  # Routes for the Post resource:
  # CREATE
  get "/posts/new", :controller => "posts", :action => "new"
  post "/create_post", :controller => "posts", :action => "create"

  # READ
  get "/posts", :controller => "posts", :action => "index"
  get "/posts/:id", :controller => "posts", :action => "show"

  # UPDATE
  get "/posts/:id/edit", :controller => "posts", :action => "edit"
  post "/update_post/:id", :controller => "posts", :action => "update"

  # DELETE
  get "/delete_post/:id", :controller => "posts", :action => "destroy"
  #------------------------------

  # Routes for the Instrument resource:
  # CREATE
  get "/instruments/new", :controller => "instruments", :action => "new"
  post "/create_instrument", :controller => "instruments", :action => "create"

  # READ
  get "/instruments", :controller => "instruments", :action => "index"
  get "/instruments/:id", :controller => "instruments", :action => "show"

  # UPDATE
  get "/instruments/:id/edit", :controller => "instruments", :action => "edit"
  post "/update_instrument/:id", :controller => "instruments", :action => "update"

  # DELETE
  get "/delete_instrument/:id", :controller => "instruments", :action => "destroy"
  #------------------------------

  # Routes for the Genre resource:
  # CREATE
  get "/genres/new", :controller => "genres", :action => "new"
  post "/create_genre", :controller => "genres", :action => "create"

  # READ
  get "/genres", :controller => "genres", :action => "index"
  get "/genres/:id", :controller => "genres", :action => "show"

  # UPDATE
  get "/genres/:id/edit", :controller => "genres", :action => "edit"
  post "/update_genre/:id", :controller => "genres", :action => "update"

  # DELETE
  get "/delete_genre/:id", :controller => "genres", :action => "destroy"
  #------------------------------

  # Routes for the Band resource:
  # CREATE
  get "/bands/new", :controller => "bands", :action => "new"
  post "/create_band", :controller => "bands", :action => "create"

  # READ
  get "/bands", :controller => "bands", :action => "index"
  get "/bands/:id", :controller => "bands", :action => "show"

  # UPDATE
  get "/bands/:id/edit", :controller => "bands", :action => "edit"
  post "/update_band/:id", :controller => "bands", :action => "update"

  # DELETE
  get "/delete_band/:id", :controller => "bands", :action => "destroy"
  #------------------------------

  # Routes for the Gigpost resource:
  # CREATE
  get "/gigposts/new", :controller => "gigposts", :action => "new"
  post "/create_gigpost", :controller => "gigposts", :action => "create"

  # READ
  get "/gigposts", :controller => "gigposts", :action => "index"
  get "/gigposts/:id", :controller => "gigposts", :action => "show"

  # UPDATE
  get "/gigposts/:id/edit", :controller => "gigposts", :action => "edit"
  post "/update_gigpost/:id", :controller => "gigposts", :action => "update"

  # DELETE
  get "/delete_gigpost/:id", :controller => "gigposts", :action => "destroy"
  #------------------------------

  # Routes for the Membership resource:
  # CREATE
  get "/memberships/new", :controller => "memberships", :action => "new"
  post "/create_membership", :controller => "memberships", :action => "create"

  # READ
  get "/memberships", :controller => "memberships", :action => "index"
  get "/memberships/:id", :controller => "memberships", :action => "show"

  # UPDATE
  get "/memberships/:id/edit", :controller => "memberships", :action => "edit"
  post "/update_membership/:id", :controller => "memberships", :action => "update"

  # DELETE
  get "/delete_membership/:id", :controller => "memberships", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
