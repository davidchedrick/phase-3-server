class ChildrenController < ApplicationController
    set :default_content_type, 'application/json'
    get '/children' do
        children = Child.all
        children.to_json()
    end

    post '/children' do
        child = Child.create(
            name: params[:name]
        )
        child.to_json
    end

    patch '/children/:id' do
        child = Child.find(params[:id])
        child.update(
            name: params[:name]
        )
        child.to_json
    end

    delete '/children/:id' do
        child = Child.find(params[:id])
        child.destroy
        child.to_json
    end

end