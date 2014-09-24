brew_list=`brew list`

containsElement () {
  local e
  for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
  return 1
}

for f in `brew search`; do
  if [[ $f > "comparepd" ]] && [[ $f != "cppad" ]] && ! containsElement $f `brew list`; then
    brew install -v $f;
  else
    echo Skipping: $f;
fi
done

