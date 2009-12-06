class Post < ActiveRecord::Base
  has_one :user
  has_one :friend
end
