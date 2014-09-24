for f in `brew list`; do
  brew remove $f -v;
done

