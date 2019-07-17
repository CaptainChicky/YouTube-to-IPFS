IncludeFile "include\addbackslash.pbi"

appdata$ = GetUserDirectory(#PB_Directory_ProgramData)
appdata$=AddBackslash(appdata$)
ipfs$= appdata$ + "ipfs\ipfs.exe"

RunProgram(ipfs$,"init",appdata$,#PB_Program_Hide|#PB_Program_Wait)
RunProgram(ipfs$,"daemon",appdata$,#PB_Program_Hide)
; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; EnableXP
; Executable = ipfs-launcher.exe