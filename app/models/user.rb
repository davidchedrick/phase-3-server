class User < ActiveRecord::Base
    has_many :children
    has_many :task, through: :children
    
end