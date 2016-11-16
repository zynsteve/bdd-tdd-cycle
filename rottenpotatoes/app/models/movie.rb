class Movie < ActiveRecord::Base

  attr_accessible :title, :rating, :description, :release_date, :director

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.find_movies_same_director(id)
    return self.find_all_by_director(self.find(id).director)
  end
  
end

