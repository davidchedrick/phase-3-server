class TasksController < ApplicationController

    get '/tasks' do
        tasks = Tasks.all
        tasks.to_json()
    end

    post '/tasks' do
        tasks = Tasks.create(
            value: params[:value]
        )
        tasks.to_json
    end

    patch '/tasks/:id' do
        tasks = Tasks.find(params[:id])
        tasks.update(
            value: params[:value]
        )
        tasks.to_json
    end

    delete '/tasks/:id' do
        tasks = Tasks.find(params[:id])
        tasks.destroy
        tasks.to_json
    end

end