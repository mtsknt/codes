N, M = gets.chomp.split(' ').map(&:to_i)
lights = gets.chomp.split(' ').map(&:to_i)
Q = gets.to_i

Q.times do
    sp, ep = gets.chomp.split(' ').map(&:to_i)
    length = [*sp..ep].size
    sum = 0
    
    lights[(sp - 1)...ep].each do |num|
        sum += num
    end
    
    avg = sum / length.to_f
    
    if avg < M
        dif = (M - avg).ceil
        
        length.times do |i|
            lights[sp - 1 + i] += dif
        end
    end
end
