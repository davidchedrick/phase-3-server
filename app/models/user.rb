class User < ActiveRecord::Base
    has_many :children, dependent: :destroy
    has_many :tasks, through: :children
end