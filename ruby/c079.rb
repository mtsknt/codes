N, M = gets.chomp.split(' ').map(&:to_i)
card_types = Array.new
flag = false

M.times do |i|
    card_types << (i + 1)
end

N.times do |i|
    card_num = gets.to_i
    card_types.delete(card_num)
    if card_types == []
        p i + 1
        flag = true
        exit
    end
end 

puts 'unlucky' if flag == false
