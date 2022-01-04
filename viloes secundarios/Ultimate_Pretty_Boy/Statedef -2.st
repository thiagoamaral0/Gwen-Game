
[Statedef -2]

;------------------------------------------------

[State -2, AfterImageTime] ; Stop After Image if hit
type = AfterImageTime
trigger1 = Movetype = H

;-----------------------------------
;VVVVVVVVVFinisher StuffVVVVVVVVVVVV
;-----------------------------------

[State -2, FFFactory]
type = AssertSpecial
triggerall = RoundNo !=1
triggerall = time >=0
trigger1 = stateno = 890165
trigger2 = stateno = 890166
trigger3 = stateno = 890170
trigger4=numhelper(890160)
trigger4=abs(Rootdist X-Helper(890160),Rootdist X)=[-700,700]
trigger4 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger5=numhelper(890161)
trigger5=abs(Rootdist X-Helper(890161),Rootdist X)=[-700,700]
trigger5 = stagevar(info.name) = "Ultimate_Factory_FF"
flag = nokoslow

;-----------------------------------
[State -2, Waterfront]
type = AssertSpecial
triggerall = stagevar(info.name) = "Ultimate_V_Waterfront"
triggerall = time >=0
triggerall = RoundNo !=1
trigger1 = stateno = [200,699]
trigger2 = stateno = 890720
flag = nokoslow
ignorehitpause = 1

;-----------------------------------
;^^^^^^^^^^Finisher Stuff^^^^^^^^^^^
;-----------------------------------

;

;-----------------------------------
;VVVVVVVVInteractive StuffVVVVVVVVVV
;-----------------------------------

