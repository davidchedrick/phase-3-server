class TasksController < ApplicationController

    # get '/tasks' do
    #     task = Task.all
    #     task.to_json()
    # end

    get '/tasks/:id' do
        tasks = Task.find_by(params[:child_id])

        tasks.to_json()
    end

    # post '/tasks' do
    #     task = Task.create(
    #         value: params[:value]
    #     )
    #     task.to_json
    # end

    # patch '/tasks/:id' do
    #     task = Task.find(params[:id])
    #     task.update(
    #         value: params[:value]
    #     )
    #     task.to_json
    # end

    delete '/tasks/:id' do
        task = Task.find(params[:id])
        task.destroy
        task.to_json
    end

end