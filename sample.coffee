
Calendar = require("./calendar").Calendar

c = new Calendar

ws = c.weeks()
console.log ws
for w in ws
  for d in w
    console.log d.getDate()
  console.log "--"
