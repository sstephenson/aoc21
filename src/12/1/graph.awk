NF == 2 {
  edges[make_edge($1, $2)] = 1
}

function edge_has_node(edge, node) {
  return (edge "-") ~ ("-" node "-")
}

function node_is_big(node) {
  return node !~ /[a-z]/
}

function make_edge(a, b) {
  return "-" (a < b ? a "-" b : b "-" a)
}
