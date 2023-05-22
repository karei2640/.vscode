class Queue
    def initialize
      @queue = []
    end
  
    def enqueue(element)
      @queue.push(element)
    end
  
    def dequeue
      @queue.shift
    end
  
    def peek
      @queue.first
    end
  
    def empty?
      @queue.empty?
    end
  
    def size
      @queue.size
    end
  end
  queue = Queue.new

queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)

puts queue.dequeue  # 出力: 1
puts queue.peek  # 出力: 2
puts queue.empty?  # 出力: false
puts queue.size  # 出力: 2
