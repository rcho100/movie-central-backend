class User < ApplicationRecord
    has_many :user_movies
    has_many :movies, through: :user_movies

    has_secure_password
    validates :name, presence: true
    validates :email, uniqueness: { case_sensitive: false }
    validates :email, presence: true
    validates_format_of :email, with: /@/
end
