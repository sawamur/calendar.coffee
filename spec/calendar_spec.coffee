
Calendar = require("../calendar").Calendar

describe "Calendar",->
  it "can require calendar",->
    expect( typeof(Calendar) ).toBe("function")

  it "makes weeks as calendar-friendly array",->
    c = new Calendar(new Date(2012,8))
    weeks = c.weeks()
    expect( weeks.length ).toBe(6)
    expect( weeks[0].length ).toBe(7)
    expect( weeks[0][0].getTime() ).toBe( new Date(2012,7,26).getTime() )