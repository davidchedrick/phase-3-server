class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    "Hello World"
  end

#   get '/children' do
#     children = Child.all
#     children.to_json()
# end
end
