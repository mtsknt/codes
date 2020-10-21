N = gets.to_i
count = 0

def passSci?(score)
    score[1] + score[2] >= 160 ? true : false
end

def passLing?(score)
    score[3] + score[4] >= 160 ? true : false
end

N.times do
    course, *score = gets.chomp.split(' ')
    score = score.map(&:to_i)
    
    if course == "l"
        count += 1 if score.sum >= 350 && passLing?(score)
    elsif course == "s"
        count += 1 if score.sum >= 350 && passSci?(score)
    end
end
