class UsersController < ApplicationController

    get '/users' do
        users = Users.all
        users.to_json
    end

    post '/users' do
        users = Users.create(
            username: params[:username]
        )
        users.to_json
    end

    patch '/users/:id' do
        users = Users.find(params[:id])
        users.update(
            username: params[:username]
        )
        users.to_json
    end

    delete '/users/:id' do
        users = Users.find(params[:id])
        users.destroy
        users.to_json
    end

end