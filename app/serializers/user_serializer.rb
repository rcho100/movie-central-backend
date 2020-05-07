class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :"name,", :"avatar,", :favorite_quote
end
