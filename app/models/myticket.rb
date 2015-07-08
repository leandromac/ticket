class Myticket < ActiveRecord::Base
	belongs_to :departament
	belongs_to :category

 	mount_uploader :upload, UploadUploader
  	validates :subject, :departament, :category, :mensage, :upload, :status, presence: true

end
