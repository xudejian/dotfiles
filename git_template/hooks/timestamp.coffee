#!/usr/bin/env coffee
to_weekend_tm = (tm) ->
  [ws, we, end] = weekend tm
  ws + ((tm - ws) * (we - ws) / (end - ws))

weekend = (tm) ->
  d = new Date(tm)
  d.setHours(23)
  d.setMinutes(59)
  d.setSeconds(59)
  d.setMilliseconds(0)
  end = d.getTime()

  ONEDAY = 86400000
  while not is_holiday end
    end = end - ONEDAY
  while is_holiday end
    end = end + ONEDAY
  end = end - ONEDAY

  week_end = end + ONEDAY
  while not is_holiday week_end
    week_end = week_end + ONEDAY
  week_end = week_end - ONEDAY

  start = end - ONEDAY + 1000
  while is_holiday start
    start = start - ONEDAY
  start = start + ONEDAY

  [start, end, week_end]

is_holiday = (tm) ->
  d = new Date(tm)
  day = d.getDay()
  yyyy = d.getFullYear()
  m = 1 + d.getMonth()
  dd = d.getDate()
  holiday =
    2013:
      1: [1,2,3]
      2: [9,10,11,12,13,14,15]
      4: [4,5,6,29,30]
      5: [1]
      6: [10,11,12]
      9: [19,20,21]
      10: [1,2,3,4,5,6,7]
  notholiday =
    2013:
      1: [5,6]
      2: [16,17]
      4: [7,27,28]
      6: [8,9]
      9: [22,29]
      10: [12]
  if holiday[yyyy] and holiday[yyyy][m]
    return true if -1 < holiday[yyyy][m].indexOf dd
  if notholiday[yyyy] and notholiday[m]
    return false if -1 < notholiday[yyyy][m].indexOf dd
  return true if day is 0 or day is 6

return unless process.env.GIT_AUTHOR_DATE

if ts = process.env.GIT_AUTHOR_DATE.match /@(\d+) (.*)/
  tz = ts[2]
  tm = 1000 * ts[1]
  nd = to_weekend_tm tm
  console.log "@#{parseInt(nd/1000, 10)} #{tz}"
