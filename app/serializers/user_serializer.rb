class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :movies, through: :user_movies
end