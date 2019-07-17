Procedure LockFile(filename.s)
  
  f=LockedFiles(filename)
  
If IsFile(f)=0
  
  filenum=ReadFile(#PB_Any,filename,#PB_File_SharedRead)
  
If filenum
  LockedFiles(filename)=filenum
EndIf
    
EndIf
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; Folding = +
; EnableXP