;-----------------------------------------
;FF Subway Train stuff
[State -2, barrel subway ff]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Subway Train"
trigger1 = Numhelper(889120) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Subway Train"
trigger2 = Numhelper(889120) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "FFBarrel1"
stateno = 889120
helpertype = normal
ownpal = 1
ID = 889120   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF subway barrel #2
[State -2, barrel subway ff2]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Subway Train"
trigger1 = Numhelper(889140) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Subway Train"
trigger2 = Numhelper(889140) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "FFBarrel2"
stateno = 889140
helpertype = normal
ownpal = 1
ID = 889140   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF subway barrel #3
[State -2, barrel subway ff3]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Subway Train"
trigger1 = Numhelper(889150) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Subway Train"
trigger2 = Numhelper(889150) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,21
name = "FFBarrel3"
stateno = 889150
helpertype = normal
ownpal = 1
ID = 889150   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF subway barrel #4
[State -2, barrel subway ff3]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Subway Train"
trigger1 = Numhelper(889170) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Subway Train"
trigger2 = Numhelper(889170) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,21
name = "FFBarrel4"
stateno = 889170
helpertype = normal
ownpal = 1
ID = 889170   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;---------------------------------------
;FF Sodom's Back Alley stuff
[State -2, barrel SBA ff]
type = Helper
trigger1 = stagevar(info.name) = "Sodom's Back Alley"
trigger1 = Numhelper(889440) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Sodom's Back Alley"
trigger2 = Numhelper(889440) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 96,-19
name = "Barrel6"
stateno = 889440
helpertype = normal
ownpal = 1
ID = 889440   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF Sodom's Back Alley trash can #1
[State -2, trashcan#1 SBA ff]
type = Helper
trigger1 = stagevar(info.name) = "Sodom's Back Alley"
trigger1 = Numhelper(889458) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Sodom's Back Alley"
trigger2 = Numhelper(889458) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 29,-19
name = "SBAtrashcan1"
stateno = 889458
helpertype = normal
ownpal = 1
ID = 889458   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF Sodom's Back Alley trash can #2 empty
[State -2, trashcan#1 subway ff]
type = Helper
trigger1 = stagevar(info.name) = "Sodom's Back Alley"
trigger1 = Numhelper(889467) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Sodom's Back Alley"
trigger2 = Numhelper(889467) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -27,-19
name = "SBAtrashcan1"
stateno = 889467
helpertype = normal
ownpal = 1
ID = 889467   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;-------------------------------------------
;FF Subway Station stuff
[State -2, telephonebooth subway ff]
type = Helper
triggerall = teamside = 2
trigger1 = stagevar(info.name) = "Subway Station - FF"
trigger1 = Numhelper(889180) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Subway Station - FF"
trigger2 = Numhelper(889180) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,14
name = "telephone1"
stateno = 889180
helpertype = normal
ownpal = 1
ID = 889180   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF subway station trash can #1
[State -2, trashcan#1 subway ff]
type = Helper
triggerall = teamside = 2
trigger1 = stagevar(info.name) = "Subway Station - FF"
trigger1 = Numhelper(889195) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Subway Station - FF"
trigger2 = Numhelper(889195) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "telephone1"
stateno = 889195
helpertype = normal
ownpal = 1
ID = 889195   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF subway station trash can #2 empty
[State -2, trashcan#1 subway ff]
type = Helper
triggerall = teamside = 2
trigger1 = stagevar(info.name) = "Subway Station - FF"
trigger1 = Numhelper(889205) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Subway Station - FF"
trigger2 = Numhelper(889205) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,16
name = "telephone1"
stateno = 889205
helpertype = normal
ownpal = 1
ID = 889205   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;------------------------
;FF West Side stuff
[State -2, barrel1WestSide1Bar]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Westside_Bar"
trigger1 = Numhelper(889440) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Westside_Bar"
trigger2 = Numhelper(889440) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -448,-15   ;602,-15
name = "Barrel1"
stateno = 889440
helpertype = normal
ownpal = 1
ID = 889440   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, barrel2WestSide2Bar]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Westside_Bar"
trigger1 = Numhelper(889680) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Westside_Bar"
trigger2 = Numhelper(889680) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -505,-15  ;545,-15
name = "Barrel2"
stateno = 889680
helpertype = normal
ownpal = 1
ID = 889680   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, TrashcanWestSide1_Bar]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Westside_Bar"
trigger1 = Numhelper(889690) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Westside_Bar"
trigger2 = Numhelper(889690) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 217,-14  ;1267,-14
name = "trashcanWSEnergy"
stateno = 889690
helpertype = normal
ownpal = 1
ID = 889690   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, TrashcanWestSide2Bar]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Westside_Bar"
trigger1 = Numhelper(889700) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Westside_Bar"
trigger2 = Numhelper(889700) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 265,-14   ;1315,-14
name = "trashcanWSEmpty"
stateno = 889700
helpertype = normal
ownpal = 1
ID = 889700   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, TrashcanWestSide3Bar]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Westside_Bar"
trigger1 = Numhelper(889706) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Westside_Bar"
trigger2 = Numhelper(889706) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -720,23   ;330,23
name = "trashcan2WSEmpty"
stateno = 889706
helpertype = normal
ownpal = 1
ID = 889706   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, SurfSign1Club]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Westside_Club"
trigger1 = Numhelper(889743) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Westside_Club"
trigger2 = Numhelper(889743) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -350,-9
name = "Surfsign1"
stateno = 889743
helpertype = normal
ownpal = 1
ID = 889743   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, SurfSign2Club]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Westside_Club"
trigger1 = Numhelper(889749) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Westside_Club"
trigger2 = Numhelper(889749) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 762,-7
name = "Surfsign2"
stateno = 889749
helpertype = normal
ownpal = 1
ID = 889749   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, telephonebooth WestSideClub ff]
type = Helper
triggerall = teamside = 2
trigger1 = stagevar(info.name) = "Ultimate_FF_Westside_Club"
trigger1 = Numhelper(889180) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Westside_Club"
trigger2 = Numhelper(889180) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,14
name = "telephone1"
stateno = 889180
helpertype = normal
ownpal = 1
ID = 889180   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;--------------------------------------
;Captain Commando Museum LVL2 stuff
[State -2, Wall CC Museum LVL2]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger1 = Numhelper(889785) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger2 = Numhelper(889785) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -380,0
name = "CCWall1"
stateno = 889785
helpertype = normal
ownpal = 1
ID = 889785  ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;CaveWarrior SpawnerLeft
[State -2, CaveWarrior SpawnerLeft]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger1 = Numhelper(889789) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger2 = Numhelper(889789) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 1100,0
name = "CaveWarrior SpawnerLeft"
stateno = 889789
helpertype = normal
ownpal = 1
ID = 889789   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, CaveWarrior SpawnerRight]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger1 = Numhelper(889829) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger2 = Numhelper(889829) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -1500,0
name = "CaveWarrior SpawnerRight"
stateno = 889829
helpertype = normal
ownpal = 1
ID = 889829   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;CC Museum Glass
[State -2, CC Museum Glass]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger1 = Numhelper(889870) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger2 = Numhelper(889870) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 70,21
name = "CC Museum Glass"
stateno = 889870
helpertype = normal
ownpal = 1
ID = 889870   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;CC Museum Barrel
[State -2, CC Museum Barrel]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger1 = Numhelper(889880) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger2 = Numhelper(889880) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -940,-11
name = "CC Museum Barrel"
stateno = 889880
helpertype = normal
ownpal = 1
ID = 889880   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;---------------------------------------------
;Marker for Window Belger Mansion P1
[State -2, Marker for Window Belger Mansion]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger1 = Numhelper(889900) = 0
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger2 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger2 = Numhelper(889900) = 0
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
Pos = 294,0
name = "BelgersWindowMarker"
stateno = 889900
helpertype = normal
ownpal = 1
ID = 889900   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Marker for Window Belger Mansion P2
[State -2, Marker for Window Belger Mansion P2]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger1 = Numhelper(889901) = 0
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger2 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger2 = Numhelper(889901) = 0
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
Pos = -154,0  ;-1304,0
name = "BelgersWindowMarkerP2"
stateno = 889901
helpertype = normal
ownpal = 1
ID = 889901   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, BelgerMansionFinisher] ;Send Opponent out glass
type = TargetState
;triggerall=P2Dist Y =0
triggerall = facing = 1
triggerall = movehit
triggerall = stateno = [200,499]
triggerall = Enemy,Name != "Ultimate_Blob"
triggerall = Enemy,Name != "Ultimate_Pretty_Boy"
trigger1=numhelper(889900)
trigger1=abs(Rootdist X-Helper(889900),Rootdist X)=[1,400]
trigger1 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger1 =p2life=0
trigger1=MatchOver
trigger2=numhelper(889901)
trigger2=abs(Rootdist X-Helper(889901),Rootdist X)=[1,400]
trigger2 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger2 =p2life=0
trigger2=MatchOver
value = 889903
ignorehitpause = 1
persistent = 0

