class UsersController < ApplicationController
  def show
    render Users.new.all.to_json
    # Use the render method now to specify what should be rendered to the screen
    # this 'render' method fills the request object.
    # By default, all render calls will make the status "200 OK", you only need
    # to add a status if you are changing from "200 OK" to something else.
  end

  def index
    render Users[:id, 2].to_json
  end

  def not_found
    render Users[:id] = -1.to_json, status: "404 NOT FOUND"
  end
end
