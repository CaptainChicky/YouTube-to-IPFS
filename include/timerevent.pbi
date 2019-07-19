Macro TimerEvent()
  
If Timer(p)=1
    
  Kill(p)
  
If exitcode=0
  
  AddGadgetItem(#log,CountGadgetItems(#log), ""): AddGadgetItem(#log,CountGadgetItems(#log), addingtoipfs$)
  
  tr = CreateThread( @AddToIPFS(), #Null)
  
While IsThread(tr)
  
If WindowEvent() = #PB_Event_CloseWindow
  
  exit=1
  WaitThread(tr)
  
EndIf
  
  Delay(5)
  
Wend
  
  AddGadgetItem(#log,CountGadgetItems(#log), "")
  AddGadgetItem(#log,CountGadgetItems(#log), "  "+result$)
  
  RemoveWindowTimer(#status,#timer)
    
If done=1
  
  SetWindowTitle(#status, success$)
  Success()
  
Else
  
  SetWindowTitle(#status, failed$)
  MessageRequester(error$, failed$, #PB_MessageRequester_Error)
     
EndIf

Else
  
  SetWindowTitle(#status, failed$)
  MessageRequester(error$, failed$, #PB_MessageRequester_Error)
  RemoveWindowTimer(#status,#timer)
  
EndIf

EndIf
  
EndMacro
; IDE Options = PureBasic 5.70 LTS (Linux - x64)
; Folding = +
; EnableXP