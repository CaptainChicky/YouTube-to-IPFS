
;Files embedded into the application

CompilerIf #PB_Compiler_OS = #PB_OS_Windows
  
    DataSection
      launchera:
        IncludeBinary "..\bin\ipfs-launcher.exe" ; <---- Added to Autostart on Windows
      launcherb:
    EndDataSection

    DataSection
      prefsyta:
        IncludeBinary "..\bin\preferences\youtubedl-windows" ; <---- Preferences for downloading youtube-dl for Windows
      prefsytb:
    EndDataSection

    DataSection
      prefsdlla:
        IncludeBinary "..\bin\preferences\msvcr"  ; <---- Preferences for downloading msvcr100.dll (required to run youtube-dl)
      prefsdllb:
    EndDataSection

    DataSection
      htmla:
        IncludeBinary "..\bin\htmlcode.html"  ; <---- The html embed code used when the uploads succeeds
      htmlb:
    EndDataSection
  
CompilerElse

    DataSection
      prefsyta:
        IncludeBinary "../bin/preferences/youtubedl-linux" ; <---- Preferences for downloading youtube-dl for Linux and Mac
      prefsytb:
    EndDataSection

    DataSection
      htmla:
        IncludeBinary "../bin/htmlcode.html"  ; <---- The html embed code used when the uploads succeeds
      htmlb:
    EndDataSection

CompilerEndIf

CompilerIf #PB_Compiler_Processor = #PB_Processor_x64 And #PB_Compiler_OS = #PB_OS_Windows
  
    DataSection
      prefsipfsa:
        IncludeBinary "..\bin\preferences\ipfs-x64-windows"; <---- Preferences for downloading IPFS for Windows 64-Bit
      prefsipfsb:
    EndDataSection
  
    DataSection
      dla:
        IncludeBinary "..\bin\downloader\windows-x64.exe"; <---- The Windows 64-Bit downloader
      dlb:
    EndDataSection
  
CompilerElseIf #PB_Compiler_Processor = #PB_Processor_x86 And #PB_Compiler_OS = #PB_OS_Windows
  
    DataSection
      prefsipfsa:
        IncludeBinary "..\bin\preferences\ipfs-x86-windows"; <---- Preferences for downloading IPFS for Windows 32-Bit
      prefsipfsb:
    EndDataSection
  
    DataSection
      dla:
        IncludeBinary "..\bin\downloader\windows-x86.exe"; <---- The Windows 32-Bit downloader
      dlb:
    EndDataSection

CompilerElseIf #PB_Compiler_Processor = #PB_Processor_x64 And #PB_Compiler_OS = #PB_OS_Linux
  
    DataSection
      prefsipfsa:
        IncludeBinary "../bin/preferences/ipfs-x64-linux"; <---- Preferences for downloading IPFS for Linux 64-Bit
      prefsipfsb:
    EndDataSection
  
    DataSection
      dla:
        IncludeBinary "../bin/downloader/linux-x64"; <---- The Linux 64-Bit downloader
      dlb:
    EndDataSection

CompilerElseIf #PB_Compiler_Processor = #PB_Processor_x86 And #PB_Compiler_OS = #PB_OS_Linux
  
    DataSection
      prefsipfsa:
        IncludeBinary "../bin/preferences/ipfs-x86-linux"; <---- Preferences for downloading IPFS for Linux 32-Bit
      prefsipfsb:
    EndDataSection
  
    DataSection
      dla:
        IncludeBinary "../bin/downloader/linux-x86"; <---- The Linux 32-Bit downloader
      dlb:
    EndDataSection
    
CompilerElseIf #PB_Compiler_Processor = #PB_Processor_x64 And #PB_Compiler_OS = #PB_OS_MacOS
  
    DataSection
      prefsipfsa:
        IncludeBinary "../bin/preferences/ipfs-x64-mac"; <---- Preferences for downloading IPFS for Mac OS 64-Bit
      prefsipfsb:
    EndDataSection
  
    DataSection
      dla:
        IncludeBinary "../bin/downloader/mac-x64"; <---- The Mac OS 64-Bit downloader
      dlb:
    EndDataSection
    
CompilerElseIf #PB_Compiler_Processor = #PB_Processor_x86 And #PB_Compiler_OS = #PB_OS_MacOS
  
    DataSection
      prefsipfsa:
        IncludeBinary "../bin/preferences/ipfs-x86-mac"; <---- Preferences for downloading IPFS for Mac OS 32-Bit
      prefsipfsb:
    EndDataSection
  
    DataSection
      dla:
        IncludeBinary "../bin/downloader/mac-x86"; <---- The Mac OS 32-Bit downloader
      dlb:
    EndDataSection    

CompilerEndIf
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; Folding = 9
; EnableXP