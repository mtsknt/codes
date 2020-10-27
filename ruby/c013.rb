N = gets.to_i
M = gets.to_i
flag = false

M.times do
    room_num = gets
    unless room_num.include?(N.to_s)
        puts room_num
        flag = true
    end
end

puts 'none' if flag == false
