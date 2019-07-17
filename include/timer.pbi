Procedure Timer(p)
  
If IsProgram(p)
  
 If ProgramRunning(p)
   
 If AvailableProgramOutput(p)>0
   
   s$ = ReadProgramString(p)
   
 If FindString(s$,dst$)
   
   filename$ = Trim(StringField( s$ , 2, ":"))
   AddGadgetItem(#log,CountGadgetItems(#log), "  " + s$)
   
   ProcedureReturn
   
 EndIf
   
 If Trim(s$)<>""
   
 If filename$=""
   
    AddGadgetItem(#log,CountGadgetItems(#log), "  " + s$)
    
 EndIf
    
 EndIf
 
 EndIf
 
  e$ = ReadProgramError(p)
 
 If Trim(e$)<>""
   
    AddGadgetItem(#log,CountGadgetItems(#log), "  " + e$)
   
 EndIf
 
 Else
   
   exitcode = ProgramExitCode(p)
   
   ProcedureReturn 1
   
 EndIf
 
 EndIf
 
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; Folding = +
; EnableXP