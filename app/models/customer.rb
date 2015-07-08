class Customer < ActiveRecord::Base
	validates :emails, :name, :phone, :address, :cpf_cnpj, presence: true
end
