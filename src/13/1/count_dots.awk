function count(  sum, x, y) {
  for (y = 0; y <= max_y; y++) {
    for (x = 0; x <= max_x; x++) {
      sum += paper[x "," y]
    }
  }
  return sum
}

function folded() {
  print count()
  exit
}
