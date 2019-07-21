
 ; Add the file after it has been downloaded by youtube-dl to IPFS.

 ; This Procedure will run as a thread


Procedure AddToIPFS()
  
  result$ = ""
  
If exitcode = 0 
  
    ; youtube-dl error code ( 0 = success )
  
  
  
  flags = #PB_Program_Open|#PB_Program_Read|#PB_Program_Hide 
  
    ;   #PB_Program_Hide flag is used to avoid a console window
  
  
  
    p = RunProgram(ipfs$, add$ + " " + Chr(34) + Addbackslash(temp$) + filename$ + Chr(34), temp$ ,flags)
    
      While ProgramRunning(p)
  
        If exit = 1 
          
          ;  exit is a global variable which is set to 1 when the close button is pressed
  
          kill(p)
  
          ProcedureReturn
  
        EndIf
  
        
        If AvailableProgramOutput(p)
  
          
          s$ = ReadProgramString(p) 
          
                    ;  Read from stdout while IPFS is running
          
          
              If FindString( s$ , added$, 0, #PB_String_NoCase) 
                
                    ;   Search for "added" - IPFS prints "added" to stdout on success
  
                
                result$ = s$
                
                    ;   result$ is a global variable where the IPFS hash is stored
  
                
                done = 1
                
                    ;   done is a global variable. Set to 1 on success.
  
                
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