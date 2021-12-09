END {
  for (i = 1; i <= NR; i++) {
    for (j = 1; j <= width; j++) {
      point = read_height(i, j)
      above = read_height(i - 1, j)
      below = read_height(i + 1, j)
      left  = read_height(i, j - 1)
      right = read_height(i, j + 1)

      if (point < above && point < below && point < left && point < right) {
        low_points[i "," j] = point
      }
    }
  }
}
