# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require "#{Rails.root}/lib/student_scrape.rb"
scraped_students = StudentScrape.scrape_students.compact
scraped_students.each do |s|
 Student.create(:name => s.name, :tagline => s.tagline, :excerpt => s.excerpt, :twitter => s.twitter, :linkedin => s.linkedin, :github => s.github, :quote => s.quote, :bio => s.bio)

end