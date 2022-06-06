class UsersController < ApplicationController

    get '/users' do
        user = User.all
        user.to_json
    end
    
    get '/users/:id' do
        user = User.find(params[:id])

        user.to_json(
            include: :children
                
        )
    end

    post '/users' do
        user = User.create(
            username: params[:username],
            password: params[:password]
        )
        user.to_json
    end

    delete '/users/:id' do
        user = User.find(params[:id])
        user.destroy
        user.to_json
    end

end