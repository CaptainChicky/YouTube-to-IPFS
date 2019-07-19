UseZipPacker():UseMD5Fingerprint()

  Declare Kill(process)
  Declare.s AddBackslash(path.s)
  
  IncludePath "include"

  IncludeFile "vars.pbi"
  IncludeFile "addbackslash.pbi"
  IncludeFile "constants.pbi"
  IncludeFile "files.pbi"
  IncludeFile "createtempdir.pbi"
  IncludeFile "fileputcontents.pbi"
  IncludeFile "quit.pbi"
  IncludeFile "ipfs.pbi"
  IncludeFile "lockfile.pbi"
  IncludeFile "initnetw.pbi"
  IncludeFile "rundaemon.pbi"
  IncludeFile "unpack.pbi"
  IncludeFile "download.pbi"
  IncludeFile "createfiles.pbi"
  IncludeFile "kill.pbi"
  IncludeFile "timer.pbi"
  IncludeFile "addtoipfs.pbi"
  IncludeFile "timerevent.pbi"
  IncludeFile "success.pbi"
  IncludeFile "downloadvideo.pbi"
  IncludeFile "autostart.pbi"
  IncludeFile "main.pbi"
    
  Main()
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; EnableThread
; EnableXP
; Executable = youtube-to-ipfs
; CPU = 1
; CompileSourceDirectory