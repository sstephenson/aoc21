$1 == "down" {
  print "y += " $2
}

$1 == "forward" {
  print "x += " $2
}

$1 == "up" {
  print "y -= " $2
}
