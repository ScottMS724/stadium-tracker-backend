class StadiumSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :city, :image, :user_id 
end
