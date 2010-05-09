# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_eventcard_session',
  :secret      => 'adb1025d97e2488b6ef911d054dc35ea997c521d932310020a9cc7c8d1fef11e74205ec46c88594ea751bf9e512c066173446a6b21dbea2b34054fb61a390bd7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
