function flash(i, j) {
  if (i < 1 || i > NR || j < 1 || j > size || i "," j in flashed) {
    return
  }

  flashed[i "," j] = 1
  flashes++

  increase(i - 1, j - 1)
  increase(i - 1, j)
  increase(i - 1, j + 1)
  increase(i, j - 1)
  increase(i, j + 1)
  increase(i + 1, j - 1)
  increase(i + 1, j)
  increase(i + 1, j + 1)
}

function increase(i, j, without_flashing,  value) {
  value = read_energy(i, j)
  if (write_energy(i, j, value + 1) > 9 && !without_flashing) {
    flash(i, j)
  }
}

function step(  i, j) {
  split("", flashed)

  for (i = 1; i <= NR; i++) {
    for (j = 1; j <= size; j++) {
      increase(i, j, 1)
    }
  }

  for (i = 1; i <= NR; i++) {
    for (j = 1; j <= size; j++) {
      if (read_energy(i, j) > 9) {
        flash(i, j)
      }
    }
  }

  for (key in flashed) {
    map[key] = 0
  }
}
