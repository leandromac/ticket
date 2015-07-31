class Comment < ActiveRecord::Base
  belongs_to :myticket
  belongs_to :user
end
