N, H, W, K = gets.chomp.split(' ').map(&:to_i)
board = Array.new
x = W - 1
y = H - 1

(N * N).times do
    board << '.'
end

def getIndex(x, y)
    y * N + x 
end

def onBoard?(pos_now, pos_next)
    return false if pos_now % N == 0 && pos_next % N == N - 1
    return false if pos_now % N == 7 && pos_next % N == 0
    return false if pos_next < 0
    return false if pos_next >= N * N
    return true
end

board[getIndex(x, y)] = 0

K.times do |k|
    board.each.with_index do |cell, i|
        if cell == k 
            board[i + 1] = k + 1 if onBoard?(i, i + 1) || board[i + 1] == '.'
            board[i - 1] = k + 1 if onBoard?(i, i - 1) || board[i - 1] == '.'
            board[i + N] = k + 1 if onBoard?(i, i + N) || board[i + N] == '.'
            board[i - N] = k + 1 if onBoard?(i, i - N) || board[i - N] == '.'
            
            index = i
            while onBoard?(index, index - N - 1)
                index =  index - N - 1
                board[index] = k + 1 if board[index] == '.'
            end
            
            index = i
            while onBoard?(index, index - N + 1)
                index =  index - N + 1
                board[index] = k + 1 if board[index] == '.'
            end
            
            index = i
            while onBoard?(index, index + N - 1)
                index =  index + N - 1
                board[index] = k + 1 if board[index] == '.'
            end
            
            index = i
            while onBoard?(index, index + N + 1)
                index =  index + N + 1
                board[index] = k + 1 if board[index] == '.'
            end
        end 
    end
end

answer = 0

board.each do |cell|
    answer += 1 if cell != '.'
end

p answer
