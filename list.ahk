list(enum) {
  arr := array()
  map := map()

  for (key, val in enum) {
    if (key != A_Index)
      arr := ""
    else
      arr.push(val)

    map[key] := val
  }

  return arr || map
}