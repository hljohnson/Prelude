class Band < ActiveRecord::Base
  validates :name, presence: true

  has_many :songs
  has_many :users
end
