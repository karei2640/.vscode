class Stack
    def initialize
      @stack = []
    end
  
    def push(element)
      @stack.push(element)
    end
  
    def pop
      @stack.pop
    end
  
    def peek
      @stack.last
    end
  
    def empty?
      @stack.empty?
    end
  
    def size
      @stack.size
    end
  end
  
  stack = Stack.new

  stack.push(1)
  stack.push(2)
  stack.push(3)
  
  puts stack.pop  # 結果: 3
  puts stack.peek  # 結果: 2
  puts stack.empty?  # 結果: false
  puts stack.size  # 結果: 2
  