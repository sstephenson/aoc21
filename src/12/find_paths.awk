END {
  for (edge in edges) {
    if (edge_has_node(edge, "start")) {
      find_paths_from(edge)
    }
  }
}

function find_paths_from(edge,  memo) {
  walk(edge, ",start", 0)
}

function walk(edge, path, flag,  candidate, last_node, memo, node) {
  last_node = path
  sub(/.*,/, "", last_node)

  node = edge "-"
  sub("-" last_node "-", "", node)
  sub("-", "", node)

  if (node == "start") {
    return
  }

  if (node == "end") {
    print substr(path, 2) "," node
    return
  }

  if ((path ",") ~ ("," node ",")) {
    memo["flag"] = flag
    if (can_revisit(node, path, memo)) {
      flag = memo["flag"]
    } else {
      return
    }
  }

  for (candidate in edges) {
    if (edge_has_node(candidate, node)) {
      walk(candidate, path "," node, flag)
    }
  }
}
