class TasksController < ApplicationController

    get '/tasks/:id' do
        tasks = Task.find_by(params[:child_id])

        tasks.to_json()
    end

    post '/tasks' do
        task = Task.create(
            body: params[:body],
            value: params[:value],
            child_id: params[:child_id]
        )
        task.to_json
    end

    delete '/tasks/:id' do
        task = Task.find(params[:id])
        task.destroy
        task.to_json
    end

end