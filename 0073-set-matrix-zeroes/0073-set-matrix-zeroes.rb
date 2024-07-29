# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
    rows = matrix.size
    cols = matrix[0].size
    
    row_zero = Array.new(rows, false)
    col_zero = Array.new(cols, false)
    
    (0...rows).each do |i|
        (0...cols).each do |j|
            if matrix[i][j] == 0
                row_zero[i] = true
                col_zero[j] = true
            end
        end
    end
    
    (0...rows).each do |i|
        (0...cols).each do |j|
            if  row_zero[i] || col_zero[j]
                matrix[i][j] = 0
            end
        end
    end
    
    return matrix
end