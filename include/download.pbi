Procedure Download(preffile$)
  
  OpenPreferences(preffile$)
  
  name$ = ReadPreferenceString(saveas$,"")
  hash$ = ReadPreferenceString(md5$,"")
  
  ClosePreferences()
 
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

If preffile$ = appdir$ + prefsipfs$  
  
  Unpack(appdir$ +name$)
    
EndIf

CompilerIf #PB_Compiler_OS = #PB_OS_Linux

If preffile$ = appdir$ + prefsyt$  
  
If OpenPack(0, appdir$ + name$, #PB_PackerPlugin_Zip)
  
  UncompressPackFile(0,appdir$ + youtubedl$, youtubedl$)
    
  ClosePack(0)
  
  RunProgram("chmod", " a+rx "+youtubedl$, appdir$ , #PB_Program_Hide|#PB_Program_Wait)
  
EndIf
  
EndIf

CompilerEndIf

  LockFile(appdir$ + name$)
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; Folding = +
; EnableXP