; make alt + letter correspond to the letter with an umlaut, or alt s to the double s.
; designed for use with learning German on duolingo

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliabililljty.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!a::
	Send, �
return
!o::
	Send, �
return
!u::
	Send, �
return
!s::
	Send, �
return
+!A::
	Send, �
return
+!O::
	Send, �
return
+!U::
	Send, �
return
+!S::
	Send, �
return
