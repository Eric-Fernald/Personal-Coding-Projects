nodes = [(1, 2), (2, 3), (3, 4), (4, 5), (5, 2)]

def next(parent):
  def find(nodes, parent):
    current = nodes[0]
    rest = nodes[1:]

    if current and current[0] == parent:
      return current[1]
    else:
      return find(rest, parent)
  return find(nodes, parent) 

def next_next(x):
  return next(next(x))

def meet(slow, fast, p1, p2, steps):
  p1 = slow(p1)
  p2 = fast(p2)
  steps = steps + 1

  if p1 == p2:
    return (p1, steps)
  else:
    return meet(slow, fast, p1, p2, steps)

def meet_result(slow, fast, p1, p2):
  result = meet(slow, fast, p1, p2, 0)
  return result[0]

def meet_count(slow, fast, p1, p2):
  result = meet(slow, fast, p1, p2, 0)
  return result[1]

def find_cycle(init):
  cycle_meet = meet_result(next, next_next, init, init)
  cycle_root = meet_result(next, next, cycle_meet, init)
  cycle_length = meet_count(lambda x: x, next, cycle_root, cycle_root)
  return (cycle_meet, cycle_root, cycle_length)