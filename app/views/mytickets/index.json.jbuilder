json.array!(@mytickets) do |myticket|
  json.extract! myticket, :id, :id_customer, :subject, :departament, :category, :category, :mensage, :upload, :status, :date, :deadline
  json.url myticket_url(myticket, format: :json)
end
