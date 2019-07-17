Procedure Main()
      
  InitNetW():CreateTempDir():CreateFiles()
  
  w=320:h=150
  
If OpenWindow(#window,0,0,w,h,title$,#PB_Window_ScreenCentered|#PB_Window_SystemMenu|#PB_Window_MinimizeGadget)
      
  StringGadget(#url,30,30,w-60,22,"")
  
  CheckBoxGadget(#autostart,60,70,220,25,launchwithwindows$)
 
If ReadFile(0, ipfslauncher$) : CloseFile(0) : SetGadgetState(#autostart,1) : EndIf
  
  ButtonGadget(#download,120,110,80,25,go$)
  
  FrameGadget(#PB_Any,10,10,w-20,60,youtubeurl$)
  
Repeat
  
Select WaitWindowEvent()  
    
Case #PB_Event_Gadget
  
Select EventGadget()
    
Case #autostart
  
If GetGadgetState(#autostart)
  
  Autostart()
  
Else
  
  DeleteFile(ipfslauncher$)
    
EndIf
  
Case #download

  DownloadVideo()
      
EndSelect     
  
Case #PB_Event_CloseWindow
  
  Quit()
  
EndSelect
  
ForEver
  
EndIf
  
EndProcedure
; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; Folding = +
; EnableXP