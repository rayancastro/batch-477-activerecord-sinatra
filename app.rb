require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/restaurants" do
  @restaurants = Restaurant.all

  erb :index
end

get "/restaurants/:id" do
  @restaurant = Restaurant.find(params[:id])

  erb :show
end

post "/restaurants" do
  # Create a new restaurant with the data from the form
  name = params[:name]
  city = params[:city]
  description = params[:description]

  restaurant = Restaurant.new( { name: name, city: city, description: description } )
  restaurant.save

  redirect '/restaurants'
end


# VERBS
# REST pattern

# GET request
# Requests info

# POST request
# Send info to the servers

# PATCH / PUT
# Update something

# DELETE
# Delete something
