Procedure Unpack(file$)
  
  CreateDirectory( ipfsdir$ )
  
If OpenPack(0,file$, #PB_PackerPlugin_Zip)
  
If ExaminePack(0)
  
While NextPackEntry(0)
  
  CreateDirectory( GetPathPart( ipfsdir$ + GetFilePart( PackEntryName(0) ) ) )
  UncompressPackFile(0, ipfsdir$ + GetFilePart( PackEntryName(0) ))
      
Wend
  
EndIf
    
  ClosePack(0)
    
EndIf

  RunProgram(ipfs$, init$, ipfsdir$, #PB_Program_Hide|#PB_Program_Wait)
  RunProgram(ipfs$, daemon$, ipfsdir$, #PB_Program_Hide)
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; Folding = +
; EnableXP