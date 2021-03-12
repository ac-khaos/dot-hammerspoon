local hotkey = require "hs.hotkey.internal"

launcherHotkey = {"option"}

applist = {
  {shortcut = "W", appname = "WeChat"},
  {shortcut = "I", appname = "iTerm"},
  {shortcut = "E", appname = "Emacs"},
  {shortcut = "C", appname = "Google Chrome"},
  {shortcut = "D", appname = "企业微信"},
  {shortcut = "F", appname = "finder"},
}

hotkey.alertDuration = 0

hs.fnutils.each(applist, function(al) hs.hotkey.bind(launcherHotkey, al.shortcut, al.appname, function() hs.application.launchOrFocus(al.appname) end) end)
