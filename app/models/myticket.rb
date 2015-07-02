class Myticket < ActiveRecord::Base
	belongs_to :departament
	belongs_to :category

  mount_uploader :upload, UploadUploader
end
