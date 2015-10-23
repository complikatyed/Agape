class Prayer < ActiveRecord::Base

  def self.recent_posts
    Prayer.where("created_at >= ?", 1.week.ago.utc).order("created_at DESC")
  end

  def title=(new_title)
    write_attribute(:title, new_title.upcase)
  end

end
