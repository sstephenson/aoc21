function can_revisit(node, path, memo,  flag) {
  if (node_is_big(node)) {
    return 1
  }

  flag = memo["flag"]
  if (!flag) {
    return memo["flag"] = 1
  }

  return !flag
}
