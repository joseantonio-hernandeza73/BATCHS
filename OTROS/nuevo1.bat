local reps 70
forvalues i = 1/`reps' {
  sleep 100
  if `i'==1 _dots 0, title(Loop running) reps(`reps')
  _dots `i' 0
}