Global NewList GateWays.s()
Global NewMap LockedFiles()

Global temp$
Global filename$
Global pattern$ = "*.*"
Global title$ = "YouTube-to-IPFS"
Global youtubeurl$ = "Video URL"
Global appdir$ = GetPathPart( ProgramFilename() ) + "data\"
Global error$ = "Error"
Global netwerror$ = "Couldn't initiliaze the network"
Global bootstrapzip$ = "bootstrap.zip"
Global downloaderexe$ = "downloader.exe"
Global youtubedl$ = "youtube-dl.exe"
Global prefsyt$ = "preferences-yt"
Global prefsipfs$ = "preferences-ips"
Global prefsmsvcr$ = "preferences-msvcr"
Global add$ = "add"
Global md5$ = "md5"
Global saveas$ = "saveas"
Global log$ = "Log"
Global dst$ = "Destination:"
Global downloading$ = "Downloading"
Global addingtoipfs$ = "Adding to IPFS"
Global pleasewait$ = "Please wait..."
Global exitcode = 0
Global done = 0
Global exit
Global added$ = "added"
Global success$ = "Success"
Global failed$ = "Process failed"
Global result$
Global go$ = "Go"
Global link$ = "Link"
Global copy$ = "Copy"
Global htmlcode$ = "Html code"
Global linkg$ = "Gateway link for non IPFS users"
Global prefix$ = "http://127.0.0.1:8080/ipfs/"
Global prefixg$ = "https://ipfs.io/ipfs/"

appdata$ = GetUserDirectory(#PB_Directory_ProgramData)
appdata$=AddBackslash(appdata$)

Global ipfsdir$ = appdata$ + "ipfs\"
Global ipfs$ = ipfsdir$ + "ipfs.exe"
Global ipfslauncher$ = "ipfs-launcher.exe"
Global init$ = "init"
Global daemon$ = "daemon"
Global autostart$
Global launchwithwindows$ = "Start the IPFS daemon with Windows"

autostart$=Space(#MAX_PATH)
SHGetSpecialFolderPath_(#Null,autostart$,#CSIDL_STARTUP,0)
autostart$=Trim(autostart$)
  
Global ipfslauncher$ = AddBackslash(autostart$) + "ipfs-launcher.exe"

; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; EnableXP