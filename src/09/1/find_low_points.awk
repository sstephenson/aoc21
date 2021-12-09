END {
  for (i = 1; i <= NR; i++) {
    for (j = 1; j <= width; j++) {
      point = map[i, j]
      above = i <= 1     ? 10 : map[i - 1, j]
      below = i >= NR    ? 10 : map[i + 1, j]
      left  = j <= 1     ? 10 : map[i, j - 1]
      right = j >= width ? 10 : map[i, j + 1]

      if (point < above && point < below && point < left && point < right) {
        low_points[i, j] = point
      }
    }
  }
}
