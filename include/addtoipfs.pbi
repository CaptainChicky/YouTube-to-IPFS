Procedure AddToIPFS()
  
  result$=""
  
If exitcode=0

  p = RunProgram(ipfs$, add$ + " " + Chr(34) + Addbackslash(temp$) + filename$ + Chr(34), temp$ ,#PB_Program_Open|#PB_Program_Read|#PB_Program_Hide)
    
While ProgramRunning(p)
  
If exit=1:kill(p):ProcedureReturn:EndIf
  
If AvailableProgramOutput(p)
  
  s$ = ReadProgramString(p)
  
If FindString(s$,added$,0,#PB_String_NoCase)
  
  result$ = s$
  
  done = 1
  
  Break
  
EndIf
  
EndIf
  
Wend

  kill(p)

EndIf

  ProcedureReturn

EndProcedure
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; Folding = +
; EnableXP