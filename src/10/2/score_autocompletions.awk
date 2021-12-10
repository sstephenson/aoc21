BEGIN {
  scores[")"] = 1
  scores["]"] = 2
  scores["}"] = 3
  scores[">"] = 4
}

{
  score = 0
  while (value = pop()) {
    score *= 5
    score += scores[value]
  }
  print score
}

function error(value) {
  return
}
