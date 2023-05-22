class Graph
    def initialize
      @graph = {}
    end
  
    def add_edge(vertex, edges)
      @graph[vertex] = edges
    end
  
    def dfs(start_vertex, target)
      visited = {}
      result = dfs_recursive(start_vertex, target, visited)
      return result ? "#{target} found!" : "#{target} not found!"
    end
  
    def dfs_recursive(vertex, target, visited)
      return false if visited[vertex]
  
      visited[vertex] = true
      return true if vertex == target
  
      @graph[vertex].each do |neighbor|
        result = dfs_recursive(neighbor, target, visited)
        return true if result
      end
  
      return false
    end
  
    def bfs(start_vertex, target)
      queue = [start_vertex]
      visited = {}
  
      while !queue.empty?
        current_vertex = queue.shift
        return "#{target} found!" if current_vertex == target
  
        visited[current_vertex] = true
        @graph[current_vertex].each do |neighbor|
          if !visited[neighbor]
            queue << neighbor
            visited[neighbor] = true
          end
        end
      end
  
      return "#{target} not found!"
    end
  end
  
  graph = Graph.new

  graph.add_edge("A", ["B", "C"])
  graph.add_edge("B", ["D", "E"])
  graph.add_edge("C", ["F"])
  graph.add_edge("D", [])
  graph.add_edge("E", [])
  graph.add_edge("F", [])
  
  puts graph.dfs("A", "F")  # 出力: F found!
  puts graph.bfs("A", "G")  # 出力: G not found!
  
  class Graph
    def initialize
      @adjacency_list = {}
    end
  
    def add_edge(from, to)
      @adjacency_list[from] ||= []
      @adjacency_list[from] << to
    end
  
    def topological_sort
      visited = {}
      result = []
  
      @adjacency_list.keys.each do |vertex|
        dfs(vertex, visited, result) unless visited[vertex]
      end
  
      result.reverse
    end
  
    private
  
    def dfs(vertex, visited, result)
      visited[vertex] = true
  
      @adjacency_list[vertex].each do |neighbor|
        dfs(neighbor, visited, result) unless visited[neighbor]
      end
  
      result << vertex
    end
  end
  
  class Graph
    def initialize
      @adjacency_list = {}
    end
  
    def add_edge(from, to)
      @adjacency_list[from] ||= []
      @adjacency_list[from] << to
    end
  
    def topological_sort
      visited = {}
      result = []
  
      @adjacency_list.keys.each do |vertex|
        dfs(vertex, visited, result) unless visited[vertex]
      end
  
      result.reverse
    end
  
    private
  
    def dfs(vertex, visited, result)
      visited[vertex] = true
  
      @adjacency_list[vertex].each do |neighbor|
        dfs(neighbor, visited, result) unless visited[neighbor]
      end
  
      result << vertex
    end
  end

  class Node
    attr_accessor :value, :next
  
    def initialize(value)
      @value = value
      @next = nil
    end
  end
  
  class LinkedList
    attr_accessor :head
  
    def initialize
      @head = nil
    end
  
    def append(value)
      new_node = Node.new(value)
  
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
  
    def delete(value)
      return if @head.nil?
  
      if @head.value == value
        @head = @head.next
      else
        current = @head
        while current.next && current.next.value != value
          current = current.next
        end
        if current.next
          current.next = current.next.next
        end
      end
    end
  
    def reverse
      return if @head.nil?
  
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
        puts current.value
        current = current.next
      end
    end
  end
  
  # 例として、単方向連結リスト 1 -> 2 -> 3 -> 4 -> 5 を作成する場合
  linked_list = LinkedList.new
  linked_list.append(1)
  linked_list.append(2)
  linked_list.append(3)
  linked_list.append(4)
  linked_list.append(5)
  
  # 反転前のリストを表示
  puts "反転前のリスト:"
  linked_list.display
  
  # リストを反転
  linked_list.reverse
  
  # 反転後のリストを表示
  puts "反転後のリスト:"
  linked_list.display
  