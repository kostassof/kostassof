require "nokogiri"
require "open-uri"

city = ARGV[0]
url = "https://www.thefork.com/search-refine/#{city}"
file = open(url).read

html_doc = Nokogiri::HTML(file)
html_doc.search(".resultItem-name").each do |element|
  puts element.text
end
