N, M = gets.chomp.split(' ').map(&:to_i)
image = []
answer = []

N.times do
    image << gets.chomp.split(' ').map(&:to_i)
end

(N/M).times do |i|
    (N/M).times do
        tmp = []
        M.times do |j|
                tmp << image[i * M + j].slice!(0...M)
        end
        answer << tmp.flatten
    end
end

answer = answer.map{ |pixcels| (pixcels.inject(0){ |sum, pixcel| sum += pixcel } / pixcels.size).floor }

until answer == [] do
    puts answer.slice!(0...(N / M)).join(' ')
end
