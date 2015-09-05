class Departament < ActiveRecord::Base
  has_many :users
  has_many :categories
  validates :title, presence: true
end
