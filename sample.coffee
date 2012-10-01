
Calendar = require("./calendar")

c = new Calendar
ws = c.weeks()


for w in ws
  console.log w.map( (d) ->
    d.getDate()
    ).join(",")
  console.log

