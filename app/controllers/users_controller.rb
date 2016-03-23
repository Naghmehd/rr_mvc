class UsersController < ApplicationController
  def show
    if params[:first_name].nil?
      render Users.new.all.to_json
    else
      first_name
    end
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

  def first_name
    all_users = Users.new.all
    requested = all_users.select do |user|
      user["first_name"][0] == params[:first_name]
    end
    render requested.to_json

  end

  def delete
    all_users = Users.new.all
    id = params[:id].to_i - 1
    render all_users.delete_at[id].to_json

  end

end
