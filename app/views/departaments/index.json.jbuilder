json.array!(@departaments) do |departament|
  json.extract! departament, :id, :title
  json.url departament_url(departament, format: :json)
end
