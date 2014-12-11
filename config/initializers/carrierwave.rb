CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = "#{Rails.application.secrets.bucket_name}"
  config.aws_acl    = :public_read
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

  config.aws_credentials = {
    access_key_id:     "#{Rails.application.secrets.access_key_id}",
    secret_access_key: "#{Rails.application.secrets.secret_access_key}"
  }
end
