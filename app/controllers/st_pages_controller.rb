class StPagesController < ApplicationController
  def about
  end
  def log
    @log = Topic.where(tag: :log)
  end
end
