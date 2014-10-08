Person := Object clone do (
  rentBikeFrom := method(station, 
    self bike := (station releaseBike)
  )
  returnBikeTo := method(station,
    station dock(bike)
    self removeSlot("bike")
  )
  hasBike := method(
    if(self getSlot("bike"), true, false)
  )
  accident := method(
    self bike break
  )
)
