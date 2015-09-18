class Myticket < ActiveRecord::Base
  belongs_to :customer, class_name: 'User', foreign_key: 'id_customer'
	belongs_to :departament
	belongs_to :category

  has_many :comments

 	mount_uploader :upload, UploadUploader
	# validates :subject, :departament, :category, :mensage, :upload, :status, presence: true

  enum status: { Aberto: '0', Aguardando: '1', Finalizado: '2', Cancelado: '3' }

  before_create :set_active_status

  def set_active_status
    self.status = Myticket.statuses[:active]
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['subject LIKE ? OR category LIKE', "%#{search}"])
    else
      all
    end
  end

end
