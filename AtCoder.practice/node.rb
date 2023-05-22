class Node
    attr_accessor :data, :next
  
    def initialize(data)
      @data = data
      @next = nil
    end
  end
  
  class LinkedList
    def initialize
      @head = nil
    end
  
    def insert(data)
      new_node = Node.new(data)
  
      if @head.nil?
        @head = new_node
      else
        current = @head
        while current.next
          current = current.next
        end
        current.next = new_node
      end
    end
  
    def delete(data)
      if @head.nil?
        return
      elsif @head.data == data
        @head = @head.next
      else
        current = @head
        while current.next && current.next.data != data
          current = current.next
        end
        if current.next
          current.next = current.next.next
        end
      end
    end
  
    def reverse
      current = @head
      prev = nil
  
      while current
        next_node = current.next
        current.next = prev
        prev = current
        current = next_node
      end
  
      @head = prev
    end
  
    def display
      current = @head
      while current
        puts current.data
        current = current.next
      end
    end
  end

list = LinkedList.new

list.insert(1)
list.insert(2)
list.insert(3)

list.display  # 出力: 1 2 3

list.delete(2)

list.display  # 出力: 1 3

list.reverse

list.display  # 出力: 3 1
