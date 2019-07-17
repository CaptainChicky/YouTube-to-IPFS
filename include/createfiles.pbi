Procedure CreateFiles()
  
  FilePutContents(appdir$ + downloaderexe$, ?dla, ?dlb-?dla)
    LockFile(appdir$ + downloaderexe$)
    
  FilePutContents(appdir$ + prefsipfs$, ?prefsipfsa, ?prefsipfsb-?prefsipfsa)
    Download(appdir$ + prefsipfs$)
      DeleteFile(appdir$ + prefsipfs$)
    
  FilePutContents(appdir$ + prefsyt$, ?prefsyta, ?prefsytb-?prefsyta)
    Download(appdir$ + prefsyt$)
      DeleteFile(appdir$ + prefsyt$)
        
  FilePutContents(appdir$ + prefsmsvcr$, ?prefsdlla, ?prefsdllb-?prefsdlla)
    Download(appdir$ + prefsmsvcr$)
      DeleteFile(appdir$ + prefsmsvcr$)
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; Folding = +
; EnableXP