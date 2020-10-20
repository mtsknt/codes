K, N = gets.chomp.split(' ').map(&:to_i)
unit = 100 / N

def rank(score)
    if score >= 80
        puts 'A'
    elsif score >= 70
        puts 'B'
    elsif score >= 60
        puts 'C'
    else
        puts 'D'
    end
end
    
K.times do
    day, correct = gets.chomp.split(' ').map(&:to_i)
    score = correct * unit
    if day >= 10
        rank(0)
    elsif day > 0
        rank(score * 0.8)
    else
        rank(score)
    end
end
