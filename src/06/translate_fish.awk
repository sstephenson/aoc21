{
  fish[$1]++
}

END {
  for (i = 1; i <= 8; i++) {
    printf("f[%d] = %d\n", i, fish[i])
  }
  printf("c(%d)\n", n)
}
