{
  for (i = 2; i <= window_size; i++) {
    window[i - 1] = window[i]
  }
  window[window_size] = $1
}

NR >= window_size {
  for (i = 1; i <= window_size; i++) {
    printf("%s%s", window[i], OFS)
  }
  printf("\n")
}
