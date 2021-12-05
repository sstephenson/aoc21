row_number() == 1 {
  split("", cols)
  bingo = 0
  unmarked = 0
}

NF == size {
  row = 0

  for (i = 1; i <= size; i++) {
    value = int($i)
    marked = (value == number) || ($i ~ /!/)
    cols[i] += marked
    row += marked

    if (marked) {
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

row_number() == size + 1 {
  for (i = 1; i <= size; i++) {
    if (cols[i] == size) {
      bingo = 1
    }
  }

  print unmarked (bingo ? "!" : "")
}

function row_number() {
  return ((NR - 1) % (size + 1)) + 1
}
