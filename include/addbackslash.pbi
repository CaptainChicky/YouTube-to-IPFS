﻿
 ; Adds a backlash to the end of a path

Procedure.s AddBackslash(path.s)
    
If Right(path,1) <> backslash$
  
  path=path+backslash$
  
EndIf

  ProcedureReturn path

EndProcedure
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; Folding = +
; EnableXP