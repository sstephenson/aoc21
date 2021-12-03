recursively_filter() {
  index="$1"
  shift
  upto="$1"
  shift

  "$@" "$index" |
    if [ $index -lt $upto ]; then
      recursively_filter $((index+1)) $upto "$@"
    else
      cat
    fi
}
