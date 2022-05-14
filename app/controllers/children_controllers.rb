class ChildrenController < ApplicationController
    set :default_content_type, 'application/json'
    # get '/children' do
    #     children = Child.all
    #     children.to_json()
    # end

    get '/children/:id' do
        children = Child.find(params[:id])

        children.to_json(
             include: :tasks
        )
    end

    post '/children' do
        child = Child.create(
            name: params[:name],
            points: params[:points],
            user_id: params[:user_id]
        )
        child.to_json
    end

    patch '/children/:id/points' do
        child = Child.find(params[:id])
       
        child.update(
            points: params[:points]
        )
        child.to_json
    end

    # delete '/children/:id' do
    #     child = Child.find(params[:id])
    #     child.destroy
    #     child.to_json
    # end

end