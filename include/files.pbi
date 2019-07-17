DataSection
 launchera:
  IncludeBinary "..\bin\ipfs-launcher.exe"
 launcherb:
EndDataSection

DataSection
 prefsyta:
  IncludeBinary "..\bin\preferences-youtubedl"
 prefsytb:
EndDataSection

DataSection
 prefsdlla:
  IncludeBinary "..\bin\preferences-msvcr"
 prefsdllb:
EndDataSection

DataSection
 htmla:
  IncludeBinary "..\bin\htmlcode.html"
 htmlb:
EndDataSection

CompilerIf #PB_Compiler_Processor = #PB_Processor_x64
  
DataSection
 prefsipfsa:
  IncludeBinary "..\bin\preferences-ipfs-x64"
 prefsipfsb:
EndDataSection
  
DataSection
 dla:
  IncludeBinary "..\bin\downloader-x64.exe"
 dlb:
EndDataSection
  
CompilerElse
  
DataSection
 prefsipfsa:
  IncludeBinary "..\bin\preferences-ipfs-x86"
 prefsipfsb:
EndDataSection
  
DataSection
 dla:
  IncludeBinary "..\bin\downloader-x86.exe"
 dlb:
EndDataSection
  
CompilerEndIf
; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; Folding = +
; EnableXP