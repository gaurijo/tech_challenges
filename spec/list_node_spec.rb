# input: 2 sorted linked lists (ascending order, never empty)
# output: single linked list of elements in ascending order [array]
require 'pry'
require './lib/list_node'
RSpec.describe ListNode do 
  before :each do 
    @list1 = ListNode.new(1)
  end

  it "exists and has attributes" do 
    expect(@list1).to be_a(ListNode)
    expect(@list1.val).to eq(1)
  end

  it "can merge two sorted linked lists" do 
    @list1.next = ListNode.new(3)
    @list1.next.next = ListNode.new(5)
    @list2 = ListNode.new(2)
    @list2.next = ListNode.new(4)
    @list2.next.next = ListNode.new(6)

    expect(merge_two_sorted_linked_lists(@list1, @list2)).to eq([1, 2, 3, 4, 5, 6])
  end
end