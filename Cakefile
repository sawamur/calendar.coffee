
sys = require 'sys'
fs = require 'fs'

exec = require('child_process').exec
exerr  = (err, sout,  serr)->
  process.stdout.write err  if err
  process.stdout.write sout if sout
  process.stdout.write serr if serr

task 'build','compile coffee to js', ->
  exec "coffee -cb -o js calendar.coffee",exerr

task 'watch','watch coffee scripts', ->
  exec "coffee -cbw -o js calendar.coffee",exerr

task 'spec','do specs with jasmine-node', ->
  exec "jasmine-node --coffee spec",exerr
