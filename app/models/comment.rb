class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }
  def how_many_days_ago
    current_date = DateTime.now
    comment_date = created_at
    return (current_date.to_date - comment_date.to_date).to_i
  end
end