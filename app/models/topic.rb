class Topic < ActiveRecord::Base
  scope :list_filter, ->(tag){where(tag: tag) if tag.present?}
  
  def self.list_filter2(tag)
    if tag.present?    
      where(tag: tag)
    else
      all
    end
  end
  validates :title, :context, :tag, :presence => true
end
