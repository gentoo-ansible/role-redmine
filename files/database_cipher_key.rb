# Sets database_cipher_key from secrets.yml.
# This is quite ugly hack, but avoids patching the sources.

if Redmine::Configuration['database_cipher_key'].blank?
  config = Redmine::Configuration.instance_variable_get('@config')
  config['database_cipher_key'] = Rails.application.secrets.database_cipher_key
end
