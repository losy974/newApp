# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.


 require 'securerandom'
def secure_token 
token_file = Rails.root.join('.secret')
 if File.exist?(token_file) 
 # Use the existing token. 
 File.read(token_file).chomp 
 else 
 # Generate a new token and store it in 
 token_file. token = SecureRandom.hex(64) 
 File.write(token_file, token) 
 token 
 end 
 end
CourseManagement::Application.config.secret_key_base = 'c44af0bf19499dce6ac3381b14803b7c9fdd64c5aa1279ade67790eefcf9efd6f8d6b23a2a6d1f64a0ebaa33c936034158b9cfa14c58df2cf09f54535d37166f'

