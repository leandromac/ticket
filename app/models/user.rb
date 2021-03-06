class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, # :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :mytickets, foreign_key: 'id_customer'
  has_many :comments

  # validates :email, :name, :phone, :departament, :access, presence: true
  validate :valid_email

  belongs_to :departament

  enum role: [:admin, :technician, :client]

  def valid_email
    unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:email, "is not a valid email")
    end
  end
end
