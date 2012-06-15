class Countries < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true,
                   :length => {:minimun => 1, :maximum =>15}
                   
  def valid_code
   self.errors[:code] << "can't filled by 'indonesia, filled with id, usa for united states, or frc for french'" if code == 'indonesia'
  end 
end
