class Myticket < ActiveRecord::Base
  belongs_to :customer, class_name: 'User', foreign_key: 'id_customer'
	belongs_to :departament
	belongs_to :category

 	mount_uploader :upload, UploadUploader
	# validates :subject, :departament, :category, :mensage, :upload, :status, presence: true

  enum status: { active: '0', waiting: '1', finished: '2' }

  before_create :set_active_status

  def set_active_status
    self.status = Myticket.statuses[:active]
  end
end
