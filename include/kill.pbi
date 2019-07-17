Procedure Kill(prog)
  
If IsProgram(prog)  
  
  If ProgramRunning(prog)
    
    KillProgram(prog)
    
  EndIf
  
  CloseProgram(prog)
  
EndIf

EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; Folding = -
; EnableXP