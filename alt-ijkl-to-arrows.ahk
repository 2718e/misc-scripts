#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliabililljty.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Make alt+ijkl act like the arrow keys. This allows use of pseudo-arrow keys without moving
; hands off of the standard touch typing position.
!j::
	Send, {left}
return
!k::
	Send, {down}
return
!l::
	Send, {right}
return
!i::
	Send, {up}
return
!r::
	Click right
return