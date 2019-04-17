f = File.new("/paragraph.txt", "w")
f.puts("After the Lord Stanley of Preston was appointed by Queen Victoria as Governor General of Canada on June 11, 1888, he and his family became highly enthusiastic about ice hockey. Stanley was first exposed to the game at Montreal's 1889 Winter Carnival, where he saw the Montreal Victorias play the Montreal Hockey Club. The Montreal Gazette reported that he "'"expressed his great delight with the game of hockey and the expertise of the players"'". During that time, organized ice hockey in Canada was still in its infancy and only Montreal and Ottawa had anything resembling leagues.")

f.close

def self.calcARI(filename)
lines = File.readlines(filename)
text = lines.join
puts text


characters = text.count('a-z' + 'A-Z' + '0-9' + ',' + '"' + '.' + '!' + '?' + "'")
words = text.count(' ') + 1
sentences = text.count('.' + '!' + '?')

ari = 4.71*(characters/words) + 0.5*(words/sentences) - 21.43


case ari.round(0)
when 1
arigrade = "5-6 (Kindergarten)"
when 2
arigrade = "6-7 (First/Second Grade)"
when 3
arigrade = "7-9 (Third Grade)"
when 4
arigrade = "9-10 (Fourth Grade)"
when 5
arigrade = "10-11 (Fifth Grade)"
when 6
arigrade = "11-12 (Sixth Grade)"
when 7
arigrade = "12-13 (Seventh Grade)"
when 8
arigrade = "13-14 (Eigth Grade)"
when 9
arigrade = "14-15 (Ninth Grade)"
when 10
arigrade = "15-16 (Tenth Grade)"
when 11
arigrade = "16-17 (Eleventh Grade)"
when 12
arigrade = "17-18 (Twelfth Grade)"
when 13
arigrade = "18-24 (College Student)"
when 14
arigrade = "24+ (Professor)"
end


puts "Total # of characters: #{characters}"
puts "Total # of words: #{words}"
puts "Total # of sentences: #{sentences}"
puts "Automated Readability Index: #{ari.round(1)}, #{arigrade}"

end

calcARI("/paragraph.txt")