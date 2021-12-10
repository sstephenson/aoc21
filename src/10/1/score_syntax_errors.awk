BEGIN {
  pairs["("] = ")"
  pairs["["] = "]"
  pairs["{"] = "}"
  pairs["<"] = ">"

  scores[")"] = 3
  scores["]"] = 57
  scores["}"] = 1197
  scores[">"] = 25137
}

{
  stack = ""
  for (i = 1; i <= NF; i++) {
    if ($i in pairs) {
      push(pairs[$i])
    } else {
      value = pop()
      if (value != $i) {
        sum += scores[$i]
        next
      }
    }
  }
}

END {
  print sum
}

function push(value) {
  stack = value stack
}

function pop(size) {
  size = length(stack)
  if (size) {
    value = substr(stack, 1, 1)
    stack = substr(stack, 2)
    return value
  }
}
