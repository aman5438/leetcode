# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    
    new_list = ListNode.new()
    prv_list = new_list
    carry = 0
    while(l1 || l2 || carry != 0)
       y1 = 0
       y2 = 0
       y1 = l1.val if l1
       y2 = l2.val if l2

       sum = y1 + y2 + carry
       carry = sum / 10
       sum = sum % 10

       prv_list.next = ListNode.new(sum)
       prv_list = prv_list.next

       l1 = l1.next if l1
       l2 = l2.next if l2
    end
    return new_list.next
end