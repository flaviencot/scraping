require 'rubygems'
require 'nokogiri'
require 'open-uri'

PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html"
page = Nokogiri::HTML(URI.open(PAGE_URL))   
#puts page.class   # => Nokogiri::HTML::Document
#puts page.css("title")[0].name   # => title
#puts page.css("title")[0].text   # => My webpage

#links = page.css("a")
#puts links.length   # => 7
#puts links[0].text   # => Click here
#puts links[0]["href"] # => http://www.google.com

#1 news_links = page.css("a").select{|link| link['data-category'] == "news"}
#1 news_links = page.css('p').css("a[data-category=news]").css("strong").select{|link| link['data-category'] == "news"}
#2 news_links.each{|link| puts link['href'] }
#1 news_links = page.css("div#references a")
#2 news_links.each{|link| puts "#{link.text}\t#{link['href']}"} 
news_links = page.css("div#references a")
news_links.each{|link| puts "#{link.text}\t#{link['href']}"}               

puts news_links #=>   Array 