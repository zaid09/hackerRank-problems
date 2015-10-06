from collections import namedtuple

INF = (1 << 31)
UNIT_LENGTH = 6
Edge = namedtuple('Edge', ['src', 'dest'])

def calculate_shortest_distances(node_num, edges, src):
  """Bellman-Ford Algorithm.
     node_num: Number of nodes.
     edges: A list of edges.
     src: Source node."""

  dist = [INF] * (node_num + 1)
  dist[src] = 0
  for _ in range(node_num):
    updated = False
    for edge in edges:
      edge_src, edge_dest = edge
      if dist[edge_src] + UNIT_LENGTH < dist[edge_dest]:
        updated = True
        dist[edge_dest] = dist[edge_src] + UNIT_LENGTH
    
    if not updated:
      break
  
  del dist[src]
  del dist[0]
  return [(-1 if i == INF else i) for i in dist]

if __name__ == '__main__':
  test_case_num = int(raw_input())
  for _ in range(test_case_num):
    edges = []
    node_num, edge_num = map(int, raw_input().split())
    for _ in range(edge_num):
      edge_src, edge_dest = map(int, raw_input().split())
      edges.append(Edge(edge_src, edge_dest))
      edges.append(Edge(edge_dest, edge_src))
    src = int(raw_input())
    dist = calculate_shortest_distances(node_num, edges, src)
    print ' '.join(map(str, dist))
