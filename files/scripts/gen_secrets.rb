#!/usr/bin/env ruby
require 'securerandom'
require 'yaml'

file_path = ARGV[0]

content = {
  'production' => {
    'secret_key_base' => SecureRandom.hex(40),
    'database_cipher_key' => SecureRandom.hex(40)
  }
}.to_yaml

File.write file_path, content
