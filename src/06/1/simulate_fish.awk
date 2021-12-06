{
  if ($1-- == 0) {
    $1 = 6
    spawn++
  }
  print
}

END {
  for (i = 1; i <= spawn; i++) {
    print 8
  }
}
