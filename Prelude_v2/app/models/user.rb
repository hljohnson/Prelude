class User < ActiveRecord::Base
  # users belong to bands
  belongs_to :band

  after_create :create_invalid_band
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def create_invalid_band
    b = Band.new({name: nil})
    #saves band without running validations
    b.save(validate: false)

    self.update_attribute(:band_id, b.id)
    #self.band_id = -1
  end

end
