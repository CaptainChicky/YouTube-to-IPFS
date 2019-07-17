Macro InitNetW()
  
If InitNetwork()
  
  CreateDirectory(appdir$)
  
Else
  
  MessageRequester("",netwerror$)
  End
  
EndIf
    
EndMacro
; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; Folding = +
; EnableXP