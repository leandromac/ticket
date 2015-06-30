json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :emails, :phone, :address, :cpf_cnpj, :logo, :website, :facebook, :customer_since
  json.url customer_url(customer, format: :json)
end
