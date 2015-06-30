class Myticket < ActiveRecord::Base
	belongs_to :departament
	belongs_to :category
	belongs_to :title, class_name: 'Departament'
end
