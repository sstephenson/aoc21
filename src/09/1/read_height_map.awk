{
  size = length($1)
  if (size > width) {
    width = size
  }

  for (j = 1; j <= size; j++) {
    map[NR, j] = int(substr($1, j, 1))
  }
}
