require 'nokogiri'
require 'open-uri'

# html = open("https://flatironschool.com/")
def scraper
doc =Nokogiri::HTML(open("https://flatironschool.com/"))
course_doc =Nokogiri::HTML(open("https://flatironschool.com/our-courses/"))
puts doc.css(".headline-26OIBN").text
course_titles = course_doc.css(".title-oE5vT4")
courses = course_titles.map{|course| course.text}
puts courses
end

scraper