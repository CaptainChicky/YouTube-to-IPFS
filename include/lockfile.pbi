
  ;-- Lock the files necessary to run this app so the user does not delete or move them accidentally

Procedure LockFile(filename.s)
   
  f=LockedFiles(filename)
  
If IsFile(f)=0
  
  filenum=ReadFile(#PB_Any,filename,#PB_File_SharedRead)
  
If filenum
  
  LockedFiles(filename)=filenum
  
EndIf
    
EndIf
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; Folding = -
; EnableXP