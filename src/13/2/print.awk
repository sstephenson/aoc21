END {
  print_paper()
}

function folded() {
  return
}

function print_paper(  x, y) {
  for (y = 0; y <= max_y; y++) {
    for (x = 0; x <= max_x; x++) {
      printf("%s", paper[x "," y] ? "#" : ".")
    }
    printf("\n")
  }
}
