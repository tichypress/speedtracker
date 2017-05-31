---
#
# The human-friendly name of the profile. Whenever you're asked for the profile
# ID, it refers to the name of the profile file — in this case, "default".
#
name: "wolfgang-lorenz.com"

#
# The default profile will be the one shown when accessing the root URL of your
# SpeedTracker site.
# 
default: false

#
# If you want tests to be repeated automatically, you can an interval (in hours)
# with a minimum value of 12, as only two scheduled tests per day are allowed.
# To disabled repeated tests, simply remove this property from the profile.
#
interval: 24

#
# WebPageTest test parameters
#
parameters:
  connectivity: "Cable"
  location: "ec2-eu-central-1:Chrome"
  runs: 1
  url: "https://wolfgang-lorenz.com"

#
# Performance budgets are defined with a metric id, a max/min allowed value
# (in milliseconds), and one or multiple alerts — referenced by the ids defined
# in the main config — to be triggered when a budget is overrun.
#
# For a list of metrics, check:
#
# https://github.com/speedtracker/speedtracker-api/blob/master/lib/SpeedTracker.js#L18-L37
#
#budgets:
#  -
#    metric: TTFB
#    max: 600
#    alerts: ["emailAlert", "slackAlert"]
#  -
#    metric: firstPaint
#    max: 2000
#    alerts: ["slackAlert"]
---
