Procedure Quit()
  
  DeleteDirectory(temp$,pattern$,#PB_FileSystem_Recursive)
  
CompilerIf #PB_Compiler_OS = #PB_OS_Linux
  
If IsProgram(ipfsdaemon) And ProgramRunning(ipfsdaemon)
  
If MessageRequester("", killdaemon$, #PB_MessageRequester_YesNo) = #PB_MessageRequester_Yes
  
  Kill(ipfsdaemon)
  
EndIf
  
EndIf

CompilerEndIf

  End
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; Folding = +
; EnableXP