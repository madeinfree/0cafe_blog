class Epost < ActiveRecord::Base
  validates :title, :content, :tag, :presence => true
end
