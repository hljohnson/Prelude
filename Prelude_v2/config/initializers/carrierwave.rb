CarrierWave.configure do |config|
  #config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['S3_KEY'],                # required
    aws_secret_access_key: ENV['S3_SECRET']              # required
  }
  #config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_directory = ENV['S3_BUCKET']

end
