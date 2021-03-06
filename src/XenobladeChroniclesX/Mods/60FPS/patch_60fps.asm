[XCX60fpsV16J] ; ########################################################
moduleMatches = 0x785CA8A9

;Default as of 0.51 - Limit logic/2d animation to 30 fps Less timing issues, more jitter  
;0x100D0604 = .float 0.5 	; .float 1.0 ; GUI animations 
0x100CFAE8 = .float 0.5 	; .float 1.0 ; GUI animations *                                    
0x10059514 = .float 0.5 	; .float 1.0 ;Title screen cutscene -
0x100144F0 = .float 0.1	; controller acceleration 
0x10171070 = .float 2.0 	; arbitrary 2.0 float 
0x1017117C = .float 0.5 ; .5 float
0x10171070 = _halfRate:
0x1017117C = _fullRate:
                                                          
0x027370B8 =  lis   r11, _halfRate@ha ; Double updateEventParam cutscene
0x027370C4 =  lfs   f1, _halfRate@l(r11) ;  -
0x027A0180 =  lis   r10, _fullRate@ha ; half SyncFrame cinematic cutscene, fixes timing issues with cinematic cutscenes -
0x027A0184 =  lfs   f1, _fullRate@l(r10) ;  but introduces  Shake and stutter issue. CODE XREF: ev::CEvtManager::startPage((float,bool))+6C j -

0x025F149C =  lis   r12, _fullRate@h       ;;;   Move__11CfSceneTaskFv      ;Filter CPU, 30 fps logic                                       
0x025F14A4 =  lfs   f31, _fullRate@l(r12)  ;;;  Move__11CfSceneTaskFv       ;                                            
0x02768064 =  lis   r8, _fullRate@ha  ;  sync in game cut scene 
0x02768068 =  lfs   f31, _fullRate@l(r8) ;       
0x0273BBD0 =  lis   r7, _fullRate@ha  ; sync elevator, vehicles  etc
0x0273BBD4 =  lfs   f31, _fullRate@l(r7) ; �

; swapInterval 60
0x02FCEB9C = li r3, 1  

[XCX60fpsV48J] ; ########################################################
moduleMatches = 0x7672271D

;Default as of 0.51 - Limit logic/2d animation to 30 fps Less timing issues, more jitter  
;0x100D0604 = .float 0.5 	; .float 1.0 ; GUI animations *                  
;0x1005989C = .float 0.5 	; .float 1.0 ;Title screen cutscene -
;0x10014528 = .float 0.1	; controller acceleration -
;0x10171980 = .float 2.0 	; arbitrary 2.0 float 

0x100D0070 = .float 0.5
0x1005989C = .float 0.5 
0x10014528 = .float 0.1
0x10171570 = .float 2.0 

0x10171570 = _halfRate:
0x100D0070 = _fullRate:
                                                          
0x0273802C =  lis   r11, _halfRate@ha ; Double updateEventParam cutscene, ver
0x02738038 =  lfs   f1, _halfRate@l(r11) ;  -
0x027A1120 =  lis   r10, _fullRate@ha ; half SyncFrame cinematic cutscene, fixes timing issues with cinematic cutscenes -
0x027A1124 =  lfs   f1, _fullRate@l(r10) ;  but introduces  Shake and stutter issue. CODE XREF: ev::CEvtManager::startPage((float,bool))+6C j -

0x025F1F78 =  lis   r12, _fullRate@h       ;;;   Move__11CfSceneTaskFv      ;Filter CPU, 30 fps logic                                       
0x025F1F80 =  lfs   f31, _fullRate@l(r12)  ;;;  Move__11CfSceneTaskFv       ;                                            
0x02768FD4 =  lis   r8, _fullRate@ha  ;  sync in game cut scene 
0x02768FD8 =  lfs   f31, _fullRate@l(r8) ;       
0x0273CB44 =  lis   r7, _fullRate@ha  ; sync elevator, vehicles  etc
0x0273CB48 =  lfs   f31, _fullRate@l(r7) ; �

; swapInterval 60
0x02FD3F5C= li r3, 1  

[XCX60fpsV100E_V101E] ; ########################################################
moduleMatches = 0x218F6E07, 0xF882D5CF

;Default as of 0.51 - Limit logic/2d animation to 30 fps Less timing issues  
0x100D03E8 = .float 0.5 	; .float 1.0 ; GUI animations *                  
0x100598E4 = .float 0.5 	; .float 1.0 ;Title screen cutscene -
0x10014528 = .float 0.05	; controller acceleration -
0x10171980 = .float 2.0 	; arbitrary 2.0 float 

0x10171980 = _halfRate:
0x100D03E8 = _fullRate:

0x027398B4 =  lis   r11, _halfRate@ha ; Double updateEventParam cutscene -
0x027398C0 =  lfs   f1, _halfRate@l(r11) ;  -
0x027A33D8 =  lis   r10, _fullRate@ha ; half SyncFrame cinematic cutscene, fixes timing issues with cinematic cutscenes -
0x027A33DC =  lfs   f1, _fullRate@l(r10) ;  but introduces  Shake and stutter issue. CODE XREF: ev::CEvtManager::startPage((float,bool))+6Cj -

