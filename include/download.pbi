Procedure Download(preffile$)
  
  OpenPreferences(preffile$)
  
  name$ = ReadPreferenceString(saveas$,"")
  hash$ = ReadPreferenceString(md5$,"")
  
  ClosePreferences()
  
If preffile$ = appdir$ + prefsipfs$  
  
  Unpack(appdir$ +name$)
    
EndIf
  
If FileFingerprint(appdir$ + name$, #PB_Cipher_MD5) <> hash$
  
  p = RunProgram(appdir$ + downloaderexe$, GetFilePart(preffile$), appdir$ , #PB_Program_Open|#PB_Program_Wait)
  
If ProgramExitCode(p)
  
  End
  
EndIf
  
  CloseProgram(p)
  
If FileFingerprint(appdir$ + name$, #PB_Cipher_MD5) <> hash$
  
  End
  
EndIf
  
EndIf

  LockFile(appdir$ + name$)

EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; Folding = +
; EnableXP