;------------------------
; FF Belger Mansion Barrel O' Goodies
[State -2, FF Belger Mansion Barrel O' Goodies]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger1 = Numhelper(889930) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger2 = Numhelper(889930) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 917,-9
name = "FFMetalBarrelBM1"
stateno = 889930
helpertype = normal
ownpal = 1
ID = 889930   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF Belger Mansion Barrel O' Goodies 2
[State -2, FF Belger Mansion Barrel O' Goodies2]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger1 = Numhelper(889945) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger2 = Numhelper(889945) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 887,23
name = "FFMetalBarrelBM1"
stateno = 889945
helpertype = normal
ownpal = 1
ID = 889945   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF Belger Mansion Chandalier #1
[State -2, FF Belger Mansion Chandalier #1]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger1 = Numhelper(889965) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger2 = Numhelper(889965) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 638,-146  ;-512,-146
name = "FFChandalier1"
stateno = 889965
helpertype = normal
ownpal = 1
ID = 889965   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF Belger Mansion Chandalier #2
[State -2, FF Belger Mansion Chandalier #2]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger1 = Numhelper(889968) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
trigger2 = Numhelper(889968) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 500,-146  ;-650,-146
name = "FFChandalier2"
stateno = 889968
helpertype = normal
ownpal = 1
ID = 889968   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, NoWinPoseBelger]
type = Helper
triggerall = numhelper(890287)=0
trigger1 = p2stateno = 889903
helpertype = normal ;player
name = "NoWin1"
ID = 890287
stateno = 890287
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1
size.yscale = 1
ignorehitpause = 1
persistent = 0

;--------------------------------------------------
;Factory Final Fight stage finisher stuff
[State -2, FactoryFFstagefinisher] ;Position marker player 1
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger1 = Numhelper(890160) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger2 = Numhelper(890160) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -840,0
name = "FactoryFFMarker1"
stateno = 890160
helpertype = normal
ownpal = 1
ID = 890160   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, FactoryFFstagefinisher] ;Position marker player 2
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger1 = Numhelper(890161) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger2 = Numhelper(890161) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 980,0
name = "FactoryFFMarker2"
stateno = 890161
helpertype = normal
ownpal = 1
ID = 890161   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, FactoryFFFinisherReact] ;send opponent to death
type = TargetState
triggerall = movehit
triggerall = stateno = [200,699]
trigger1=numhelper(890160)
trigger1=abs(Rootdist X-Helper(890160),Rootdist X)=[-700,700]
trigger1 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger1 =p2life=0
trigger1=MatchOver
trigger2=numhelper(890161)
trigger2=abs(Rootdist X-Helper(890161),Rootdist X)=[-700,700]
trigger2 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger2 =p2life=0
trigger2=MatchOver
value = 890165
persistent = 0
ignorehitpause = 1

[State -2, FactoryFFFinisher] ;send opponent to death
type = ChangeState
triggerall = movehit
triggerall = stateno = [200,699]
trigger1=numhelper(890160)
trigger1=abs(Rootdist X-Helper(890160),Rootdist X)=[-700,700]
trigger1 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger1 =p2life=0
trigger1=MatchOver
trigger1 = Pos Y = 0
trigger2=numhelper(890161)
trigger2=abs(Rootdist X-Helper(890161),Rootdist X)=[-700,700]
trigger2 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger2 =p2life=0
trigger2=MatchOver
trigger2 = Pos Y = 0
value = 890170
ctrl = 0
ignorehitpause = 1

;Factory Final Fight Barrel O' Goodies Health
[State -2, Factory Final Fight Barrel O' Goodies Health]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger1 = Numhelper(889930) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger2 = Numhelper(889930) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -717,-5
name = "FFMetalBarrelBM2"
stateno = 889930
helpertype = normal
ownpal = 1
ID = 889930   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, Factory Final Fight Barrel O' Goodies Health]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger1 = Numhelper(890175) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger2 = Numhelper(890175) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -1127,-7
name = "FFMetalBarrelBM2a"
stateno = 890175
helpertype = normal
ownpal = 1
ID = 890175   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Factory Final Fight Barrel O' Goodies 2 Energy
[State -2, Factory Final Fight Barrel O' Goodies2Energy]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger1 = Numhelper(889945) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger2 = Numhelper(889945) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -450,15
name = "FFMetalBarrelBM2b"
stateno = 889945
helpertype = normal
ownpal = 1
ID = 889945   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Factory Final Fight Fire Flair Left
[State -2, Factory Final Fight Fire Flair]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger1 = Numhelper(890180) = 0
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger2 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger2 = Numhelper(890180) = 0
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
Pos = -1126,15
name = "FireFlairFF"
stateno = 890180
helpertype = normal
ownpal = 1
ID = 890180   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Factory Final Fight Fire Flair Right
[State -2, Factory Final Fight Fire Flair]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger1 = Numhelper(890181) = 0
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger2 = stagevar(info.name) = "Ultimate_Factory_FF"
trigger2 = Numhelper(890181) = 0
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
Pos = -615,15
name = "FireFlairFF"
stateno = 890181
helpertype = normal
ownpal = 1
ID = 890181   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;-----------------------------------------------------------
;TMNT Surf Board A Mysterious Ocean Teamside 1
[State -2, TMNTSurfBoardMysteriousOcean]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = Numhelper(890075) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
;trigger1 = TeamMode != Simul
;trigger1 = Pos Y = 0
;trigger2 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
;trigger2 = Numhelper(889500) = 0   ;Numhelper and ID have to be the same
;trigger2 = teamside = 1
;trigger2 = TeamMode = Simul
;trigger2 = numpartner = 1 && id<partner,id
;trigger2 = Pos Y = 0
Pos = 0,0
name = "TMNTSurfBoard1"
stateno = 890075
helpertype = normal
ownpal = 1
ID = 890075   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;TMNT Surf Board A Mysterious Ocean Teamside 2
[State -2, TMNTSurfBoardMysteriousOcean]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = Numhelper(890080) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
;trigger1 = TeamMode != Simul
;trigger1 = Pos Y = 0
;trigger2 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
;trigger2 = Numhelper(889500) = 0   ;Numhelper and ID have to be the same
;trigger2 = teamside = 1
;trigger2 = TeamMode = Simul
;trigger2 = numpartner = 1 && id<partner,id
;trigger2 = Pos Y = 0
Pos = 0,0
name = "TMNTSurfBoard1"
stateno = 890080
helpertype = normal
ownpal = 1
ID = 890080   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -3, TMNTMysteriousOceanSplash]
type = PlaySnd
triggerall = Time = 1
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = stateno = 52 ;Jump land
value = F92,0 + random%2

[State -2, TMNTMysteriousOceanSpawner]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = Numhelper(890085) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger2 = Numhelper(890085) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -400,0
name = "QuestionEnergyTMNT"
stateno = 890085
helpertype = normal
ownpal = 1
ID = 890085   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;-----------------------------------------------------------
; Water Splash TMNT Pirate Ship stage
[State -2, watersplashfall]
type = Explod
trigger1 = time = 1
trigger1 = stagevar(info.name) = "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
trigger1 = stateno = 5100 || stateno = 5110
anim = F80165
;ID = 80165
pos = 20,7
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 15
supermovetime = 99999
pausemovetime = 99999
scale = 1.5,1.5
sprpriority = 7
ontop = 0
ownpal = 1
removeongethit = 0

[State -2, watersplashfall]
type = Explod
trigger1 = time = 1
trigger1 = stagevar(info.name) = "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
trigger1 = stateno = 5100 || stateno = 5110
anim = F80165
;ID = 80165
pos = -20,7
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 15
supermovetime = 99999
pausemovetime = 99999
scale = 1.5,1.5
sprpriority = 7
ontop = 0
ownpal = 1
removeongethit = 0

[State -2, watersplashjump]
type = Explod
trigger1 = time = 1
trigger1 = stagevar(info.name) = "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
trigger1 = stateno = 40 || stateno = 52
anim = F80165
;ID = 80165
pos = 0,4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 15
supermovetime = 99999
pausemovetime = 99999
scale = 1.5,1.5
sprpriority = 7
ontop = 0
ownpal = 1
removeongethit = 0

[State -3, SplashJump]
type = PlaySnd
triggerall = Time = 1
trigger1 = stagevar(info.name) = "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
trigger1 = stateno = 40 ;Jump land
trigger2 = stagevar(info.name) = "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
trigger2 = stateno = 52 ;Run-back land
trigger3 = stagevar(info.name) = "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
trigger3 = stateno = 5100 || stateno = 5110
value = F92, 2

;--------------------------------------------------
;Syrian Desert Refinery stage finisher stuff
[State -2, OilRefineryECstagefinisher] ;Position marker player 1
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger1 = Numhelper(890300) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger2 = Numhelper(890300) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
postype = left
Pos = 660,0
name = "ORECMarker1"
stateno = 890300
helpertype = normal
ownpal = 1
ID = 890300   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, OilRefineryECstagefinisher] ;Position marker player 2
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger1 = Numhelper(890301) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger2 = Numhelper(890301) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
postype = left
Pos = 660,0
name = "ORECMarker2"
stateno = 890301
helpertype = normal
ownpal = 1
ID = 890301   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, OilRefineryFinisher2React] ;send opponent to death Fan
type = TargetState
triggerall = life >=0
triggerall = movehit
triggerall = stateno = [200,699]
trigger1=numhelper(890300)
trigger1=abs(Rootdist X-Helper(890300),Rootdist X)=[510,770]
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger1 =p2life=0
trigger1=MatchOver
trigger2=numhelper(890301)
trigger2=abs(Rootdist X-Helper(890301),Rootdist X)=[510,770]
trigger2 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger2 =p2life=0
trigger2=MatchOver
value = 890302
persistent = 0
ignorehitpause = 1

