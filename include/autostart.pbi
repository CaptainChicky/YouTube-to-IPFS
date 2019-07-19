CompilerIf #PB_Compiler_OS = #PB_OS_Windows

Procedure Autostart()
  
  FilePutContents(ipfslauncher$, ?launchera, ?launcherb - ?launchera)
  
EndProcedure

CompilerEndIf
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; Folding = +
; EnableXP