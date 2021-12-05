$2 == "->" {
  split($1, a, ",")
  split($3, b, ",")

  if (a[1] == b[1]) {
    line(a[1] ",%d" "\n", a[2], b[2])
  } else if (a[2] == b[2]) {
    line("%d," a[2] "\n", a[1], b[1])
  }
}

function line(format, a, b,  from, to, i) {
  from = a < b ? a : b
  to = a < b ? b : a

  for (i = from; i <= to; i++) {
    printf(format, i)
  }
}
