class ListNode 
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def delete_duplicates(head)
  #Given the head of a sorted linked list, delete all duplicates such that each element
  #appears only once. Return the linked list storted.

  head.uniq
end

head = [1,1,2,2,3,3]

p delete_duplicates(head)