# @param {String} s
# @return {Boolean}
def is_valid(s)
   stack = []
    brackets = { ')' => '(', ']' => '[', '}' => '{' }
    s.each_char do |char|
      if brackets.values.include?(char)
        stack.push(char)
      elsif brackets.keys.include?(char)
        return false if stack.empty? || stack.pop != brackets[char]
      else
        return false
      end
    end
    return stack.empty? 
end