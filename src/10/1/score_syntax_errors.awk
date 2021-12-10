BEGIN {
  scores[")"] = 3
  scores["]"] = 57
  scores["}"] = 1197
  scores[">"] = 25137
}

END {
  print sum
}

function error(value) {
  sum += scores[value]
}
