{
  size = length($1)
  if (size > width) {
    width = size
  }

  for (j = 1; j <= size; j++) {
    map[NR "," j] = int(substr($1, j, 1))
  }
}

function read_height(i, j) {
  if (i < 1 || i > NR || j < 1 || j > width) {
    return 9
  } else {
    return map[i "," j]
  }
}
