class UsersController < ApplicationController

    get '/users' do
        user = User.all
        user.to_json
    end

    post '/users' do
        user = User.create(
            username: params[:username]
        )
        user.to_json
    end

    patch '/users/:id' do
        user = User.find(params[:id])
        user.update(
            username: params[:username]
        )
        user.to_json
    end

    delete '/users/:id' do
        user = User.find(params[:id])
        user.destroy
        user.to_json
    end

end