;0x02707478  =  lis       r7, _tmp@ha      ; ALT  calcAdxSkip__Q2_2ev13CFrameManagerFv                                                                                     
;0x0270747C  =  lfs       f1, _tmp@l(r7)   ;   calcAdxSkip__Q2_2ev13CFrameManagerFv      
;0x02707660  =  lis       r9, _tmp@ha       ;  calcCpuSkip__Q2_2ev13CFrameManagerFv   ; SLOW down scene                                                                                  
;0x02707668  =  lfs       f31, _tmp@l(r9)   ;  calcCpuSkip__Q2_2ev13CFrameManagerFv   


0x025F299C =  lis   r12, _fullRate@h       ;;;   Move__11CfSceneTaskFv      ;Filter CPU, 30 fps logic                                       
0x025F29A4 =  lfs   f31, _fullRate@l(r12)  ;;;  Move__11CfSceneTaskFv       ;                                            
0x0276A85C =  lis   r8, _fullRate@ha  ;  sync in game cut scene 
0x0276A860 =  lfs   f31, _fullRate@l(r8) ;       
0x0273E3CC =  lis   r7, _fullRate@ha  ; sync elevator, vehicles  etc
0x0273E3D0 =  lfs   f31, _fullRate@l(r7) ; �

; swapInterval 60
0x02FD8A94 = li r3, 1  

0x10012644 = .float 15.0 ; fix for soulvoices (not sure it's safe)

[XCX60fpsV102U] ; ########################################################
moduleMatches = 0x30B6E091

;Default as of 0.51 - Limit logic/2d animation to 30 fps Less timing issues  
0x100D03D0 = .float 0.5 	; .float 1.0 ; GUI animations                   
0x100598E4 = .float 0.5 	; .float 1.0 ;Title screen cutscene
0x10014528 = .float 0.05	; controller acceleration
0x10171980 = .float 2.0 	; arbitrary 2.0 float 

0x10171980 = _halfRate:
0x100D03D0 = _fullRate:

0x027398B4 =  lis   r11, _halfRate@ha ; Double updateEventParam cutscene
0x027398C0 =  lfs   f1, _halfRate@l(r11) ; 
0x027A33D8 =  lis   r10, _fullRate@ha ; half SyncFrame cinematic cutscene, fixes timing issues with cinematic cutscenes 
0x027A33DC =  lfs   f1, _fullRate@l(r10) ;  but introduces  Shake and stutter issue. 
0x025F299C =  lis   r12, _fullRate@h       ;;;   Move__11CfSceneTaskFv      ;Filter CPU, 30 fps logic                                       
0x025F29A4 =  lfs   f31, _fullRate@l(r12)  ;;;  Move__11CfSceneTaskFv       ;                                            
0x0276A85C =  lis   r8, _fullRate@ha  ;  sync in game cut scene 
0x0276A860 =  lfs   f31, _fullRate@l(r8) ;       
0x0273E3CC =  lis   r7, _fullRate@ha  ; sync elevator, vehicles  etc
0x0273E3D0 =  lfs   f31, _fullRate@l(r7) ; �


;Disabled, original per feature approach, severe timing issues
;0x101231F0 = .float 0.5 	; .float 1.0 ; ingame animation timing 
;0x100D03D0 = .float 0.5 	; .float 1.0 ; GUI animations                   
;0x100598E4 = .float 0.5 	; .float 1.0 ;Title screen cutscene
;0x1003C3A0 = .float 15.0      	; .float 30.0   fight 3d animations
;0x1000F7A8 = .float 0.1 	; RegistDamage_ButtonChallenge
;0x10014528 = .float 0.05 	; controller acceleration                
;0x100211D8 = .float 15.0  	; .float 30.0 fade in 
;0x10034804 = .float 15.0  	; .float 30.0 bullets 
;0x10035D84 = .float 15.0  	;  walk acceleration
;0x1003C3A0 = .float 15.0  	; arts frame to sec
;0x10012368 = .float 45.0  	; respawn                                          
;0x10012644 = .float 15.0  	; soulvoice
;0x1000C448 = .float 15.0	; init battle                  
;0x1000CB90 = .float 15.0  	; init battle
;0x1003E538 = .float 0.33333335  ;birds, falling leaves
;0x10171980 = .float 2.0 	; arbitrary 2.0 float 
;0x100955F0 = .float 60.0 	; 30.0  Create avatar cam rotation 

; JFF
;0x101123B4 = .float 0.03333335 ;    .float 0.016666668 superfast  (vsync)
;0x10035D7C = .float 0.25 	; .float 1.0  fast run   
;0x10035E00 = .float 2.0  	; jump high.float 0.5    
;0x10190C7C = .float 0.75 	; master FOV 
;0x10012368 = .float 45.0  	; seconds  before respawn "cheat"

; swapInterval 60
0x02FD8A34 = li r3, 1  

0x10012644 = .float 15.0 ; fix for soulvoices (not sure it's safe)

;SNESticleNGCVERIONPP71Copyright - Sardu you magnificent bastard, we salute you!


