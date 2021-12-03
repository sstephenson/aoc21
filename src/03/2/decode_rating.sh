source recursively_filter.sh

decode_rating() {
  bit="$1"
  shift

  read -r first_line
  bit_width="${#first_line}"

  { echo "$first_line"
    cat
  } | sed -f ../split_bits.sed \
    | recursively_filter 1 "$bit_width" filter_by_bit "$bit" \
    | sed -f ../join_bits.sed
}

filter_by_bit() {
  awk -f filter_by_bit.awk -v bit="$1" -v column="$2"
}
