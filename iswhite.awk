/Histogram:/ {
  inhisto=1
}
inhisto && /[[:digit:]]+: \([ [:digit:]]{3},[ [:digit:]]{3},[ [:digit:]]{3}\) #/ {
  if ($0 !~ /#FFFFFF white/) { nonwhite=1 }
}
/Rendering intent/ {
  inhisto=0
}
/Colors: / {
  ncolors=$2
}
END {
  if (ncolors == 1 && nonwhite == 0) { exit 0 } else { exit 1 }
}