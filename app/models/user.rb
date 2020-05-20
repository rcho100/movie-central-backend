class User < ApplicationRecord
    has_many :user_movies
    has_many :movies, through: :user_movies

    has_secure_password
end
