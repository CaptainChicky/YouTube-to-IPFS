Procedure Success()
  
  key$ = StringField(result$, 2, " ")
  
  w=480:h=405
  
  HideWindow(#status,1)
    
If OpenWindow(#success,0,0,w,h, success$,#PB_Window_ScreenCentered|#PB_Window_SystemMenu|#PB_Window_MinimizeGadget)
  
  FrameGadget(#PB_Any,10,10,w-20,55,link$)
  
  linka = StringGadget(#PB_Any,20,30,w-100,20, prefix$ + key$, #PB_String_ReadOnly)
  
  copya = ButtonGadget(#PB_Any,w-75,30,60,20,copy$)
  
  FrameGadget(#PB_Any,10,80,w-20,55,linkg$)
  
  linkb = StringGadget(#PB_Any,20,100,w-100,20, prefixg$ + key$, #PB_String_ReadOnly)
  
  copyb = ButtonGadget(#PB_Any,w-75,100,60,20,copy$)
  
  html$ = PeekS(?htmla,?htmlb-?htmla,#PB_UTF8)
  
  html$ =ReplaceString(html$,"**", key$)
  
  FrameGadget(#PB_Any,10,150,w-20,235,htmlcode$)
  
  code = EditorGadget(#PB_Any,20,170,w-100,200, #PB_Editor_ReadOnly|#PB_Editor_WordWrap)
  
  SetGadgetText(code,html$)
  
  copyc = ButtonGadget(#PB_Any,w-75,170,60,20,copy$)
      
Repeat
  
Select WaitWindowEvent()
    
Case #PB_Event_Gadget
  
Select EventGadget()
    
Case copya
  
  SetClipboardText( GetGadgetText(linka) )
  
Case copyb
  
  SetClipboardText( GetGadgetText(linkb) )
  
Case copyc
  
  SetClipboardText( GetGadgetText(code) )
  
EndSelect
    
Case #PB_Event_CloseWindow
   
  CloseWindow(#success) 
  Break
      
EndSelect
  
ForEver
  
  
EndIf
  
  HideWindow(#status,0)
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; Folding = +
; EnableXP