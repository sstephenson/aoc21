END {
  while (1) {
    step()
    steps++
    full = 1

    for (key in map) {
      if (!(key in flashed)) {
        full = 0
      }
    }

    if (full) {
      print steps
      break
    }
  }
}
