require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

docs = Nokogiri::HTML(html)