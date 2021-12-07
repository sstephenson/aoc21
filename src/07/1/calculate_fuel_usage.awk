NR == 1 {
  size = NF
  for (j = 1; j <= size; j++) {
    crabs[j] = $j
    if ($j > max) {
      max = $j
    }
  }
}

END {
  for (i = 0; i <= max; i++) {
    sum = 0
    for (j = 1; j <= size; j++) {
      sum += abs(i - crabs[j])
    }
    print sum
  }
}

function abs(value) {
  return value < 0 ? -value : value
}
