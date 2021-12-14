$1 ~ /,/ {
  split($1, coord, ",")
  mark(coord[1], coord[2])
}

/fold along x=/ {
  sub(/.*=/, "")
  fold_x($1)
  print count()
}

/fold along y=/ {
  sub(/.*=/, "")
  fold_y($1)
  print count()
}

function count(  sum, x, y) {
  for (y = 0; y < paper["height"]; y++) {
    for (x = 0; x < paper["width"]; x++) {
      sum += paper[x "," y]
    }
  }
  return sum
}

function fold_x(fold,  height, width, x, y) {
  height = paper["height"]
  width = paper["width"]
  paper["width"] = fold

  for (y = 0; y < height; y++) {
    for (x = 0; x < fold; x++) {
      paper[x "," y] = paper[x "," y] || paper[(width - x - 1) "," y]
    }
  }
}

function fold_y(fold,  height, width, x, y) {
  height = paper["height"]
  width = paper["width"]
  paper["height"] = fold

  for (y = 0; y < fold; y++) {
    for (x = 0; x < width; x++) {
      paper[x "," y] = paper[x "," y] || paper[x "," (height - y - 1)]
    }
  }
}

function mark(x, y) {
  paper[x "," y] = 1
  paper["width"] = max(paper["width"], x + 1)
  paper["height"] = max(paper["height"], y + 1)
}

function max(a, b) {
  return a > b ? a : b
}
