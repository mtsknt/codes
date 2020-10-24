M, N = gets.chomp.split(' ').map(&:to_i)
count = 0

(M-1).downto(1) do |i|
    (N-1).downto(1) do |j|
        hyp = Math.sqrt(i * i + j * j)
        if hyp % hyp.to_int == 0
            count += 1
        end
    end
end

p count
