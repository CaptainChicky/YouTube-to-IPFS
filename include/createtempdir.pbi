
  ; Create a temporary directory for downloading videos. Will be deleted with all the files inside it on exit.

Procedure CreateTempDir()
  
  temp$ = AddBackslash( GetTemporaryDirectory() )
  
  a=1
      
Repeat
    
  If ExamineDirectory(0, temp$ + Str(a) , pattern$)
      
    FinishDirectory(0)
    
     a + 1
  
  Else
  
     temp$ = temp$ + Str(a)
  
     CreateDirectory(temp$)
  
     temp$ = AddBackslash( temp$ )
  
     ProcedureReturn
  
  EndIf
  
ForEver
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; Folding = +
; EnableXP