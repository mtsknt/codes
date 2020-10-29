chars = gets.chomp.split('')
count = 0
answer = 0

chars.each do |char|
    if char == '<'
        count += 10
    elsif char == '/'
        count += 1
    elsif char == '+'
        answer += count
        count = 0
    end
end

p answer += count
    
