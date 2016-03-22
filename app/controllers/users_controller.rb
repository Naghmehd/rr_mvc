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

  def first_name
    all_users = Users.new.all
    first = params[:first_name].to_s.upcase
      if first == "S"
      render all_users[first].to_json
      end
  end

  def delete
    all_users = Users.new.all
    id = params[:id].to_i - 1
      if all_users.delete_at[id]
      render all_users.to_json
      end
  end

end
