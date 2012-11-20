class UserAgent < ActiveRecord::Base
  attr_accessible :last_seen_at, :original, :visits
end
