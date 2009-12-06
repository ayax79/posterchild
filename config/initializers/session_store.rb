# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_posterchild_session',
  :secret      => 'ea0250243e67f32f70ebca27d50bebc7c9c8882653cfbdddda7af2eeff20bb9513adf5d7e5265e5a779f6cbac5de445ee486a69072cc8b89406123f4c1086a63'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
