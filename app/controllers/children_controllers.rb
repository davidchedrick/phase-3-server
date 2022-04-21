class ChildrenController < ApplicationController

    get '/children' do
        children = Children.all
        children.to_json()
    end

    post '/children' do
        children = Children.create(
            name: params[:name]
        )
        children.to_json
    end

    patch '/children/:id' do
        children = Children.find(params[:id])
        children.update(
            name: params[:name]
        )
        children.to_json
    end

    delete '/children/:id' do
        children = Children.find(params[:id])
        children.destroy
        children.to_json
    end

end