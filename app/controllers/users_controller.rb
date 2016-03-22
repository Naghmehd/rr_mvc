class UsersController < ApplicationController
  def show
    render Users.new.all.to_json
  end

  def index
    all_users = Users.new.all
    id = params[:id].to_i - 1
    if id < 0 || id > all_users.count
      render "Not found!".to_json, status: "404 NOT FOUND"
    else
      render all_users[id].to_json
    end
  end
end
