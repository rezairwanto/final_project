class User < ActiveRecord::Base

  attr_accessible :email, :password, :password_confirmation, :age, :address
  has_many :article, :dependent => :destroy,
                      :foreign_key => "user_id",
                      :conditions => "title like '%share%'"

  #validates :first_name, :presence => true,
   #                      :length =>{:minimun => 1, :maximum =>20}
                        
  #validates :last_name, :presence => true,
   #                      :length => {:minimun => 1, :maximum =>20}                    

  #validates :username, :presence => true,
   #                    :length => {:minimum => 1, :maximum => 254},
    #                   :uniqueness => true
  
  attr_accessor :password
  before_save :encrypt_password

  validates :password, :presence => {:on => :create},
                       :confirmation => true
  
  validates :email, :presence => true,
                    :length => {:minimum => 1, :maximum => 254},
                    :uniqueness => true


  def encrypt_password
    if password.present?
       self.password_salt = BCrypt::Engine.generate_salt
       self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(email, password)
  user = find_by_email(email)
  if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
    user
  else
    nil
  end
  end

  def show_full_name
    "#{self.first_name} #{self.last_name}"
  end

  def is_admin?
    if self.email == 'reza.irwanto@wgs.co.id'
      true
    else
      false
    end
  end 


end
