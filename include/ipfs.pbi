Procedure IPFS()

  i$ = "http://127.0.0.1:8080/ipfs/"
  
  *ipfs = ReceiveHTTPMemory(i$) 
  
If *ipfs

  FreeMemory(*ipfs)
  
  AddElement( GateWays() )
  GateWays() = i$
  
EndIf
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; Folding = +
; EnableXP