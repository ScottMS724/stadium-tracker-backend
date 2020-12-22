class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :img_url
  has_many :stadiums, serializer: StadiumSerializer 
end
