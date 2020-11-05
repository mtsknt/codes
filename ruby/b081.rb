H, W = gets.chomp.split(' ').map(&:to_i)
dist = Array.new
count = 0

dist << ('.' * (W + 2)).split('')

H.times do
    input = gets.chomp.split('')
    dist << ['.', input, "."].flatten
end

dist << ('.' * (W + 2)).split('')

(H+2).times do |i|
    next if i == 0 || i == (H + 1)
    
    (W+2).times do |j|
        next if j == 0 || j == (W + 1)
    
        if dist[i][j] == '#'
            num = 0
            num += 1 if dist[i - 1][j] == '.'
            num += 1 if dist[i + 1][j] == '.'
            num += 1 if dist[i][j - 1] == '.'
            num += 1 if dist[i][j + 1] == '.'
            count += num
        end
    end
end

p count
