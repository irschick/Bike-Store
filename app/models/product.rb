class Product < ActiveRecord::Base
  require 'pry'
  has_many :orders
  has_many :comments
  def first_rating
    comments.first.rating
  end
  def highest_rating_comment
    if comments.nil?
      puts 'nill comments'
      return ''
    end
    return comments.rating_desc.first
  end
  def lowest_rating_comment
    comments.rating_asc.first
  end
  def average_rating
    comments.average(:rating).to_f
  end
  def list_comments
    return comments
  end

  def highest_rating_comment_rating
    puts "high"
    # highest_rating_comment.rating
  end

  def lowest_rating_comment_rating
    puts "low"
    # lowest_rating_comment.rating
  end

end
