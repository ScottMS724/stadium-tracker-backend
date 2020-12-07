class VisitSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :description, :stadium_id 
end
