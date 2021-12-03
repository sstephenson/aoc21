{
  for (i = 1; i <= NF; i++) {
    bits[i] += $i
  }
}

END {
  threshold = NR / 2
  for (i = 1; i <= NF; i++) {
    bit = bits[i] >= threshold
    gamma = gamma (bit ? "1" : "0")
    epsilon = epsilon (bit ? "0" : "1")
  }
  print gamma, epsilon
}
