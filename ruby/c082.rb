N,M = gets.chomp.split(' ').map(&:to_i)
scores_eng = Array.new
scores_jap = Array.new
scores_math = Array.new

N.times do
    eng, jap, math = gets.chomp.split(' ').map(&:to_i)

    scores_eng << eng
    scores_jap << jap
    scores_math << math
end

thld_eng = scores_eng.sort[M-1]
thld_jap = scores_jap.sort[M-1]
thld_math = scores_math.sort[M-1]

N.times do |i|
    count = 0
    count += 1 if scores_eng[i] <= thld_eng
    count += 1 if scores_jap[i] <= thld_jap
    count += 1 if scores_math[i] <= thld_math
    puts count
end
