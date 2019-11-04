list(enum) {
  arr := array()
  map := map()

  for (key, val in enum) {
    if (key != A_Index) ; If the object is not linear:
      arr := ""         ; make arr falsy and free its memory.
    else                ; Otherwise:
      arr.push(val)     ; push to arr.

    map[key] := val     ; In either case, add to map.
  }

  return arr || map     ; Return arr if it has not been made falsy, or map.
}