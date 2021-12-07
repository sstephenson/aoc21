function cost(from, to,  g) {
  g = abs(from - to)
  return ((g * (g + 1)) / 2)
}
