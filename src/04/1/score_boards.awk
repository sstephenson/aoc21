NR % (size + 1) == 0 {
  split("", cols)
  bingo = 0
  unmarked = 0
}

NF == size {
  row = 0

  for (i = 1; i <= size; i++) {
    value = int($i)
    matched = value == number || $i ~ /!/
    row += matched
    cols[i] += matched

    if (matched) {
      $i = value "!"
    } else {
      unmarked += value
    }
  }

  if (row == size) {
    bingo = 1
  }

  print
}

NF == 1 && $1 ~ /!/ {
  unmarked = int($1)
}

NR % (size + 1) == size {
  for (i = 1; i <= size; i++) {
    if (cols[i] == size) {
      bingo = 1
      break
    }
  }

  print unmarked (bingo ? "!" : "")
}
