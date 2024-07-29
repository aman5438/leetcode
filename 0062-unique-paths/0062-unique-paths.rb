# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    
   row = m -1
   col = n - 1
   total = row + col
   return (factorial(total) / (factorial(row) * factorial(total-row)))
end

def factorial(n)
    (1..n).reduce(1,:*)
end