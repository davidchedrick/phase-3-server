class ChildrenController < ApplicationController

    get '/children' do
      
        children = Children.all
        children.to_json()

    end

end