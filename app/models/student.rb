class Student < ActiveRecord::Base
  attr_accessible :id, :name, :tagline, :bio, :treehouse_profile, :linkedin, :twitter, :github, :quote

end
