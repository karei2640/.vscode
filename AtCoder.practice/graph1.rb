# グラフの実装
class Graph
  attr_accessor :adjacency_list

  def initialize
    @adjacency_list = {}
  end

  def add_vertex(vertex)
    @adjacency_list[vertex] = {}
  end

  def add_edge(vertex1, vertex2, weight)
    @adjacency_list[vertex1][vertex2] = weight
    @adjacency_list[vertex2][vertex1] = weight
  end

  def dijkstra(start_vertex)
    distances = {}
    previous = {}
    unvisited = []

    @adjacency_list.each_key do |vertex|
      distances[vertex] = Float::INFINITY
      previous[vertex] = nil
      unvisited << vertex
    end

    distances[start_vertex] = 0

    while unvisited.any?
      current_vertex = unvisited.min_by { |vertex| distances[vertex] }
      unvisited.delete(current_vertex)

      @adjacency_list[current_vertex].each do |neighbor, weight|
        distance = distances[current_vertex] + weight

        if distance < distances[neighbor]
          distances[neighbor] = distance
          previous[neighbor] = current_vertex
        end
      end
    end

    [distances, previous]
  end
end

# 例として、グラフの作成とダイクストラ法の実行を行う
graph = Graph.new
graph.add_vertex("A")
graph.add_vertex("B")
graph.add_vertex("C")
graph.add_vertex("D")
graph.add_edge("A", "B", 4)
graph.add_edge("A", "C", 2)
graph.add_edge("B", "C", 1)
graph.add_edge("B", "D", 5)
graph.add_edge("C", "D", 8)

distances, previous = graph.dijkstra("A")

puts "最短経路:"
previous.each do |vertex, prev|
  path = [vertex]
  while prev
    path << prev
    prev = previous[prev]
  end
  puts "#{vertex}: #{path.reverse.join(' -> ')} (距離: #{distances[vertex]})"
end
