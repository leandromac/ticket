class Category < ActiveRecord::Base
	belongs_to :title, class_name: 'Departament'
end
