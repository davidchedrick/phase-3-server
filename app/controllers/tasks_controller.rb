class TasksController < ApplicationController

    get '/tasks' do
      
        tasks = Tasks.all
        tasks.to_json()

    end

end