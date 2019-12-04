class User < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :climbs, through: :comments
end
