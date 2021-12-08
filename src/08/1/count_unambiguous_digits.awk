{
  for (i = 1; i <= NF; i++) {
    size = length($i)
    if (size == 2 || size == 3 || size == 4 || size == 7) {
      count += 1
    }
  }
}

END {
  print count
}
