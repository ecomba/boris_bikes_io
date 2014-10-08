Station := Object clone do (
  init := method(
    self bikes := List clone
    self
  )
  add := method(bike,
    self bikes append(bike)
  )
  releaseBike := method(
    bikes pop
  )
  dock := method(bike,
    add(bike)
  )
  brokenBikes := method(
    self bikes select(bike, bike isBroken)
  )
  availableBikes := method(
    self bikes select(bike, bike isBroken == false)
  )
)
