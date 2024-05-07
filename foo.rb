require 'rubygems'
require 'spreadsheet'

filename = 'C:\Users\firerose\RubymineProjects\ruby_excel\vy.xls'

book = Spreadsheet.open(filename)

sheet1 = book.worksheet 0

sheet1.each 0 do |row|
    puts "#{row[0]}"
    puts "#{row[1]}"
    puts "#{row[2]}"
end

book.io.close

# Result
# Nguyen Van An
# Lap trinh vien
#
# Tran Thanh Binh
# Bac si
#
# Truong Van Anh
# Ky su co khi