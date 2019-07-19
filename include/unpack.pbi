Procedure Unpack(file$)
      
  CreateDirectory( GetPathPart ( Left(ipfsdir$, Len(ipfsdir$) - 1) ) )
  CreateDirectory( Left(ipfsdir$, Len(ipfsdir$) - 1) )
  
If OpenPack(0,file$, #PB_PackerPlugin_Zip)
 
If ExaminePack(0)
  
While NextPackEntry(0)
    
  CreateDirectory( GetPathPart( ipfsdir$ + GetFilePart( PackEntryName(0) ) ) )
  UncompressPackFile(0, ipfsdir$ + GetFilePart( PackEntryName(0) ))
      
Wend
  
EndIf
    
  ClosePack(0)
    
EndIf


CompilerIf #PB_Compiler_OS = #PB_OS_Linux
  
  RunProgram("chmod", " a+rx "+GetFilePart(ipfs$), GetPathPart(ipfs$) , #PB_Program_Hide|#PB_Program_Wait)
    
CompilerEndIf

  RunDaemon()
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; Folding = +
; EnableXP