[State -2, Time Warp3] ;player 1 go to time warp
type = ChangeState
triggerall = life >=0
triggerall = movehit
trigger1=numhelper(890300)
trigger1=abs(Rootdist X-Helper(890300),Rootdist X)=[510,770]
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger1 =p2life=0
trigger1=MatchOver
;;trigger1=P2Dist Y =0
trigger2=numhelper(890301)
trigger2=abs(Rootdist X-Helper(890301),Rootdist X)=[510,770]
trigger2 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger2 =p2life=0
trigger2=MatchOver
;;trigger2=P2Dist Y =0
value = 889493
ctrl = 0

[State -2, EternalChampionsFinishers]
type = AssertSpecial
triggerall = life >=0
trigger1=numhelper(890300)
trigger1=abs(Rootdist X-Helper(890300),Rootdist X)=[510,770]
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger1 =p2life=0
trigger1=MatchOver
;;trigger1=P2Dist Y =0
trigger2=numhelper(890301)
trigger2=abs(Rootdist X-Helper(890301),Rootdist X)=[510,770]
trigger2 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger2 =p2life=0
trigger2=MatchOver
flag = nokoslow

;-----Finisher2 Oil Refinery EC Acid

[State -2, OilRefineryFinisher2React] ;send opponent to death
type = TargetState
triggerall = life >=0
triggerall = movehit
triggerall = stateno = [200,699]
trigger1=numhelper(890300)
trigger1=abs(Rootdist X-Helper(890300),Rootdist X)=[180,410]
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger1 =p2life=0
trigger1=MatchOver
trigger2=numhelper(890301)
trigger2=abs(Rootdist X-Helper(890301),Rootdist X)=[180,410]
trigger2 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger2 =p2life=0
trigger2=MatchOver
value = 890305
persistent = 0
ignorehitpause = 1

