# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  tagline    :string(255)
#  bio        :string(255)
#  linkedin   :string(255)
#  twitter    :string(255)
#  github     :string(255)
#  quote      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'nokogiri'
require 'open-uri'

class Student < ActiveRecord::Base
  attr_accessible :bio, :github, :linkedin, :name, :quote, :tagline, :excerpt, :twitter

end
