class Article < ActiveRecord::Base
   has_many :comment, :dependent => :destroy
   belongs_to :user
   scope :rating_is_above, lambda {|rating| where("rating >= ?", rating) } 
   validates :title, :presence => true,
                     :uniqueness => true,
                     :length => {:minimun => 1, :maximum =>20}
end
