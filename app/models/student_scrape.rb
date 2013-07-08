class StudentScrape < ActiveRecord::Base
  # attr_accessible :title, :body

  def self.scrape_index
    doc = Nokogiri::HTML(open('http://students.flatironschool.com/'))
    doc.search('li.home-blog-post').each do |student|
      image = student.search('blog-thumb').text.strip
      name = student.search('div.big-comment a').text.strip
      tagline = student.search('p.home-blog-post-meta').text.strip
      excerpt = student.search('div.excerpt p').text.strip
      Student.create(name: name, tagline: tagline, excerpt: excerpt)
    end
  end

end
