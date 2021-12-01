BEGIN {
  count = -1
}

$1 > previous {
  count++
}

{
  previous = $1
}

END {
  print count
}
