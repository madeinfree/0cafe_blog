class Epost < ActiveRecord::Base
  validates :title, :content, :tag, :presence => true
  has_many :comments 
end
