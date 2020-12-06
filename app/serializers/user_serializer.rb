class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :img_url
end
