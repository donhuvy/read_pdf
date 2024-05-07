require 'rubygems'
require 'pdf-reader'

reader = PDF::Reader.new("C:/thisinh.pdf")

reader.pages.each do |page|
    puts " **************** Page TEXT *********************************"
    puts page.text
    puts " **************** END Page TEXT *********************************"
end

# To read specific page text.
puts "total page available in pdf #{reader.page_count}"

puts "#{reader.pages[0].text}"

if reader.pages[0].text.include? "A number of natural states of water exist."
    puts "content found"
else
    puts "not found"
end