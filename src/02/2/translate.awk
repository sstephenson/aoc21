$1 ~ /down|forward|up/ {
  print "i=" substr($1, 0, 1) "(" $2 ")"
}
