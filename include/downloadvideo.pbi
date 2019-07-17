Procedure DownloadVideo()
  
  done = 0
  filename$=""
  p = RunProgram(appdir$ + youtubedl$, GetGadgetText(#url), temp$,#PB_Program_Open|#PB_Program_Read|#PB_Program_Error|#PB_Program_Hide)
   
  HideWindow(#window,1)
  
  w=480:h=225
  
If OpenWindow(#status,0,0,w,h, pleasewait$,#PB_Window_ScreenCentered|#PB_Window_SystemMenu|#PB_Window_MinimizeGadget)
  
  FrameGadget(#PB_Any,10,10,w-20,h-20,log$)
  
  EditorGadget(#log,25,30,w-50,h-55,#PB_Editor_ReadOnly|#PB_Editor_WordWrap)
  
  AddWindowTimer(#status,#timer,100)
    
  AddGadgetItem(#log,CountGadgetItems(#log), downloading$)
  
Repeat
  
Select WindowEvent()

Case #PB_Event_Timer

  TimerEvent()
  
Case #PB_Event_CloseWindow
  
  CloseWindow(#status)
  Kill(p)
    
  Break
  
EndSelect

ForEver

EndIf
   
   HideWindow(#window,0)
   
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; Folding = +
; EnableXP