[State -2, Time Warp3] ;player 1 go to time warp
type = ChangeState
triggerall = life >=0
triggerall = movehit
trigger1=numhelper(890300)
trigger1=abs(Rootdist X-Helper(890300),Rootdist X)=[180,410]
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger1 =p2life=0
trigger1=MatchOver
;trigger1=P2Dist Y =0
trigger2=numhelper(890301)
trigger2=abs(Rootdist X-Helper(890301),Rootdist X)=[180,410]
trigger2 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
trigger2 =p2life=0
trigger2=MatchOver
;trigger2=P2Dist Y =0
value = 889493
ctrl = 0

;----------------------------------------------
; Belgrave Square Labs Finishers
[State -2, Death Chamber]
type = Helper
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1 = Numhelper(889480) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Belgrave Square Labs"
trigger2 = Numhelper(889480) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 69,0
name = "DeathChamber1"
stateno = 889480
helpertype = normal
ownpal = 1
ID = 889480   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, Death Chamber2]
type = Helper
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1 = Numhelper(889481) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Belgrave Square Labs"
trigger2 = Numhelper(889481) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 69,0
name = "DeathChamber2"
stateno = 889481
helpertype = normal
ownpal = 1
ID = 889481   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, Vapor Chamber]
type = Helper
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1 = Numhelper(889482) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Belgrave Square Labs"
trigger2 = Numhelper(889482) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -85,0
name = "VaporChamber1"
stateno = 889482
helpertype = normal
ownpal = 1
ID = 889482   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, Vapor Chamber2]
type = Helper
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1 = Numhelper(889483) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Belgrave Square Labs"
trigger2 = Numhelper(889483) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 228,0
name = "VaporChamber2"
stateno = 889483
helpertype = normal
ownpal = 1
ID = 889483   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, Vapor Chamber Camera Marker]
type = Helper
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1 = Numhelper(889478) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Belgrave Square Labs"
trigger2 = Numhelper(889478) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 184,0
name = "VaporChamber3"
stateno = 889478
helpertype = normal
ownpal = 1
ID = 889478   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, Vapor Chamber Camera Marker2]
type = Helper
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1 = Numhelper(889479) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Belgrave Square Labs"
trigger2 = Numhelper(889479) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = -41,0
name = "VaporChamber4"
stateno = 889479
helpertype = normal
ownpal = 1
ID = 889479   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, Belgrave Square Labs] ;send opponent to Death Chamber
type = TargetState
triggerall = movehit
triggerall = stateno = [200,499]
trigger1=numhelper(889480)
trigger1=abs(Rootdist X-Helper(889480),Rootdist X)=[-60,60]
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1 =p2life=0
trigger1=MatchOver
trigger1=P2Dist Y =0
trigger2=numhelper(889481)
trigger2=abs(Rootdist X-Helper(889481),Rootdist X)=[-60,60]
trigger2 = stagevar(info.name) = "Belgrave Square Labs"
trigger2 =p2life=0
trigger2=MatchOver
trigger2=P2Dist Y =0
value = 889485
persistent = 0

