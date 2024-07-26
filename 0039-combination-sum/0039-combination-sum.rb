# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  result = []
  find_combinations(candidates, target, [], result, 0)
  result
end

def find_combinations(candidates, target, current_combination, result, start_index)
  if target == 0
    result << current_combination.clone
    return
  end

  if target < 0
    return
  end

  (start_index...candidates.length).each do |i|
    current_combination << candidates[i]
    find_combinations(candidates, target - candidates[i], current_combination, result, i)
    current_combination.pop
  end
end
