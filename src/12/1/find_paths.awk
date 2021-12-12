END {
  for (edge in edges) {
    if (edge_has_node(edge, "start")) {
      walk(edge, ",start")
    }
  }
}

function walk(edge, path,  candidate, edge_nodes, i, last_node, node, path_nodes) {
  split(substr(edge, 2), edge_nodes, "-")
  split(substr(path, 2), path_nodes, ",")

  last_node = path_nodes[length(path_nodes)]
  node = edge_nodes[1] == last_node ? edge_nodes[2] : edge_nodes[1]

  if (node == "start") {
    return
  }

  if (node == "end") {
    print substr(path, 2) "," node
    return
  }

  for (i in path_nodes) {
    if (node == path_nodes[i] && !node_is_big(node)) {
      return
    }
  }

  for (candidate in edges) {
    if (edge_has_node(candidate, node)) {
      walk(candidate, path "," node)
    }
  }
}