[State -2, Time Warp] ;player 1 go to time warp
type = ChangeState
triggerall = movehit
trigger1=numhelper(889480)
trigger1=abs(Rootdist X-Helper(889480),Rootdist X)=[-60,60]
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1 =p2life=0
trigger1=MatchOver
trigger1=P2Dist Y =0
trigger2=numhelper(889481)
trigger2=abs(Rootdist X-Helper(889481),Rootdist X)=[-60,60]
trigger2 = stagevar(info.name) = "Belgrave Square Labs"
trigger2 =p2life=0
trigger2=MatchOver
trigger2=P2Dist Y =0
value = 889493
ctrl = 0

[State -2, Belgrave Square Labs2] ;send opponent to Vapor Chamber
type = TargetState
triggerall = movehit
triggerall = stateno = [200,499]
trigger1=numhelper(889482)
trigger1=abs(Rootdist X-Helper(889482),Rootdist X)=[-50,50]
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1 =p2life=0
trigger1=MatchOver
trigger1=P2Dist Y =0
trigger2=numhelper(889483)
trigger2=abs(Rootdist X-Helper(889483),Rootdist X)=[-50,50]
trigger2 = stagevar(info.name) = "Belgrave Square Labs"
trigger2 =p2life=0
trigger2=MatchOver
trigger2=P2Dist Y =0
value = 889494
persistent = 0

[State -2, Time Warp2] ;player 1 go to Time Warp
type = ChangeState
triggerall = movehit
trigger1=numhelper(889482)
trigger1=abs(Rootdist X-Helper(889482),Rootdist X)=[-50,50]
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1 =p2life=0
trigger1=MatchOver
trigger1=P2Dist Y =0
trigger2=numhelper(889483)
trigger2=abs(Rootdist X-Helper(889483),Rootdist X)=[-50,50]
trigger2 = stagevar(info.name) = "Belgrave Square Labs"
trigger2 =p2life=0
trigger2=MatchOver
trigger2=P2Dist Y =0
value = 889498
ctrl = 0

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = 1
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
trigger1  = roundno != 1
flag = nokoslow

;------------------------------------------------------
;Water Splash Amazon stage
[State -2, Amazonwatersplashfall]
type = Explod
trigger1 = time = 1
trigger1 = stagevar(info.name) = "Ultimate_MSHWotG_Amazon"
trigger1 = stateno = 5100 || stateno = 5110
anim = F137
ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 17
scale = 1,1
sprpriority = 7
ontop = 0
ownpal = 1
removeongethit = 0

[State -2, Amazonwatersplashjump]
type = Explod
triggerall = anim !=7448
triggerall = Pos Y >= -2
triggerall = stateno = 40 || stateno = 52
triggerall = stagevar(info.name) = "Ultimate_MSHWotG_Amazon"
trigger1 = time = 1
anim = F137
ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 14
scale = 1,1
sprpriority = 7
ontop = 0
ownpal = 1
removeongethit = 0
persistent = 0

[State -2, AmazonwatersplashIdle]
type = Explod
trigger1 = NumExplod(77446) = 0
trigger1 = Pos Y = 0
trigger1 = stagevar(info.name) = "Ultimate_MSHWotG_Amazon"
anim = F138
ID = 77446
pos = 0,-12
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 7
ontop = 0
ownpal = 1
removeongethit = 0

[State -2, AmazonRemoveWater]
type = RemoveExplod
trigger1 = Pos Y <= -1
trigger1 = time >=0
id = 77446

[State -2, AmazonBigSplash]
type = PlaySnd
trigger1 = time = 1
trigger1 = stagevar(info.name) = "Ultimate_MSHWotG_Amazon"
trigger1 = stateno = 5100 || stateno = 5110
value = F93,random%2

[State -2, AmazonJumpSplash]
type = PlaySnd
trigger1 = time = 1
trigger1 = stagevar(info.name) = "Ultimate_MSHWotG_Amazon"
trigger1 = stateno = 40 ;|| stateno = 52
value = F92,0

[State -2, AmazonLandSplash]
type = PlaySnd
trigger1 = time = 1
trigger1 = stagevar(info.name) = "Ultimate_MSHWotG_Amazon"
trigger1 = stateno = 52
value = F92,1

;-------------------------------------------
[State -2, WaterfrontVendettaFinisherReact] ;send opponent to death
type = TargetState
triggerall = movehit
triggerall = stateno = [200,699]
trigger1 = stagevar(info.name) = "Ultimate_V_Waterfront"
trigger1 =p2life=0
trigger1=MatchOver
value = 890720
persistent = 0
ignorehitpause = 1

