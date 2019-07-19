Macro RunDaemon()
  
  RunProgram(ipfs$, init$, ipfsdir$, #PB_Program_Hide|#PB_Program_Wait)
  ipfsdaemon = RunProgram(ipfs$, daemon$, ipfsdir$, #PB_Program_Open|#PB_Program_Hide)

EndMacro
; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; Folding = +
; EnableXP