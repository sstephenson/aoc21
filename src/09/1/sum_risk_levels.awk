END {
  for (coord in low_points) {
    risk_level += (low_points[coord] + 1)
  }
  print risk_level
}
