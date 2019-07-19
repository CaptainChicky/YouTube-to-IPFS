CompilerIf #PB_Compiler_OS = #PB_OS_Windows
  
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
  
CompilerElse

DataSection
 prefsyta:
  IncludeBinary "../bin/preferences-youtubedl-linux"
 prefsytb:
EndDataSection

DataSection
 htmla:
  IncludeBinary "../bin/htmlcode.html"
 htmlb:
EndDataSection

CompilerEndIf

CompilerIf #PB_Compiler_Processor = #PB_Processor_x64 And #PB_Compiler_OS = #PB_OS_Windows
  
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
  
CompilerElseIf #PB_Compiler_OS = #PB_OS_Windows
  
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

CompilerElseIf #PB_Compiler_OS = #PB_OS_Linux
  
DataSection
 prefsipfsa:
  IncludeBinary "../bin/preferences-ipfs-x64-linux"
 prefsipfsb:
EndDataSection
  
DataSection
 dla:
  IncludeBinary "../bin/downloader-x64"
 dlb:
EndDataSection
  
CompilerEndIf
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; Folding = 9
; EnableXP