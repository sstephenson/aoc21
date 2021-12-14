$1 ~ /,/ {
  split($1, coord, ",")
  mark(coord[1], coord[2])
}

/fold along x=/ {
  sub(/.*=/, "")
  fold_x($1)
  folded()
}

/fold along y=/ {
  sub(/.*=/, "")
  fold_y($1)
  folded()
}

function fold_x(fold,  height, width, x, y) {
  for (y = 0; y <= max_y; y++) {
    paper[fold "," y] = 0
    for (x = 0; x < fold; x++) {
      paper[x "," y] = paper[((fold * 2) - x) "," y] || paper[x "," y]
    }
  }
  max_x = fold - 1
}

function fold_y(fold,  height, width, x, y) {
  for (y = 0; y < fold; y++) {
    for (x = 0; x <= max_x; x++) {
      paper[x "," y] = paper[x "," ((fold * 2) - y)] || paper[x "," y]
    }
  }
  max_y = fold - 1
}

function mark(x, y) {
  paper[x "," y] = 1
  max_x = max(max_x, x)
  max_y = max(max_y, y)
}

function max(a, b) {
  return a > b ? a : b
}
