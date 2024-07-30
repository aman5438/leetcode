# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    triangle = []
    (row_index+1).times do |i|
        row = [1] * (i+1)
        (1...i).each do |j|
            row[j] = triangle[i-1][j-1] + triangle[i-1][j]
        end
        triangle << row
    end
    return triangle.last
end