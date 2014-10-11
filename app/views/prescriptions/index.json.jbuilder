json.array!(@prescriptions) do |prescription|
  json.extract! prescription, :user_id, :prescription_type, :sph, :cyl, :axis, :bc, :diam
  json.url prescription_url(prescription, format: :json)
end