Rails.application.routes.draw do
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
