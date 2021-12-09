END {
  for (coord in low_points) {
    split("", basin)
    split(coord, coords, ",")
    walk_basin(coords[1], coords[2], basin)
    print measure_basin(basin)
  }
}

function measure_basin(basin,  size) {
  for (coord in basin) {
    size += 1
  }
  return size
}

function walk_basin(i, j, basin) {
  if (!(i "," j in basin)) {
    height = read_height(i, j)
    if (height < 9) {
      basin[i "," j] = height
      walk_basin(i - 1, j, basin)
      walk_basin(i + 1, j, basin)
      walk_basin(i, j - 1, basin)
      walk_basin(i, j + 1, basin)
    }
  }
}
