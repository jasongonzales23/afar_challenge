class Highlight < ActiveRecord::Base
  attr_accessible :description, :title
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
end
