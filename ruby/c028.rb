N = gets.to_i
count = 0

def getScore(correct, answer)
    dif = 0
    
    correct.size.times do |i|
        if correct[i] != answer[i]
            dif += 1
            return 0 if dif >= 2
        end
    end
    
    return dif == 0 ? 2 : 1
end
    
N.times do
    correct, answer = gets.chomp.split(' ')
    
    if correct.size != answer.size
        next
    else 
        count += getScore(correct, answer)
    end
end

p count