;Waterfront FF Barrels
[State -2, WaterfrontFFBarrels]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_V_Waterfront"
trigger1 = Numhelper(889120) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_V_Waterfront"
trigger2 = Numhelper(889120) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "FFBarrel1"
stateno = 889120
helpertype = normal
ownpal = 1
ID = 889120   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Waterfront FF Barrels #2
[State -2, WaterfrontFFBarrels]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_V_Waterfront"
trigger1 = Numhelper(889140) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_V_Waterfront"
trigger2 = Numhelper(889140) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "FFBarrel2"
stateno = 889140
helpertype = normal
ownpal = 1
ID = 889140   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Waterfront FF Barrels #3
[State -2, WaterfrontFFBarrels]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_V_Waterfront"
trigger1 = Numhelper(889150) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_V_Waterfront"
trigger2 = Numhelper(889150) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,21
name = "FFBarrel3"
stateno = 889150
helpertype = normal
ownpal = 1
ID = 889150   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Waterfront FF Barrels #4
[State -2, WaterfrontFFBarrels]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_V_Waterfront"
trigger1 = Numhelper(889170) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_V_Waterfront"
trigger2 = Numhelper(889170) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,21
name = "FFBarrel4"
stateno = 889170
helpertype = normal
ownpal = 1
ID = 889170   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;-----------------------------------------
;Ultimate_V_Piltdown_Storage Barrels
[State -2, PiltdownFFBarrels]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_V_Piltdown_Storage"
trigger1 = Numhelper(889120) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_V_Piltdown_Storage"
trigger2 = Numhelper(889120) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "FFBarrel1"
stateno = 889120
helpertype = normal
ownpal = 1
ID = 889120   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Ultimate_V_Piltdown_Storage Barrels #2
[State -2, PiltdownFFBarrels]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_V_Piltdown_Storage"
trigger1 = Numhelper(889140) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_V_Piltdown_Storage"
trigger2 = Numhelper(889140) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "FFBarrel2"
stateno = 889140
helpertype = normal
ownpal = 1
ID = 889140   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Ultimate_V_Piltdown_Storage Barrels #3
[State -2, PiltdownFFBarrels]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_V_Piltdown_Storage"
trigger1 = Numhelper(889150) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_V_Piltdown_Storage"
trigger2 = Numhelper(889150) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,21
name = "FFBarrel3"
stateno = 889150
helpertype = normal
ownpal = 1
ID = 889150   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Ultimate_V_Piltdown_Storage FF Barrels #4
[State -2, PiltdownFFBarrels]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_V_Piltdown_Storage"
trigger1 = Numhelper(889170) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_V_Piltdown_Storage"
trigger2 = Numhelper(889170) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,21
name = "FFBarrel4"
stateno = 889170
helpertype = normal
ownpal = 1
ID = 889170   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;---------------------------------------------------------
;Ninja_Warriors_Dystopia_Transformers
[State -2, DystopiaNWTransformer1]
type = Helper
triggerall = time = 1
triggerall = RoundState = 2
triggerall = TeamSide = 1
trigger1 = stagevar(info.name) = "Ultimate_NW_Dystopia"
trigger1 = Numhelper(890740) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger2 = stagevar(info.name) = "Ultimate_NW_Dystopia"
trigger2 = Numhelper(890740) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
Pos = 392,-90
name = "NWTransformer1"
stateno = 890740
helpertype = normal
ownpal = 1
ID = 890740   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;-----------------------------------------
;Septic Lair stage finisher
[State -2, SepticLairStageFinisher] ;send opponent to Death Chamber
type = TargetState
triggerall = movehit
trigger1 = stagevar(info.name) = "Ultimate_Septic_Lair"
trigger1=MatchOver
trigger1 = StateType != A
value = 889660
persistent = 0

[State -2, SepticLairStageFinisher] ;player 1 go to time warp
type = ChangeState
triggerall = movehit
trigger1 = stagevar(info.name) = "Ultimate_Septic_Lair"
trigger1=MatchOver
trigger1 = StateType != A
value = 889658
ctrl = 0

[State -2, SepticLairStageFinisher]
type = assertspecial
trigger1  = roundno != 1
trigger1 = stagevar(info.name) = "Ultimate_Septic_Lair"
flag = nokosnd

;----------------------------------------
;Violent Voyage SoR2 stage finisher stuff
[State -2, AssertSpecial]
type = AssertSpecial
triggerall = p2stateno = 890282
trigger1 = 1
flag = nokoslow
;flag2 = invisible
;flag3 = roundnotover
ignorehitpause = 1
persistent = 1

[State -2, StageFinisherViolentVoyage]
type = TargetState
triggerall = movehit
triggerall = stateno = [200,699]
trigger1 = stagevar(info.name) = "Ultimate_SoR2_Violent_Voyage"
trigger1 =p2life=0
trigger1=MatchOver
trigger1 = P2stateno !=890282
value = 890282
ignorehitpause = 1
persistent = 0

;Violent Voyage SoR2 stage finisher stuff
[State -2, SoR2ViolentVoyageFinisher] ;Position marker player 1
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_SoR2_Violent_Voyage"
trigger1 = Numhelper(890280) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_SoR2_Violent_Voyage"
trigger2 = Numhelper(890280) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
postype = left
Pos = -250,0
name = "BCECMarker1"
stateno = 890280
helpertype = normal
ownpal = 1
ID = 890280   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, BarbarCoastECstagefinisher] ;Position marker player 2
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_SoR2_Violent_Voyage"
trigger1 = Numhelper(890281) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 2
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_SoR2_Violent_Voyage"
trigger2 = Numhelper(890281) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 2
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
postype = left
Pos = -250,0
name = "BCECMarker2"
stateno = 890281
helpertype = normal
ownpal = 1
ID = 890281   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

