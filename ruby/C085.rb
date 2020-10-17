# str.ord
# "a".ord => 97

tor = gets.chomp.split(' ').map(&:to_i)
str = gets.chomp.split('')
answer = Array.new

str.each do |char|
  key_index = char.ord - 97
  if tor[key_index] != 0
    answer << char
    tor[key_index] -= 1
  end
end

puts answer.join
