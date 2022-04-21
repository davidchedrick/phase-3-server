class UsersController < ApplicationController

    get '/users' do
      
        users = Users.all
        users.to_json()

    end

end