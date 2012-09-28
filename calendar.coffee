
root = exports ? window

class root.Calendar

  constructor: (baseDate=(new Date),firstWeekDay=0)->
    @baseDate = baseDate
    @first_week_day = firstWeekDay

  week_start_date: (date) ->
    startDate = new Date(date.getTime())
    startDate.setDate startDate.getDate() - 1  while startDate.getDay() isnt @first_week_day
    startDate

  weeks: ->
    year = @baseDate.getFullYear()
    month = @baseDate.getMonth()
    weeks = []
    date = @week_start_date(new Date(year, month , 1))
    loop
      week = []
      for i in [0..6]
        week.push date
        date = new Date(date.getTime())
        date.setDate date.getDate() + 1
      weeks.push week
      break unless (date.getMonth() <= month) and (date.getFullYear() is year)
    weeks

  monthDays: (year, month) ->
    getDayOrZero = (date) ->
      (if date.getMonth() is month then date.getDate() else 0)
    @monthDates year, month, getDayOrZero
