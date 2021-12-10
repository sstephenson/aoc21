BEGIN {
  pairs["("] = ")"
  pairs["["] = "]"
  pairs["{"] = "}"
  pairs["<"] = ">"
}

{
  stack = ""
  for (i = 1; i <= NF; i++) {
    if ($i in pairs) {
      push(pairs[$i])
    } else {
      value = pop()
      if (value != $i) {
        error($i)
        next
      }
    }
  }
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
