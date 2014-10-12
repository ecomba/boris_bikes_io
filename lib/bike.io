Bike := Object clone do(
  break := method(
    self broken := true
    self
  )
  isBroken := method(
    if(self getSlot("broken"), true, false)
  )
  repair := method(
    self removeSlot("broken")
    self
  )
)
