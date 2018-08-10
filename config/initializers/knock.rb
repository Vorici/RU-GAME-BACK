Knock.setup do |config|
  # Set how long a login token is valid.
  config.token_lifetime = 1.week
  config.token_signature_algorithm = 'HS256'
  config.token_secret_signature_key = -> { Rails.application.credentials.read }
  config.not_found_exception_class_name = 'ActiveRecord::RecordNotFound'
  config.token_secret_signature_key = -> { Rails.application.credentials.read } 
end