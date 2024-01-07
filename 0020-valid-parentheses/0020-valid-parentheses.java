class Solution {
    public boolean isValid(String s) {
        
        HashMap<Character,Character> ms = new HashMap<>();
        ms.put('(',')');
        ms.put('{','}');
        ms.put('[',']');
        Stack<Character> charStack = new Stack<>();
        for (char key : s.toCharArray()) {
            if (ms.containsKey(key)) {
                charStack.push(key);
            } else {
                if (charStack.isEmpty()) {
                    return false;
                }
                char popped = charStack.pop();
                if (!(ms.get(popped) == key)) {
                    return false;
                }
            }
        }
        return charStack.isEmpty() ? true : false;
    }
}