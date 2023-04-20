require 'open-uri'
require 'nokogiri'

def scraping
array =  []
array2 = []
page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/'))
abc = page.xpath('//tr/td/div[@class="sc-aef7b723-0 LCOyB"]/a[@class="cmc-link"]/div[@class = "sc-aef7b723-0 sc-8497df48-0 iULUNk"]/div[@class ="sc-aef7b723-0 sc-8497df48-1 iATetF name-area "]/div[@class="sc-8497df48-2 gtUrBF"]/p[@class="sc-4984dd93-0 iqdbQL coin-item-symbol"]')
array = abc.map{|node|node.text}

abcd = page.xpath('//tr/td/div[@class="sc-cadad039-0 clgqXO"]')
array2 = abcd.map{|node|node.text}

my_hash = Hash[array.zip array2]
puts my_hash
end
puts scraping