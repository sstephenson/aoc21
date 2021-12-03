{
  bits[NR] = $(column)
  lines[NR] = $0
  sum += $(column)
}

END {
  if (NR == 1) {
    print lines[NR]
    exit
  }

  threshold = NR / 2
  affinity = sum >= threshold ? bit : !bit
  for (i = 1; i <= NR; i++) {
    if (bits[i] == affinity) {
      print lines[i]
    }
  }
}
