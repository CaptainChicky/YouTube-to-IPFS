Procedure CreateFiles()

  FilePutContents(appdir$ + downloaderexe$, ?dla, ?dlb-?dla)
    LockFile(appdir$ + downloaderexe$)
    
CompilerIf #PB_Compiler_OS = #PB_OS_Linux Or #PB_Compiler_OS = #PB_OS_MacOS
  
  p = RunProgram("chmod", " a+rx "+downloaderexe$, appdir$ , #PB_Program_Open|#PB_Program_Wait)
  
CompilerEndIf
    
  FilePutContents(appdir$ + prefsipfs$, ?prefsipfsa, ?prefsipfsb-?prefsipfsa)
    Download(appdir$ + prefsipfs$)
      DeleteFile(appdir$ + prefsipfs$)
    
  FilePutContents(appdir$ + prefsyt$, ?prefsyta, ?prefsytb-?prefsyta)
    Download(appdir$ + prefsyt$)
      DeleteFile(appdir$ + prefsyt$)
      
CompilerIf #PB_Compiler_OS = #PB_OS_Windows
      
  FilePutContents(appdir$ + prefsmsvcr$, ?prefsdlla, ?prefsdllb-?prefsdlla)
    Download(appdir$ + prefsmsvcr$)
      DeleteFile(appdir$ + prefsmsvcr$)
      
CompilerEndIf
      
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; Folding = +
; EnableXP