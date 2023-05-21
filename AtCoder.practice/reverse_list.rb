class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

def reverse_list(head)
  current = head
  prev = nil

  while current
    next_node = current.next
    current.next = prev
    prev = current
    current = next_node
  end

  return prev
end

# 例として、単方向連結リスト 1 -> 2 -> 3 -> 4 -> 5 を逆順にする場合
node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

reversed_head = reverse_list(node1)

# 逆順になったリストの要素を表示する
current = reversed_head
while current
  puts current.data
  current = current.next
end
