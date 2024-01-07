class Solution {
    public String longestCommonPrefix(String[] strs) {
    Arrays.sort(strs);
    String first_string = strs[0], last_string = strs[strs.length -1];
    int i = 0;
    while (i < first_string.length() && first_string.charAt(i) == last_string.charAt(i))
    {
        i++;
    }
    return i == 0 ? "" : first_string.substring(0, i);
        
    }
}