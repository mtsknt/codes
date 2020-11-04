H, W = gets.chomp.split(' ').map(&:to_i)

H.times do
    answer = Array.new
    line = gets.chomp.split(' ').map(&:to_i)
    W.times do |i|
        answer << (line[i] >= 128 ? 1 : 0)
    end
    puts answer.join(' ')
end

