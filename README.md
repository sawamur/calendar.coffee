
# Calendar.coffee

Simple js to show calendar

# Compile

```
$ cake build
```


# Sample

browser
```
<script src="calendar.js">
```

for node.js
```
Calendar = require("./calendar")
```

```
c = new Calendar

ws = c.weeks()
for w in ws
  for d in w
    console.log d.getDate()
  console.log "--"
```


# testing


```
$ cake spec
```

