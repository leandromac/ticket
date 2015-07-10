class Myticket < ActiveRecord::Base
  belongs_to :customer, class_name: 'User', foreign_key: 'id_customer'
	belongs_to :departament
	belongs_to :category

 	mount_uploader :upload, UploadUploader
	# validates :subject, :departament, :category, :mensage, :upload, :status, presence: true

end
