class Departament < ActiveRecord::Base
  has_many :categories, :user
  validates :title, presence: true
end
