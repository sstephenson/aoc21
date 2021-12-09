$11 == "|" {
  for (i = 1; i <= 10; i++) {
    patterns[i] = normalize($i)
  }

  # If it has 2 digits, it must be 1
  find_by_size(patterns, 2, result)
  record(result[1], 1)

  # If it has 3 digits, it must be 7
  find_by_size(patterns, 3, result)
  record(result[1], 7)

  # If it has 4 digits, it must be 4
  find_by_size(patterns, 4, result)
  record(result[1], 4)

  # If it has 7 digits, it must be 8
  find_by_size(patterns, 7, result)
  record(result[1], 8)

  # If it has 6 digits,
  find_by_size(patterns, 6, result)
  for (i = 1; i <= 3; i++) {
    pattern = result[i]
    # If it has all of the segments of 7,
    if (subset_of(patterns_by_value[7], pattern)) {
      # Then if it has all of the segments of 4,
      if (subset_of(patterns_by_value[4], pattern)) {
        # Then it must be 9
        record(pattern, 9)
      } else {
        # Else it must be 0
        record(pattern, 0)
      }
    } else {
      # Else it must be 6
      record(pattern, 6)
    }
  }

  # If it has 5 digits,
  find_by_size(patterns, 5, result)
  for (i = 1; i <= 3; i++) {
    pattern = result[i]
    # If has all of the segments of 7,
    if (subset_of(patterns_by_value[7], pattern)) {
      # Then it must be 3
      record(pattern, 3)
    } else {
      # Then if it has all but one of the segments of 6,
      if (relative_complement_size(patterns_by_value[6], pattern) == 1) {
        # Then it must be 5
        record(pattern, 5)
      } else {
        # Else it must be 2
        record(pattern, 2)
      }
    }
  }

  sum += sprintf("%01d%01d%01d%01d",
    values_by_pattern[normalize($12)],
    values_by_pattern[normalize($13)],
    values_by_pattern[normalize($14)],
    values_by_pattern[normalize($15)])
}

END {
  print sum
}

function find_by_size(patterns, size, result,  count, key, pattern) {
  split("", result)
  for (key in patterns) {
    pattern = patterns[key]
    if (length(pattern) == size) {
      result[++count] = pattern
    }
  }
  return count
}

function normalize(pattern,  result) {
  pattern ~ /a/ && result = result "a"
  pattern ~ /b/ && result = result "b"
  pattern ~ /c/ && result = result "c"
  pattern ~ /d/ && result = result "d"
  pattern ~ /e/ && result = result "e"
  pattern ~ /f/ && result = result "f"
  pattern ~ /g/ && result = result "g"
  return result
}

function record(pattern, value) {
  patterns_by_value[value] = pattern
  values_by_pattern[pattern] = value
}

function relative_complement_size(left, right,  count, i, size) {
  size = length(left)
  for (i = 1; i <= size; i++) {
    if (right !~ substr(left, i, 1)) {
      count++
    }
  }
  return count
}

function subset_of(left, right) {
  return relative_complement_size(left, right) == 0
}