[State -2, WinIndicator]
type = Helper
trigger1 = p2stateno = 890282
helpertype = normal ;player
name = "WinIndicatorVilentVoyage"
ID = 890287
stateno = 890287
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
;size.xscale =
;size.yscale =
ignorehitpause = 1
;persistent =

;-----------------------------------------------
;Sentinel Factory Fire Flair 1
[State -2, Factory Final Fight Fire Flair]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Sentinel_Factory"
trigger1 = Numhelper(890780) = 0
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger2 = stagevar(info.name) = "Ultimate_Sentinel_Factory"
trigger2 = Numhelper(890780) = 0
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
postype = left
Pos = -396,-3
name = "FireFlairXMen1"
stateno = 890780
helpertype = normal
ownpal = 1
ID = 890780   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Sentinel Factory Fire Flair 2
[State -2, Factory Final Fight Fire Flair]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Sentinel_Factory"
trigger1 = Numhelper(890781) = 0
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger2 = stagevar(info.name) = "Ultimate_Sentinel_Factory"
trigger2 = Numhelper(890781) = 0
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
postype = left
Pos = -588,-3
name = "FireFlairXMen2"
stateno = 890781
helpertype = normal
ownpal = 1
ID = 890781   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;---------------------------------------------------------
[State -2, TopOfElevatorDynamiteSpawner]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Punisher_Atop_The_Elevador"
trigger1 = Numhelper(890790) = 0   ;Numhelper and ID have to be the same
trigger1 = teamside = 1
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Punisher_Atop_The_Elevador"
trigger2 = Numhelper(890790) = 0   ;Numhelper and ID have to be the same
trigger2 = teamside = 1
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,0
name = "PunisherDynamite1"
stateno = 890790
helpertype = normal
ownpal = 1
ID = 890790   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Elevator Top Barrel #1
[State -2, ElevatorTopBarrel1]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_Punisher_Atop_The_Elevador"
trigger1 = Numhelper(889120) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Punisher_Atop_The_Elevador"
trigger2 = Numhelper(889120) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "FFBarrel1"
stateno = 889120
helpertype = normal
ownpal = 1
ID = 889120   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;Elevator Top Barrel #2
[State -2, ElevatorTopBarrel2]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_Punisher_Atop_The_Elevador"
trigger1 = Numhelper(889140) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_Punisher_Atop_The_Elevador"
trigger2 = Numhelper(889140) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "FFBarrel2"
stateno = 889140
helpertype = normal
ownpal = 1
ID = 889140   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;-----------------------------------------
;FF Bay Area Dusk
[State -2, barrel ff]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_FF_Bay_Area_Dusk"
trigger1 = Numhelper(889120) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Bay_Area_Dusk"
trigger2 = Numhelper(889120) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "FFBarrel1"
stateno = 889120
helpertype = normal
ownpal = 1
ID = 889120   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF Dusk barrel #2
[State -2, barrel ff2]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_FF_Bay_Area_Dusk"
trigger1 = Numhelper(889140) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Bay_Area_Dusk"
trigger2 = Numhelper(889140) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,-3
name = "FFBarrel2"
stateno = 889140
helpertype = normal
ownpal = 1
ID = 889140   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF Dusk barrel #3
[State -2, barrel ff3]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_FF_Bay_Area_Dusk"
trigger1 = Numhelper(889150) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Bay_Area_Dusk"
trigger2 = Numhelper(889150) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,21
name = "FFBarrel3"
stateno = 889150
helpertype = normal
ownpal = 1
ID = 889150   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF Dusk barrel #4
[State -2, barrel ff4]
type = Helper
triggerall = TeamSide = 2
trigger1 = stagevar(info.name) = "Ultimate_FF_Bay_Area_Dusk"
trigger1 = Numhelper(889170) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Bay_Area_Dusk"
trigger2 = Numhelper(889170) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,21
name = "FFBarrel4"
stateno = 889170
helpertype = normal
ownpal = 1
ID = 889170   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;FF Dusk stuff
[State -2, telephonebooth ff]
type = Helper
triggerall = teamside = 2
trigger1 = stagevar(info.name) = "Ultimate_FF_Bay_Area_Dusk"
trigger1 = Numhelper(889180) = 0   ;Numhelper and ID have to be the same
trigger1 = TeamMode != Simul
trigger1 = Pos Y = 0
trigger2 = stagevar(info.name) = "Ultimate_FF_Bay_Area_Dusk"
trigger2 = Numhelper(889180) = 0   ;Numhelper and ID have to be the same
trigger2 = TeamMode = Simul
trigger2 = numpartner = 1 && id<partner,id
trigger2 = Pos Y = 0
Pos = 0,14
name = "telephone1"
stateno = 889180
helpertype = normal
ownpal = 1
ID = 889180   ;Numhelper and ID have to be the same
size.xscale = 1.0
size.yscale = 1.0

;-----------------------------------
;^^^^^^^^^Interactive Stuff^^^^^^^^^
;-----------------------------------



