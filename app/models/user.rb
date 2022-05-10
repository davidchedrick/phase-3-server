class User < ActiveRecord::Base
    has_many :children
    has_many :tasks, through: :children
end