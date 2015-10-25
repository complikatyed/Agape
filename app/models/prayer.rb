class Prayer < ActiveRecord::Base

  def self.recent_posts
    Prayer.where("created_at >= ?", 1.week.ago.utc).order("created_at DESC")
  end


end
