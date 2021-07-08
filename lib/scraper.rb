require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")


doc = Nokogiri::HTML(html)
puts doc.css("#header-content > div > h1").inspect

doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC").each {|item| puts item.text}

doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC").each {|item| puts item.attributes}

doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC").first {|item| puts item.inspect}.attr("h1")
