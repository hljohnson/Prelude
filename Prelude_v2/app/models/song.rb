class Song < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :artist, presence: true

  mount_uploader :chart, ::ChartUploader
  mount_uploader :mp3, ::Mp3Uploader

  # songs belong to bands
  belongs_to :band
end
