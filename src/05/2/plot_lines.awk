$2 == "->" {
  split($1, a, ",")
  split($3, b, ",")
  line(a[1], a[2], b[1], b[2])
}

function line(x1, y1, x2, y2,  len, dx, dy) {
  len = abs(x1 == x2 ? y2 - y1 : x2 - x1)
  dx = unit(x2 - x1)
  dy = unit(y2 - y1)

  while (len >= 0) {
    printf("%d,%d\n", x1, y1)
    x1 += dx
    y1 += dy
    len--
  }
}

function abs(n) {
  return n < 0 ? -n : n
}

function unit(n) {
  return n < 0 ? -1 : n == 0 ? 0 : 1
}
