; Script to make the shift-alt-m key combination send the current timestamp
; intended to be used to make keeping logs easier.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliabililljty.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

RegRead, TZKN, HKEY_LOCAL_MACHINE, SYSTEM\CurrentControlSet\Control\TimeZoneInformation, TimeZoneKeyName

+!m::
  FormatTime, TimeString,, HH:mm dd-MM-yyyy
  FormatTime, UtcTimeString, %A_NowUTC%, HH:mm dd-MM-yyyy
  Send, %TimeString% %TZKN% (%UtcTimeString% Utc)
return