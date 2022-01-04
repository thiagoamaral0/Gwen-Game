
;---------------------------------------------------------------------------
;                        Interactive Mugen 3.0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Knife Final Fight 1
[Statedef 7500]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 7000                       ;Change animation (Def: no change)
poweradd = 5                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 7500, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 0, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = ;MA
affectteam = B          ;B,E,F                  ;Flags on how move is to be guarded against
hitflag = MA                    ;Flags of conditions that move can hit
priority = 7, Hit
getpower = 0,0
givepower = 0,0                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0, 0                 ;Time attacker pauses, time opponent shakes
sparkno = S6051                      ;Spark anim no (Def: set above)
sparkxy = -20, -87
guard.sparkno = S6868               ;X-offset for the "hit spark" rel. to p2,
hitsound = S2, 15                  ;Sound to play on hit
guardsound = S1, 1                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 11             ;Time that the opponent slides back
ground.hittime  = 12             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 15
Guard.HitTime = 19
guard.dist = 0
P2StateNo = 7510
hitonce = 1

[State 7500, DestroySelf]
type = DestroySelf
trigger1 = movecontact
ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
;Knife Final Fight 1 React
[Statedef 7510]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = C                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1000                       ;Change animation (Def: no change)
poweradd = 5                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

;[State 7510, AngleDraw]
;type = AngleDraw
;triggerall = name = "Ultimate_Haggar"
;triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
;trigger1 = time >=1
;value = 1
;scale = 1.3,1
;ignorehitpause = 1
;;persistent =

[State 7510, Jail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 1001
;ignorehitpause =
;persistent =

[State 7510, FF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 1001
;ignorehitpause =
;persistent =

[State 7510, PrettyBoy25]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 3
trigger1 = time = 0
value = 1009
;ignorehitpause =
;persistent =

[State 7510, PrettyBoy50]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 2
trigger1 = time = 0
value = 1008
;ignorehitpause =
;persistent =

[State 7510, PrettyBoy75]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 1
trigger1 = time = 0
value = 1007
;ignorehitpause =
;persistent =

[State 7510, FlameGolem]
type = ChangeAnim
triggerall = name = "Ultimate_Blob"
triggerall = Var(50) = 1
trigger1 = time = 0
value = 933
;ignorehitpause =
;persistent =

[State 7510, VarSet]
type = VarSet
trigger1 = time = 0
v = 3   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7510, VarSet]
type = VarSet
trigger1 = time = 0
v = 2   ;fv = 10
value = 1
;ignorehitpause =
;persistent =

[State 7510, KnifeSpawn]
type = Helper
Triggerall = Var(40) = 3
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7510, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Poacher_Joe"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7510, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Warblade"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7510, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Kruel_Kurt"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7510, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Mizuki"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7510, KnifeSpawn]
type = Helper
triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7510, Grab]
type = PlaySnd
trigger1 = time = 0
value = F83,0
;ignorehitpause =
;persistent =

[State 7510, VarSet] ;Can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 3
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7510, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Poacher_Joe"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7510, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Warblade"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7510, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Kruel_Kurt"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7510, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Mizuki"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7510, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7510, Knife]
type = PlaySnd
trigger1 = time = 3
value = F106,random%2
;ignorehitpause =
;persistent =

[State 7510, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Musashi"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 7510, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Sodom"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 7510, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Yamato"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 7510, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Mardia"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 7510, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Knife Final Fight 1
[Statedef 7520]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 7000                       ;Change animation (Def: no change)
poweradd = 5                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 7520, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 0, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = ;MA
affectteam = B          ;B,E,F                  ;Flags on how move is to be guarded against
hitflag = MA                    ;Flags of conditions that move can hit
priority = 7, Hit
getpower = 0,0
givepower = 0,0                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0, 0                 ;Time attacker pauses, time opponent shakes
sparkno = S6051                      ;Spark anim no (Def: set above)
sparkxy = -20, -87
guard.sparkno = S6868               ;X-offset for the "hit spark" rel. to p2,
hitsound = S2, 15                  ;Sound to play on hit
guardsound = S1, 1                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 11             ;Time that the opponent slides back
ground.hittime  = 12             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 15
Guard.HitTime = 19
guard.dist = 0
P2StateNo = 7530
hitonce = 1

[State 7520, DestroySelf]
type = DestroySelf
trigger1 = movecontact
ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
;Knife Final Fight 1 React
[Statedef 7530]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = C                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1000                       ;Change animation (Def: no change)
poweradd = 5                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

;[State 7530, AngleDraw]
;type = AngleDraw
;triggerall = name = "Ultimate_Haggar"
;triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
;trigger1 = time >=1
;value = 1
;scale = 1.3,1
;ignorehitpause = 1
;;persistent =

[State 7530, Jail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 1001
;ignorehitpause =
;persistent =

[State 7530, FF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 1001
;ignorehitpause =
;persistent =

[State 7530, PrettyBoy25]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 3
trigger1 = time = 0
value = 1009
;ignorehitpause =
;persistent =

[State 7530, PrettyBoy50]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 2
trigger1 = time = 0
value = 1008
;ignorehitpause =
;persistent =

[State 7530, PrettyBoy75]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 1
trigger1 = time = 0
value = 1007
;ignorehitpause =
;persistent =

[State 7530, FlameGolem]
type = ChangeAnim
triggerall = name = "Ultimate_Blob"
triggerall = Var(50) = 1
trigger1 = time = 0
value = 933
;ignorehitpause =
;persistent =

[State 7530, VarSet]
type = VarSet
trigger1 = time = 0
v = 3   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7530, VarSet]
type = VarSet
trigger1 = time = 0
v = 2   ;fv = 10
value = 1
;ignorehitpause =
;persistent =

[State 7530, KnifeSpawn]
type = Helper
Triggerall = Var(40) = 3
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7530, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Poacher_Joe"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7530, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Warblade"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7530, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Kruel_Kurt"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7530, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Mizuki"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7530, KnifeSpawn]
type = Helper
triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 7530, Grab]
type = PlaySnd
trigger1 = time = 0
value = F83,0
;ignorehitpause =
;persistent =

[State 7530, VarSet] ;Can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 3
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7530, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Poacher_Joe"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7530, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Warblade"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7530, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Kruel_Kurt"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7530, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Mizuki"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7530, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 7530, Knife]
type = PlaySnd
trigger1 = time = 3
value = F106,random%2
;ignorehitpause =
;persistent =

[State 7530, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Musashi"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 7530, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Sodom"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 7530, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Yamato"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 7530, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Mardia"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 7530, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Knife Drop
[Statedef 9100]
type = A
movetype = I
physics = N
ctrl = 0
anim = 9100 ;Knife
velset = 0,0
sprpriority = 5

[State 9100, AngleAdd]
Type = AngleAdd
trigger1= time >=0
trigger1 = Pos Y <= 14
Value = -8

[State 9100, AngleDraw]
Type = AngleDraw
trigger1 = time>=0
trigger1 = Pos Y <= 14
;scale=1,1

[State 9100, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = -4

[State 9100, VelAdd]
type = VelAdd
trigger1 = time >= 0
y = 0.23

[State 9100, VelSet]
type = VelSet
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time = 0
x = 0
y = 0

[State 9100, VelAdd]
type = VelAdd
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >= 4
y = 0

[State 9100, KnifeOut]
type = PlaySnd
trigger1 = time = 0
value = F106,random%2
;ignorehitpause =
persistent = 0

[State 9100, KnifeGround]
type = PlaySnd
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=4
value = F105,0
;ignorehitpause =
persistent = 0

[State 9100, ChangeState]
type = ChangeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=4
value = 889162
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;----------------------------------------------
;VVVVVVVVVElectro's Interactive CodeVVVVVVVVVVV
;----------------------------------------------

;----------------------------------
;Barrel O goodies for "Subway Train FF" #1
[Statedef 889120]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
sprpriority = -5

[State 889120, PosSet] ;random position for barrel spawn
type = PosSet
trigger1 = time = 0
X = -640 + random%1282;-320 + random%641

[State 889120, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889120, Barrel]
type = Explod
trigger1 = time = 0
anim = F89007
ID = 65654
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 0

[State 889120, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889120, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889121

[State 889120, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889121
ctrl = 0

;----------------------------------
;Barrel O goodies for "Subway Train FF" stage + Health Cont...
[Statedef 889121]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 20

[State 889121, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889121, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889121, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889122

[State 889121, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,50] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889122
ctrl = 0

;----------------------------------
;   Barrel O goodies for "Subway Train FF" stage + Health Cont...
[Statedef 889122]
type    = S
movetype= I;A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 20

[State 889122, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889122, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889122, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889123

[State 889122, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889123
ctrl = 0

;------------------------------
;broken barrel + health Broken
[Statedef 889123]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 15
sprpriority = 20

[State 889123, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889123, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 65654

[State 889123, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F33,random%4

[State 889123, barrel bottom]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889123
helpertype = Normal
ID = 889126
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889126
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889123, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889123
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889123, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889123
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889123, wood piece square]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889123
helpertype = Normal
ID = 889127
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889127
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889123, wood piece medium]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889123
helpertype = Normal
ID = 889129
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889129
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889123, wood piece small]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889123
helpertype = Normal
ID = 889130
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889130
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889123, wood piece small]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889123
helpertype = Normal
ID = 889131
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889131
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889123, goodie]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889123
helpertype = Normal
ID = 889160
name = "FInalFightGoodie1"
postype = P1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889123, 7] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889120
ctrl = 0

;-------------------------------------------------------------
;wood Drop big
[Statedef 889124]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889124, Explod]
type = Explod
trigger1 = time = 0
anim = F89009
ID = 889124
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 889124]
type = VarRandom
trigger1 = 1
v = 0
range = -1,-6

[State 889124]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889124]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889124]
type = veladd
trigger1 = time >= 1
y = .3

[State 889124]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889125

;-------------------------------
;wood on ground
[Statedef 889125]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800

[State 889125, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889124

[State 889125, wood]
type = explod
anim = F89010
trigger1 = time = 0
pos = -4,4
vel = 0, 0
sprpriority = 3
removetime = 331
ownpal = 1

[State 889125, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;-------------------------------------------------------------
;barrel bottom drop
[Statedef 889126]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889126, Explod]
type = Explod
trigger1 = time = 0
anim = F89008
ID = 889126
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 3
ontop = 0
;shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 889126]
type = VarRandom
trigger1 = 1
v = 0
range = -3,-5

[State 889126]
type = VarRandom
trigger1 = 1
v = 1
range = -3,3

[State 889126]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889126]
type = veladd
trigger1 = time >= 1
y = .3

[State 889126]
type = ChangeState
trigger1 = Pos Y >= 10
trigger1 = Vel Y > 0
value = 889132

;-------------------------------
;barrel bottom ground
[Statedef 889132]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800

[State 889132, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889126

[State 889132, barrel bottom]
type = explod
anim = F89008
trigger1 = time = 0
pos = 0,0
vel = 0, 0
sprpriority = 8
removetime = 331
ownpal = 1

[State 889132, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;-------------------------------------------------------------
;square wood Drop
[Statedef 889127]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889127, Explod]
type = Explod
trigger1 = time = 0
anim = F89011
ID = 889127
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 889127]
type = VarRandom
trigger1 = 1
v = 0
range = -4,-8

[State 889127]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889127]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889127]
type = veladd
trigger1 = time >= 1
y = .3

[State 889127]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889128

;-------------------------------
;sqaure wood on ground
[Statedef 889128]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800

[State 889125, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889127

[State 889125, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889129

[State 889125, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889130

[State 889125, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889131

[State 889128, DestroySelf]
type = DestroySelf
trigger1 = time = 10

;-------------------------------------------------------------
;medium wood Drop
[Statedef 889129]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889129, Explod]
type = Explod
trigger1 = time = 0
anim = F89012
ID = 889129
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 889129]
type = VarRandom
trigger1 = 1
v = 0
range = -4,-8

[State 889129]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889129]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889129]
type = veladd
trigger1 = time >= 1
y = .3

[State 889129]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889128

;-------------------------------------------------------------
;small wood Drop
[Statedef 889130]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889130, Explod]
type = Explod
trigger1 = time = 0
anim = F89013
ID = 889130
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 889130]
type = VarRandom
trigger1 = 1
v = 0
range = -4,-8

[State 889130]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889130]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889130]
type = veladd
trigger1 = time >= 1
y = .3

[State 889130]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889128

;-------------------------------------------------------------
;fragments wood Drop
[Statedef 889131]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889131, Explod]
type = Explod
trigger1 = time = 0
anim = F89014
ID = 889131
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 889131]
type = VarRandom
trigger1 = 1
v = 0
range = -4,-8

[State 889131]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889131]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889131]
type = veladd
trigger1 = time >= 1
y = .3

[State 889131]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889128

;--------------------------------
;Health State from FF Barrel - hit react
[Statedef 889136]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 889136, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 889136, Healing]
type = PlaySnd
trigger1 = time = 0
value = F35,0

[State 889136]
type=changeanim
trigger1 = time = 0
value = 89018
ignorehitpause=1

[State 889136, Cody]
type=changeanim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 89020
ignorehitpause=1

[State 889136, HaggarFF3]
type=changeanim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 89020
ignorehitpause=1

[State 889136, PrettyBoy25]
type=changeanim
triggerall = Var(40) = 3
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 31
ignorehitpause=1

[State 889136, PrettyBoy50]
type=changeanim
triggerall = Var(40) = 2
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 19
ignorehitpause=1

[State 889136, PrettyBoy75]
type=changeanim
triggerall = Var(40) = 1
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 17
ignorehitpause=1

[State 889136, FlameGolem]
type=changeanim
triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
trigger1 = time = 0
value = 934
ignorehitpause=1

[State 889136, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = 150
kill = 1
persistent = 1

[State 889136, Life Text]
type = Explod
trigger1 = time = 0
trigger1 = Facing = 1 ;facing Right
anim = F88979
;ID = 889175
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,-0.5
accel = 0,0
random = 0,0
removetime = -2
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 1
ownpal = 1
removeongethit = 0

[State 889136, Life Text]
type = Explod
trigger1 = time = 0
trigger1 = Facing = -1 ;facing Left
anim = F88979
;ID = 889175
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
vel = 0,-0.5
accel = 0,0
random = 0,0
removetime = -2
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 1
ownpal = 1
removeongethit = 0

[State 889136, SelfState]
type = SelfState
trigger1 = animtime = 0
value = 0
ctrl = 11
anim = 11

;----------------------------------
;Barrel O goodies for "Subway Train FF" stage #2
[Statedef 889140]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = -5

[State 889140, PosSet] ;random position for barrel spawn
type = PosSet
trigger1 = time = 0
X = -640 + random%1282

[State 889140, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889140, Barrel]
type = Explod
trigger1 = time = 0
anim = F89007
ID = 65654
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 0

[State 889140, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889140, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889141

[State 889140, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889141
ctrl = 0

;----------------------------------
;   Barrel O goodies for "Subway Train FF" stage Energy #1 Cont...
[Statedef 889141]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -5

[State 889141, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889141, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889141, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889142

[State 889141, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889142
ctrl = 0

;----------------------------------
;   Barrel O goodies for "Subway Train FF" stage Energy #1 Cont...
[Statedef 889142]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -5

[State 889142, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889142, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889142, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889143

[State 889142, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889143
ctrl = 0

;------------------------------
; broken FF barrel Energy #1 end
[Statedef 889143]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 15
sprpriority = -5

[State 889143, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F33,random%4

[State 889143, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889143, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 65654

[State 889143, barrel bottom]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889143
helpertype = Normal
ID = 889146
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889126
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889143, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889143
helpertype = Normal
ID = 889144
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889143, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889143
helpertype = Normal
ID = 889144
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889143, wood piece square]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889143
helpertype = Normal
ID = 889147
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889127
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889143, wood piece medium]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889143
helpertype = Normal
ID = 889129
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889129
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889143, wood piece small]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889143
helpertype = Normal
ID = 889130
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889130
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889143, wood piece fragments]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889143
helpertype = Normal
ID = 889131
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889131
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889143, goodie]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889143
helpertype = Normal
ID = 889160
name = "FinalFightGoodie2"
postype = p1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889143, 7]
type = ChangeState
trigger1 = movecontact
value = 889140
ctrl = 0

;--------------------------------
;Energy #1 State for FF Barrel - hit react
[Statedef 889146]
type = S
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 889146, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 889146, Energy]
type = PlaySnd
trigger1 = time = 0
value = F35,1

[State 889146]
type=changeanim
trigger1 = time = 0
value = 89018
ignorehitpause=1

[State 889146, Cody]
type=changeanim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 89020
ignorehitpause=1

[State 889146, HaggarFF3]
type=changeanim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 89020
ignorehitpause=1

[State 889146, PrettyBoy25]
type=changeanim
triggerall = Var(40) = 3
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 31
ignorehitpause=1

[State 889146, PrettyBoy50]
type=changeanim
triggerall = Var(40) = 2
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 19
ignorehitpause=1

[State 889146, PrettyBoy75]
type=changeanim
triggerall = Var(40) = 1
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 17
ignorehitpause=1

[State 889146, FlameGolem]
type=changeanim
triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
trigger1 = time = 0
value = 934
ignorehitpause=1

[State 889146, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = 1000
persistent = 1

[State 889146, Power Text]
type = Explod
trigger1 = time = 0
trigger1 = Facing = 1 ;facing Right
anim = F7224
;ID = 889175
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,-0.5
accel = 0,0
random = 0,0
removetime = -2
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 1
ownpal = 1
removeongethit = 0

[State 889146, Power Text]
type = Explod
trigger1 = time = 0
trigger1 = Facing = -1 ;facing Left
anim = F7224
;ID = 889175
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
vel = 0,-0.5
accel = 0,0
random = 0,0
removetime = -2
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 1
ownpal = 1
removeongethit = 0

[State 889146, SelfState]
type = SelfState
trigger1 = animtime = 0
value = 11
ctrl = 1
;anim = 11

;----------------------------------
;Barrel O goodies for "Subway Train FF" stage #3
[Statedef 889150]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 21

[State 889150, PosSet] ;random position for barrel spawn
type = PosSet
trigger1 = time = 0
X = -640 + random%1282 ;-320 + random%641

[State 889150, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889150, Barrel]
type = Explod
trigger1 = time = 0
anim = F89007
ID = 65654
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 36
ownpal = 1
removeongethit = 0

[State 889150, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889150, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889151

[State 889150, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889151
ctrl = 0

;----------------------------------
;   Barrel O goodies for "Subway Train FF" stage Energy #2 Cont...
[Statedef 889151]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 21

[State 889151, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889151, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889151, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889152

[State 889151, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889152
ctrl = 0

;----------------------------------
;   Barrel O goodies for "Subway Train FF" stage Energy #2 Cont...
[Statedef 889152]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 21

[State 889152, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889152, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889152, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889153

[State 889152, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889153
ctrl = 0

;------------------------------
; broken barrel end
[Statedef 889153]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 15
sprpriority = 20

[State 889153, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889153, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 65654

[State 889153, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F33,random%4

[State 889153, barrel bottom]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889153
helpertype = Normal
ID = 889156
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889126
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889153, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889153
helpertype = Normal
ID = 889154
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889153, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889153
helpertype = Normal
ID = 889154
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889153, wood piece square]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889153
helpertype = Normal
ID = 889157
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889127
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889153, wood piece medium]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889153
helpertype = Normal
ID = 889159
name = "wood piece 1"
postype = p1
pos = 0,-39
stateno = 889129
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889153, wood piece small]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889153
helpertype = Normal
ID = 889160
name = "wood piece 1"
postype = p1
pos = 0,-41
stateno = 889130
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889153, wood piece fragments]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889153
helpertype = Normal
ID = 889161
name = "wood piece 1"
postype = p1
pos = -0,-40
stateno = 889131
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889153, goodie]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889153
helpertype = Normal
ID = 889153
name = "goodie3"
postype = p1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889153, 7]
type = ChangeState
trigger1 = movecontact
value = 889150
ctrl = 0

;------------------------------
;FF Goodie Health
[Statedef 889160]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;888888 ;Hitbox
velset = 0,0
juggle = 15
sprpriority = 5

[State 889160, PosSet]
type = PosSet
trigger1 = time = 0
y = 4
;ignorehitpause =
;persistent =

[State 889160, FFItem]
type = Explod
trigger1 = time = 0
anim = F77850 + (random % 9)
ID = 889160
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1

[State 889160, StateTypeSet]
type = StateTypeSet
trigger1 = P2BodyDist X = [-30,20]
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = RootDist X = [-30,20]
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
statetype = S       ;S,A,C,L
movetype = A        ;I,A,H
physics = S         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 889160, ChangeAnim]
type = ChangeAnim
trigger1 = P2BodyDist X = [-30,20]
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = RootDist X = [-30,20]
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
value = 888888
;elem = 1
;ignorehitpause =
;persistent =

[State 889160, HitDef]
type = HitDef
triggerall = hitcount < 2
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
attr = S, SP
animtype  = light
damage    = 0,0
getpower = 0,0
givepower = 0,0
hitflag = MA
guardflag = ;unblockable
affectteam = B
pausetime = 5,5
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = S2, 6
guard.sparkno = S711
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,0
air.fall = 0
p2stateno = 889136
p1facing = 1
fall.recovertime = 0
;palfx.time = 50
;palfx.add = 0,100,50
;palfx.mul = 20,120,24
;palfx.sinadd = 85,110,55,10
hitonce = 1
ID = 889160
nochainID = 889160
guard.Dist = 0

[State 889160, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889160, RemoveExplod] ;remove goodie
type = RemoveExplod
trigger1 = time = 7000
trigger2 = movecontact
id = 889160

[State 889160, DestroySelf]; hit nothing so destroy self
type = DestroySelf
trigger1 = time = 7000
trigger2 = movecontact

;------------------------------
;Final Fight Goodie Energy #1
[Statedef 889161]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;888888 ;Hitbox
velset = 0,0
juggle = 1
sprpriority = 5

[State 889161, PosSet]
type = PosSet
trigger1 = time = 0
y = 4
;ignorehitpause =
;persistent =

[State 889161, Goodie]
type = Explod
trigger1 = time = 0
anim = F77755 + (random % 16)
ID = 889161
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1

[State 889161, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889161, StateTypeSet]
type = StateTypeSet
trigger1 = P2BodyDist X = [-30,20]
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = RootDist X = [-30,20]
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
statetype = S       ;S,A,C,L
movetype = A        ;I,A,H
physics = S         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 889161, ChangeAnim]
type = ChangeAnim
trigger1 = P2BodyDist X = [-30,20]
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = RootDist X = [-30,20]
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
value = 888888
;elem = 1
;ignorehitpause =
;persistent =

[State 889161, HitDef]
type = HitDef
triggerall = hitcount < 2
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
attr = S, SP
animtype  = light
damage    = 0,0
getpower = 0,0
givepower = 0,0
hitflag = MA
guardflag = ;unblockable
affectteam = B
pausetime = 5,5
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = S1, 1
guard.sparkno = S711
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,0
air.fall = 0
p2stateno = 889146
p1facing = 1
fall.recovertime = 0
ID = 889160
nochainID = 889160
guard.Dist = 0

[State 889161, RemoveExplod] ;remove goodie
type = RemoveExplod
trigger1 = time = 7000
trigger2 = movecontact
id = 889161

[State 889161, DestroySelf]; hit nothing so destroy self
type = DestroySelf
trigger1 = time = 7000
trigger2 = movecontact

;------------------------------
;FF Goodie Knife
[Statedef 889162]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9100
velset = 0,0
juggle = 1
sprpriority = 5

[State 889162, PosSet]
type = PosSet
trigger1 = time = 0
y = 4
;ignorehitpause =
;persistent =

[State 889162, Width]
type = Width
trigger1 = 1
edge = 0,0
player = 0,0
;value = 0,0
ignorehitpause = 1
;persistent =

[State 889162, StateTypeSet]
type = StateTypeSet
trigger1 = P2BodyDist X = [-30,20]
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = RootDist X = [-30,20]
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
statetype = S       ;S,A,C,L
movetype = A        ;I,A,H
physics = S         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 889162, ChangeAnim]
type = ChangeAnim
trigger1 = P2BodyDist X = [-30,20]
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = RootDist X = [-30,20]
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
value = 9101
;elem = 1
;ignorehitpause =
;persistent =

[State 889162, HitDef]
type = HitDef
triggerall = hitcount < 2
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
attr = S, HA
animtype  = light
damage    = 0,0
getpower = 0,0
givepower = 0,0
hitflag = MA
guardflag = ;unblockable
affectteam = B
pausetime = 5,5
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = S1, 1
guard.sparkno = S711
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,0
air.fall = 0
p2stateno = 889192
p1facing = 1
fall.recovertime = 0
ID = 889160
nochainID = 889160
guard.dist = 0
numhits = 0
hitonce = 1

[State 889162, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889162, DestroySelf]
type = DestroySelf
trigger1 = time = 2000
trigger2 = movecontact

;------------------------------
;FF Goodie Knife In Ground
[Statedef 889163]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 1110
velset = 0,0
juggle = 1
sprpriority = 5

[State 889163, PosSet]
type = PosSet
trigger1 = time = 0
y = 4
;ignorehitpause =
;persistent =

[State 889163, Width]
type = Width
trigger1 = 1
edge = 0,0
player = 0,0
;value = 0,0
ignorehitpause = 1
;persistent =

[State 889163, StateTypeSet]
type = StateTypeSet
trigger1 = P2BodyDist X = [-30,20]
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = RootDist X = [-30,20]
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
statetype = S       ;S,A,C,L
movetype = A        ;I,A,H
physics = S         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 889163, ChangeAnim]
type = ChangeAnim
trigger1 = P2BodyDist X = [-30,20]
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = RootDist X = [-30,20]
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
value = 1106
;elem = 1
;ignorehitpause =
;persistent =

[State 889163, HitDef]
type = HitDef
triggerall = hitcount < 2
trigger1 = P2movetype != H
trigger1 = time >=0
trigger1 = p2statetype = C
trigger1 = P2StateType != A
trigger1 = P2stateno = 11
trigger2 = root,movetype != H
trigger2 = time >=0
trigger2 = root,statetype = C
trigger2 = root,StateType != A
trigger2 = root,stateno = 11
attr = S, HA
animtype  = light
damage    = 0,0
getpower = 0,0
givepower = 0,0
hitflag = MA
guardflag = ;unblockable
affectteam = B
pausetime = 5,5
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = S1, 1
guard.sparkno = S711
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,0
air.fall = 0
p2stateno = 889192
p1facing = 1
fall.recovertime = 0
ID = 889160
nochainID = 889160
guard.dist = 0
numhits = 0
hitonce = 1

[State 889163, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889163, KnifeHitGround]
type = PlaySnd
trigger1 = time = 0
value = S911,0
;ignorehitpause =
;persistent =

[State 889163, DestroySelf]
type = DestroySelf
trigger1 = time = 2000
trigger2 = movecontact

;----------------------------------
;Barrel O goodies for "Subway Train FF" stage #4
[Statedef 889170]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
sprpriority = 21

[State 889170, PosSet] ;random position for barrel spawn
type = PosSet
trigger1 = time = 0
X = -640 + random%1282 ;-320 + random%641

[State 889170, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889170, Barrel]
type = Explod
trigger1 = time = 0
anim = F89007
ID = 889170
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 36
ownpal = 1
removeongethit = 0

[State 889170, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889170, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889171

[State 889170, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889171
ctrl = 0

;----------------------------------
;   Barrel O goodies for "Subway Train FF" stage Energy #2 Cont...
[Statedef 889171]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 21

[State 889171, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889171, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889171, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889172

[State 889171, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889172
ctrl = 0

;----------------------------------
;   Barrel O goodies for "Subway Train FF" stage Energy #2 Cont...
[Statedef 889172]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 21

[State 889172, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889172, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889172, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889173

[State 889172, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889173
ctrl = 0

;------------------------------
; broken barrel end
[Statedef 889173]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 15
sprpriority = 20

[State 889173, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889173, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889170

[State 889173, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F33,random%4

[State 889173, barrel bottom]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889173
helpertype = Normal
ID = 889173
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889126
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889173, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889173
helpertype = Normal
ID = 889154
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889173, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889173
helpertype = Normal
ID = 889154
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889173, wood piece square]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889173
helpertype = Normal
ID = 889157
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889127
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889173, wood piece medium]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889173
helpertype = Normal
ID = 889159
name = "wood piece 1"
postype = p1
pos = 0,-39
stateno = 889129
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889173, wood piece small]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889173
helpertype = Normal
ID = 889160
name = "wood piece 1"
postype = p1
pos = 0,-41
stateno = 889130
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889173, wood piece fragments]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889173
helpertype = Normal
ID = 889161
name = "wood piece 1"
postype = p1
pos = -0,-40
stateno = 889131
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889173, goodie]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889173
helpertype = Normal
ID = 889173
name = "goodie4"
postype = p1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889173, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889170
ctrl = 0

;----------------------------------
;Telephone O goodies for "Subway Station - FF" stage #1
[Statedef 889180]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889346 ;Hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 20

[State 889180, Turn]
type = Turn
trigger1 = time = 0
ignorehitpause = 1
persistent = 0

[State 889180, PosSet] ;random position for barrel spawn
type = PosSet
trigger1 = time = 0
X = -640 + random%1282;-320 + random%641

[State 889180, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889180, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889180, Telephone booth]
type = Explod
trigger1 = time = 0
anim = F89020
ID = 65654
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0

[State 889180, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889181

[State 889180, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889181
ctrl = 0

;----------------------------------
;Telephone O goodies for "Subway Station - FF" stage Health Cont...
[Statedef 889181]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889346 ; Telephone booth Hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 20

[State 889181, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889181, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889181, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889182

[State 889181, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889182
ctrl = 0

;----------------------------------
;   Telephone O goodies for "Subway Train FF" stage Cont...
[Statedef 889182]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889346 ; Telephone booth Hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 20

[State 889182, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889182, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889182, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889183

[State 889182, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889183
ctrl = 0

;------------------------------
;Broken Telephone end
[Statedef 889183]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
sprpriority = 20

[State 889183, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889183, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 65654

[State 889183, telephone bottom]
type = explod
anim = F89021
trigger1 = time = 0
pos = 0,0
vel = 0,0
sprpriority = 20
removetime = 148
ownpal = 1

[State 889183, telephone top]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889183
helpertype = Normal
ID = 889184
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889184
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889183, Glass]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889183
helpertype = Normal
ID = 889185
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889185
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889183, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889183
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889183, Glass 2]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889183
helpertype = Normal
ID = 889182
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889185
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889183, metal sparkle]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889183
helpertype = Normal
ID = 889186
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889187
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889183, Metal sparkle]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889183
helpertype = Normal
ID = 889186
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889187
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889183, wood piece fragments]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889183
helpertype = Normal
ID = 889131
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889131
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889183, FFGoodie1]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889183
helpertype = Normal
ID = 889189
name = "FinalFightGoodie1"
postype = p1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889183, 7]
type = ChangeState
trigger1 = movecontact
value = 889180
ctrl = 0

;------------------------------------
;Telephone top helper
[Statedef 889184]
type = A
movetype = I
physics = N
anim = 9800 ;invisible
ctrl = 0
sprpriority = 19

[State 889184, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889184, Explod]
type = Explod
trigger1 = time = 0
anim = F89022
ID = 889124
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889184, vel]
type=velset
trigger1=!time
x=0
y=-14

[State 889184, vel]
type=veladd
trigger1=1
y=.25

[State 889184, Phone booth destroyed]
type = PlaySnd
trigger1 = time = 0
value = F41,random%4

[State 889184]
type = VelAdd
trigger1 = 1
y = 0.3

[State 889184, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
id = 889124

[State 889184]
type = DestroySelf
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
ignorehitpause = 1

;-------------------------------------------------------------
;Glass
[Statedef 889185]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889185, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889185, Explod]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889185
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889185]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-8

[State 889185]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889185]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889185]
type = veladd
trigger1 = time >= 1
y = .3

[State 889185]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889186

;-------------------------------
;Glass on ground
[Statedef 889186]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 9800

[State 889186, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889185

[State 889186, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889184, Glass]
type = Explod
trigger1 = time = 0
anim = F89024
ID = 889186
pos = -4,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 70
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889186, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;-------------------------------------------------------------
;Metal Sparkle Drop
[Statedef 889187]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889187, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889187, Explod]
type = Explod
trigger1 = time = 0
anim = F89025
ID = 889187
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889187]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-10

[State 889187]
type = VarRandom
trigger1 = 1
v = 1
range = -4,4

[State 889187]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889187]
type = veladd
trigger1 = time >= 1
y = .3

[State 889187, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
id = 889187

[State 889187, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0

;---------------------------------------------------------------------------
;Goodie Knife Final Fight 1 React
[Statedef 889192]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = C                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1000                       ;Change animation (Def: no change)
poweradd = 5                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 889192, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 889192, Jail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 1001
;ignorehitpause =
;persistent =

[State 889192, FF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 1001
;ignorehitpause =
;persistent =

[State 889192, PrettyBoy25]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 3
trigger1 = time = 0
value = 1009
;ignorehitpause =
;persistent =

[State 889192, PrettyBoy50]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 2
trigger1 = time = 0
value = 1008
;ignorehitpause =
;persistent =

[State 889192, PrettyBoy75]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 1
trigger1 = time = 0
value = 1007
;ignorehitpause =
;persistent =

[State 889192, FlameGolem]
type = ChangeAnim
triggerall = name = "Ultimate_Blob"
triggerall = Var(50) = 1
trigger1 = time = 0
value = 933
;ignorehitpause =
;persistent =

[State 889192, VarSet]
type = VarSet
trigger1 = time = 0
v = 3   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 889192, VarSet]
type = VarSet
trigger1 = time = 0
v = 2   ;fv = 10
value = 1
;ignorehitpause =
;persistent =

[State 889192, KnifeSpawn]
type = Helper
Triggerall = Var(40) = 3
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 889192, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Poacher_Joe"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 889192, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Warblade"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 889192, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Kruel_Kurt"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 889192, KnifeSpawn]
type = Helper
triggerall = name = "Ultimate_Mizuki"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 889192, KnifeSpawn]
type = Helper
triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
triggerall = Var(2) = 1
trigger1 = time = 1
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = .8,.8
;ignorehitpause =
persistent = 0

[State 889192, Grab]
type = PlaySnd
trigger1 = time = 0
value = F83,0
;ignorehitpause =
;persistent =

[State 889192, VarSet] ;Can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 3
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 889192, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Poacher_Joe"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 889192, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Warblade"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 889192, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Kruel_Kurt"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 889192, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = name = "Ultimate_Mizuki"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 889192, VarSet] ;can't pick up Weapon Knife
type = VarSet
triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
triggerall = Var(2) = 1
trigger1 = time = 1
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 889192, Knife]
type = PlaySnd
trigger1 = time = 3
value = F106,random%2
;ignorehitpause =
;persistent =

[State 889192, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Musashi"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 889192, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Sodom"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 889192, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Yamato"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 889192, SelfState] ;Throw Knife then return to normal because of Sword.
type = SelfState
triggerall = name = "Ultimate_Mardia"
trigger1 = AnimTime = 0
value = 1125
ctrl = 0

[State 889192, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------
;Trashcan Empty for "Subway Station - FF" stage #1
[Statedef 889195]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
juggle = 25
sprpriority = -5

[State 889195, PosSet] ;random position for barrel spawn
type = PosSet
trigger1 = time = 0
X = -640 + random%1282;-320 + random%641

[State 889195, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889195, Trash Can]
type = Explod
trigger1 = time = 0
anim = F89027
ID = 65664
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 0

[State 889195, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889195, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889196

[State 889195, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889196
ctrl = 0

;----------------------------------
;Trashcan#1 empty for "Subway Station - FF" stage Energy Cont...
[Statedef 889196]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
juggle = 25
sprpriority = -2

[State 889196, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889196, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889196, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889197

[State 889196, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889197
ctrl = 0

;----------------------------------
;Trashcan#1 Empty for "Subway Train FF" stage Energy Cont...
[Statedef 889197]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Trashcan Hitbox
velset = 0,0
juggle = 25
sprpriority = -2

[State 889197, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889197, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889197, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889198

[State 889197, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889198
ctrl = 0

;------------------------------
;Broken trashcan#1 end Energy
[Statedef 889198]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 15
sprpriority = -2

[State 889198, Broke Trashcan]
type = PlaySnd
trigger1 = time = 0
value = F41,2

[State 889198, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 65664

[State 889198, wasted can]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889198
helpertype = Normal
ID = 889200
name = "wastedcan"
postype = p1
pos = 0,-40
stateno = 889200
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889198, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889198, 7]
type = ChangeState
trigger1 = movecontact
value = 889195  ;Infinite
ctrl = 0

;-------------------------------------------------------------
;Wasted can #1
[Statedef 889200]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = -5

[State 889200, Explod]
type = Explod
trigger1 = time = 0
anim = F89028
ID = 889189
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889200, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State y]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-8
[State x]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State ]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State ]
type = veladd
trigger1 = time >= 1
y = .3

[State 889200]
type = ChangeState
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
value = 889201

;-------------------------------
;Wasted can on ground
[Statedef 889201]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 9800  ;Invisible

[State 889201, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889189

[State 889201, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889201, Can hit ground]
type = PlaySnd
trigger1 = time = 0
value = F42,0
volume = 250

[State 889201, wasted can]
type = explod
anim = F89028
trigger1 = time = 0
pos = -4,4
vel = 0, 0
sprpriority = -5
removetime = 335
ownpal = 1

[State 889201, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;----------------------------------
;Trashcan O Goodies for "Subway Station - FF" stage #2
[Statedef 889205]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 5

[State 889205, PosSet] ;random position for barrel spawn
type = PosSet
trigger1 = time = 0
X = -640 + random%1282;-320 + random%641

[State 889205, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889205, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889205, Trashcan]
type = Explod
trigger1 = time = 0
anim = F89027
ID = 65674
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 889205, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889206

[State 889205, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889206
ctrl = 0

;----------------------------------
;Trashcan#2 O Goodies for "Subway Station - FF" stage Cont...
[Statedef 889206]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 5

[State 889206, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889206, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889206, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889207

[State 889206, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889207
ctrl = 0

;----------------------------------
;Trashcan#2 O Goodies for "Subway Train FF" stage Cont...
[Statedef 889207]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
persistent = 1
juggle = 25
sprpriority = 21

[State 889207, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889207, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889207, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889208

[State 889207, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889208
ctrl = 0

;------------------------------
;Broken trashcan#2 end
[Statedef 889208]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 15
sprpriority = 21

[State 889208, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 65674

[State 889208, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889208, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1526,2

[State 889208, wasted can]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889208
helpertype = Normal
ID = 889209
name = "wastedcan"
postype = p1
pos = 0,-40
stateno = 889209
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889208, FFgoodie2]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889198
helpertype = Normal
ID = 889202
name = "FinalFightGoodie2"
postype = p1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889198, 7]
type = ChangeState
trigger1 = movecontact
value = 889195
ctrl = 0

;-------------------------------------------------------------
;wasted can
[Statedef 889209]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889209, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889209, Explod]
type = Explod
trigger1 = time = 0
anim = F89028
ID = 889209
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889209]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-8

[State 889209]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889209]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889209]
type = veladd
trigger1 = time >= 1
y = .3

[State 889209]
type = ChangeState
trigger1 = Pos Y >= 19
trigger1 = Vel Y > 0
value = 889210

;-------------------------------
;wasted can on ground
[Statedef 889210]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 9800

[State 889210, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889210, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889209

[State 889210, Can hit Ground]
type = PlaySnd
trigger1 = time = 0
value = F42,0
volume = 250

[State 889210, wasted can]
type = explod
anim = F89028
trigger1 = time = 0
pos = -4,4
vel = 0, 0
sprpriority = 5
removetime = 335
ownpal = 1

[State 889210, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;-------------------------
;Fire React (short fall back)
[Statedef 889298]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0
juggle = 5
anim = 88912 ;Your Character must have this anim to show flames

[State 889298, AngleDraw]
type = AngleDraw
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time >=0
trigger2 = Name = "Ultimate_Ninja"
trigger2 = time >=0
value = 0
scale = .75
ignorehitpause = 1
persistent = 1

[State 889298, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889298, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F31,random%3

[State 889298, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = -6

[State 889298, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 889298, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = time < 6
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889298, RemoveExplod]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
id = 88912

[State 889298, State End]
type = SelfState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
value=5100
ignorehitpause=1

;------------------------------------------------------------------------------------------------------------
;Electric react (short fall back)
[Statedef 889299]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0
juggle = 5
anim = 88920 ;Your Character must have this anim to show Electrified

[State 889299, AngleDraw]
type = AngleDraw
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time >=0
trigger2 = Name = "Ultimate_Ninja"
trigger2 = time >=0
value = 0
scale = .75
ignorehitpause = 1
persistent = 1

[State 889299, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889299, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F30,random%3

[State 889299, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = -6

[State 889299, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 889298, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = time < 6
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889299, RemoveExplod]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
id = 88912

[State 889299, State End]
type = SelfState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
value=5100
ignorehitpause=1

;-------------------------
;Fire React (tall fall back)
[Statedef 889300]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0
juggle = 5
anim = 88912 ;Your Character must have this anim to show flames

[State 889300, AngleDraw]
type = AngleDraw
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time >=0
trigger2 = Name = "Ultimate_Ninja"
trigger2 = time >=0
value = 0
scale = .75
ignorehitpause = 1
persistent = 1

[State 889300, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889300, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F31,random%3

[State 889300, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = -10

[State 889300, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 889300, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = time < 6
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889300, RemoveExplod]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
id = 88912

[State 889300, State End]
type = SelfState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
value=5100
ignorehitpause=1

;------------------------------------------------------------------------------------------------------------
;Electric react (tall fall back)
[Statedef 889301]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0
juggle = 5
anim = 88920 ;Your Character must have this anim to show Electrified

[State 889301, AngleDraw]
type = AngleDraw
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time >=0
trigger2 = Name = "Ultimate_Ninja"
trigger2 = time >=0
value = 0
scale = .75
ignorehitpause = 1
persistent = 1

[State 889301, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889301, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F30,random%3

[State 889301, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = -10

[State 889301, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 889301, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = time < 6
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889301, RemoveExplod]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
id = 88912

[State 889301, State End]
type = SelfState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
value=5100
ignorehitpause=1

;-------------------------
;Fire React (UP short fall)
[Statedef 889302]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0
juggle = 5
anim = 88912 ;Your Character must have this anim to show flames

[State 889302, AngleDraw]
type = AngleDraw
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time >=0
trigger2 = Name = "Ultimate_Ninja"
trigger2 = time >=0
value = 0
scale = .75
ignorehitpause = 1
persistent = 1

[State 889302, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889302, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F31,random%3

[State 889302, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -6

[State 889302, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 889302, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = time < 6
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889302, RemoveExplod]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
id = 88912

[State 889302, State End]
type = SelfState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
value=5100
ignorehitpause=1

;------------------------------------------------------------------------------------------------------------
;Electric react (UP short fall)
[Statedef 889303]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0
juggle = 5
anim = 88920 ;Your Character must have this anim to show Electrified

[State 889303, AngleDraw]
type = AngleDraw
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time >=0
trigger2 = Name = "Ultimate_Ninja"
trigger2 = time >=0
value = 0
scale = .75
ignorehitpause = 1
persistent = 1

[State 889303, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889303, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F30,random%3

[State 889303, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -6

[State 889303, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 889303, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = time < 6
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889303, RemoveExplod]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
id = 88912

[State 889303, State End]
type = SelfState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
value=5100
ignorehitpause=1

;-------------------------
;Fire React (UP tall fall)
[Statedef 889304]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0
juggle = 5
anim = 88912 ;Your own characters Animation

[State 889304, AngleDraw]
type = AngleDraw
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time >=0
trigger2 = Name = "Ultimate_Ninja"
trigger2 = time >=0
value = 0
scale = .75
ignorehitpause = 1
persistent = 1

[State 889304, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889304, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F31,random%3

[State 889304, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -10

[State 889304, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 889304, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = time < 6
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889304, RemoveExplod]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
id = 88912

[State 889304, State End]
type = SelfState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
value=5100
ignorehitpause=1

;------------------------------------------------------------------------------------------------------------
;Electric react (UP tall fall)
[Statedef 889305]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0
juggle = 5
anim = 88920 ;Your own characters Animation

[State 889305, AngleDraw]
type = AngleDraw
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time >=0
trigger2 = Name = "Ultimate_Ninja"
trigger2 = time >=0
value = 0
scale = .75
ignorehitpause = 1
persistent = 1

[State 889305, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889305, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F30,random%3

[State 889305, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -10

[State 889305, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 889305, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = time < 6
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889305, RemoveExplod]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
id = 88912

[State 889305, State End]
type = SelfState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
value=5100
ignorehitpause=1

;----------------------------------
; Barrel O goodies for "Sodom's Back Alley FF" stage + Health
[Statedef 889440]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = -5

[State 889440, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889440, Barrel]
type = Explod
trigger1 = time = 0
anim = F89007
ID = 65654
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 0

[State 889440, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889440, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889441

[State 889440, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889441
ctrl = 0

;----------------------------------
; Barrel O goodies for "Sodom's Back Alley FF" stage + Health Cont...
[Statedef 889441]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = 20

[State 889441, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889441, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889441, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889442

[State 889441, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889442
ctrl = 0

;----------------------------------
; Barrel O goodies for "Sodom's Back Alley FF" stage + Health Cont...
[Statedef 889442]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = 20

[State 889442, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889442, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889442, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889443

[State 889442, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889443
ctrl = 0

;------------------------------
; broken barrel + health Broken
[Statedef 889443]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15
sprpriority = -5

[State 889443, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889443, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 65654

[State 889443, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F33,random%4

[State 889443, barrel bottom]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889443
helpertype = Normal
ID = 889126
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889446
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889443, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889443
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889444
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889443, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889443
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889444
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889443, wood piece square]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889443
helpertype = Normal
ID = 889127
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889448
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889443, wood piece medium]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889443
helpertype = Normal
ID = 889129
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889450
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889443, wood piece small]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889443
helpertype = Normal
ID = 889130
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889451
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889443, wood piece small2]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889443
helpertype = Normal
ID = 889131
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889452
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889443, goodie1]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889443
helpertype = Normal
ID = 889137
name = "FinalFightGoodie1"
postype = P1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889443, 7] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889440
ctrl = 0

;-------------------------------------------------------------
;wood Drop big
[Statedef 889444]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = -5

[State 889444, Explod]
type = Explod
trigger1 = time = 0
anim = F89009
ID = 889124
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889444]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-8

[State 889444]
type = VarRandom
trigger1 = 1
v = 1
range = -4,4

[State 889444]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889444]
type = veladd
trigger1 = time >= 1
y = .3

[State 889444]
type = ChangeState
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
value = 889445

;-------------------------------
;wood on ground
[Statedef 889445]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800  ;Invisible

[State 889445, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889124

[State 889445, wood]
type = explod
anim = F89010
trigger1 = time = 0
pos = -4,4
vel = 0, 0
sprpriority = -5
removetime = 331
ownpal = 1

[State 889445, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;-------------------------------------------------------------
;barrel bottom drop
[Statedef 889446]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889446, Explod]
type = Explod
trigger1 = time = 0
anim = F89008
ID = 889126
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889446]
type = VarRandom
trigger1 = 1
v = 0
range = -3,-5

[State 889446]
type = VarRandom
trigger1 = 1
v = 1
range = -3,3

[State 889446]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889446]
type = veladd
trigger1 = time >= 1
y = .3

[State 889446]
type = ChangeState
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
value = 889447

;-------------------------------
;barrel bottom ground
[Statedef 889447]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800

[State 889447, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889126

[State 889447, barrel bottom]
type = explod
anim = F89008
trigger1 = time = 0
pos = -4,4
vel = 0, 0
sprpriority = -5
removetime = 331
ownpal = 1

[State 889447, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;-------------------------------------------------------------
;square wood Drop
[Statedef 889448]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889448, WooshSquare]
type = Explod
trigger1 = time = 0
anim = F89011
ID = 889127
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889448]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-8

[State 889448]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889448]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889448]
type = veladd
trigger1 = time >= 1
y = .3

[State 889448, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
id = 889127

[State 889448]
type = ChangeState
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
value = 889449

;-------------------------------
;sqaure wood on ground
[Statedef 889449]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800

[State 889449, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889127

[State 889449, DestroySelf]
type = DestroySelf
trigger1 = time >= 2

 ;-------------------------------------------------------------
;medium wood Drop
[Statedef 889450]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = -5

[State 889450, WoodMedium]
type = Explod
trigger1 = time = 0
anim = F89012
ID = 889129
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889450]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-8

[State 889450]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889450]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889450]
type = veladd
trigger1 = time >= 1
y = .3

[State 889450, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
id = 889129

[State 889450, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0

 ;-------------------------------------------------------------
;small wood Drop
[Statedef 889451]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = -5

[State 889451, Explod]
type = Explod
trigger1 = time = 0
anim = F89013
ID = 889130
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889451]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-8

[State 889451]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889451]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889451]
type = veladd
trigger1 = time >= 1
y = .3

[State 889451, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
id = 889130

[State 889451, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0

;-------------------------------------------------------------
;small wood Drop 2
[Statedef 889452]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = -5

[State 889452, Explod]
type = Explod
trigger1 = time = 0
anim = F89014
ID = 889131
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889452]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-8
[State 889452]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889452]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889452]
type = veladd
trigger1 = time >= 1
y = .3

[State 889452, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
id = 889131

[State 889452, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0

;----------------------------------
;trashcan O goodies for "Sodom's Back Alley - FF" stage #1
[Statedef 889458]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
juggle = 25
sprpriority = -5

[State 889458, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889458, Trash Can]
type = Explod
trigger1 = time = 0
anim = F89027
ID = 65664
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 0

[State 889458, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889458, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889459
ctrl = 0

[State 889458, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889459

;----------------------------------
;trashcan#1 O goodies for "Sodom's Back Alley - FF" stage Energy Cont...
[Statedef 889459]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
juggle = 25
sprpriority = -5

[State 889459, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889459, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889459, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889460
ctrl = 0

[State 889459, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889460

;----------------------------------
;trashcan#1 O goodies for "Sodom's Back Alley - FF" stage Energy Cont...
[Statedef 889460]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Trashcan Hitbox
velset = 0,0
juggle = 25
sprpriority = -2

[State 889460, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889460, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889460, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889461
ctrl = 0

[State 889460, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889461

;------------------------------
;SBA broken trashcan#1 end Energy
[Statedef 889461]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15
sprpriority = -2

[State 889461, Broke Trashcan]
type = PlaySnd
trigger1 = time = 0
value = F41,2

[State 889461, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 65664

[State 889461, wasted can]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889461
helpertype = Normal
ID = 889200
name = "wastedcan"
postype = p1
pos = 0,-40
stateno = 889462
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889461, FFGoodie2]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889461
helpertype = Normal
ID = 889202
name = "FinalFightGoodie2"
postype = p1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889461, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889461, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889458
ctrl = 0

;-------------------------------------------------------------
;wasted can SBA
[Statedef 889462]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = -5

[State 889462, Explod]
type = Explod
trigger1 = time = 0
anim = F89028
ID = 889189
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889462, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State y, Varrandom]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-9

[State x, Varrandom]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State ]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State ]
type = veladd
trigger1 = time >= 1
y = .3

[State 889462, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F41,2

[State 889462, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
value = 889463

;-------------------------------
;SBA wasted can on ground
[Statedef 889463]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 9800  ;Invisible

[State 889463, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889189

[State 889463, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889463, Can hit ground]
type = PlaySnd
trigger1 = time = 0
value = F42,0
volume = 250

[State 889463, wasted can]
type = explod
anim = F89028
trigger1 = time = 0
postype = p1
pos = 0,0
vel = 0, 0
sprpriority = -5
removetime = 335
ownpal = 1

[State 889463, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;----------------------------------
;trashcan O empty for "Sodom's Back Alley - FF" stage #2
[Statedef 889467]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
sprpriority = -5

[State 889467, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889467, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889467, Trashcan]
type = Explod
trigger1 = time = 0
anim = F89027
ID = 65674
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 0

[State 889467, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889468
ctrl = 0

[State 889467, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889468

;----------------------------------
;trashcan#2 O empty for "Sodom's Back Alley - FF" stage Cont...
[Statedef 889468]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
juggle = 25
sprpriority = -5

[State 889468, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889468, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889468, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889469
ctrl = 0

[State 889468, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889469

;----------------------------------
;trashcan#2 O empty for "Sodom's Back Alley - FF" stage Cont...
[Statedef 889469]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
juggle = 25
sprpriority = 21

[State 889469, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889469, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889469, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889470
ctrl = 0

[State 889469, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889470

;------------------------------
;SBA broken trashcan#2 end
[Statedef 889470]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15
sprpriority = -5

[State 889470, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 65674

[State 889470, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889470, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F41,2

[State 889470, wasted can]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889470
helpertype = Normal
ID = 889209
name = "wastedcan2"
postype = p1
pos = 0,-40
stateno = 889471
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889470, Changestate] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889467
ctrl = 0

;-------------------------------------------------------------
;SBA wasted can
[Statedef 889471]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = -19

[State 889471, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889471, Explod]
type = Explod
trigger1 = time = 0
anim = F89028
ID = 889209
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889471]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-9

[State 889471]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889471]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889471]
type = veladd
trigger1 = time >= 1
y = .3

[State 889471]
type = ChangeState
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
value = 889472

;-------------------------------
;SBA wasted can on ground
[Statedef 889472]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 9800  ;Invisible

[State 889472, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889472, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889209

[State 889472, Can hit Ground]
type = PlaySnd
trigger1 = time = 0
value = F42,0
volume = 250

[State 889472, wasted can]
type = explod
anim = F89028
trigger1 = time = 0
pos = -4,4
vel = 0, 0
sprpriority = -5
removetime = 335
ownpal = 1

[State 889472, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;---------------------------------------------------------
; Position Marker for Belgrave Square Labs Player #1
[Statedef 889478]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889478, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889478, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889478
ctrl = 0

;---------------------------------------------------------
; Position Marker for Belgrave Square Labs Player #2
[Statedef 889479]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889479, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889479, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889479
ctrl = 0

;---------------------------------------------------------
; Position Marker for Belgrave Square Labs Player #1
[Statedef 889480]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889480, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889480, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889480
ctrl = 0

;---------------------------------------------------------
; Position Marker for Belgrave Square Labs Player #2
[Statedef 889481]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889481, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889481, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889481
ctrl = 0

;---------------------------------------------------------
; Position Marker2 for Belgrave Square Labs Player #1
[Statedef 889482]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889482, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889482, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889482
ctrl = 0

;---------------------------------------------------------
; Position Marker2 for Belgrave Square Labs Player #2
[Statedef 889483]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889483, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889483, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889483
ctrl = 0

;------------------------------
; end round faster "Belgrave Square Labs finisher"
[Statedef 889485]
type    = S
movetype= H
physics = N
anim = 9800 ;invisible
velset = 0,0
sprpriority = 2
ctrl = 0

[State 889485, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,2100]
flag = nomusic
flag2 = noshadow
flag3 = roundnotover

[State 889485]
type = Helper
trigger1 = time = 0
stateno = 889486
id = 889486
ownpal = 0
pos = 0,0
postype = p1
supermove = 99999
pausemove = 99999
size.xscale = 1
size.yscale = 1

[State 889485, playwinposefaster]
type = ChangeState
trigger1 = time >= 2100
trigger1 = !Ishelper
value = 5150

;-------------------------
;Fall to Death Chamber for Belgrave Square Labs
[Statedef 889486]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = -1
anim = 5050 ;Your Character must have this anim

[State 889486, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = name = "Road Runner"
value = 9800 ; Invisible
ignorehitpause = 1

[State 889486, Explod]
type = Explod
trigger1 = time = 0
trigger1 = name = "Road Runner"
anim = 5050
ID = 889486
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 2,2
sprpriority = 1
shadow = 90,90,90
ownpal = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 889486, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 889486, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889486, VelSet]
type = VelSet
trigger1 = time = 0
x = -2
y = -6

[State 889486, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 889486, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889486, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 5
value=889487
ignorehitpause=1

;-------------------------
;Death Chamber spawns and opens
[Statedef 889487]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = -1
juggle = 5
anim = 5150 ;Your Character must have this anim

[State 889487, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 889486
ignorehitpause = 1

[State 889487, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = name = "Road Runner"
value = 9800 ; Invisible
ignorehitpause = 1

[State 889487, Explod]
type = Explod
trigger1 = time = 0
trigger1 = name = "Road Runner"
anim = 5150
ID = 889487
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 50
scale = 2,2
sprpriority = 1
shadow = 90,90,90
ownpal = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 889487, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nomusic
flag3 = noshadow

[State 889487, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 889487, ChangeAnim]
type = ChangeAnim
trigger1 = time = 50
trigger1 = name != "Road Runner"
value = 5170

[State 889487, Explod]
type = Explod
trigger1 = time = 50
trigger1 = name = "Road Runner"
anim = 5170
ID = 889487
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 2,2
sprpriority = 1
shadow = 90,90,90
ownpal = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 889487, VelSet]
type = VelSet
trigger1 = time >= 50
x = 0
y = 2

[State 889487, CDoor Aura]
type = Explod
trigger1 = time = 28
anim = F89135
;ID =
pos = 0,8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 16
pausemovetime = 0
scale = 1,1
sprpriority = -13
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889487, Chamber Door]
type = Explod
trigger1 = time = 30
anim = F89136
;ID =
pos = 0,8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 55
pausemovetime = 0
scale = 1,1
sprpriority = -12
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889487, CDoor Front]
type = Explod
trigger1 = time = 40
anim = F89137
;ID =
pos = 0,8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 45
pausemovetime = 0
scale = 1,1
sprpriority = 35
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889487, Belgrave Darkness]
type = Explod
trigger1 = time = 70
anim = F89138
;ID =
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 45
pausemovetime = 0
scale = 1,1
sprpriority = 36
ontop = 1
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889487, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889487, ChangeState]
type = ChangeState
trigger1 = time = 90
value=889488
ignorehitpause=1

;-------------------------
; Death Chamber stuff spawner
[Statedef 889488]
type = S
movetype= I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = -1
juggle = 5
anim = 9800 ;Invisible

[State 889488, PosSet] ;set back to ground zero
type = PosSet
trigger1 = time = 0
x = 0
y = 0

[State 889488, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nomusic
flag3 = noshadow

[State 889488, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 889488, DC Scroller]
type = Helper
trigger1 = time = 0
stateno = 889489
id = 889489
ownpal = 1
pos = 0,0
postype = p1
supermove = 99999
pausemove = 99999
size.xscale = 1
size.yscale = 1

[State 889488, Combatant Falling]
type = Helper
trigger1 = time = 15
stateno = 889490
id = 889490
ownpal = 0
pos = 0,-300
postype = p1
supermove = 99999
pausemove = 99999

[State 889488, MeatBody Falling]
type = Helper
trigger1 = time = 430
stateno = 889491
id = 889491
ownpal = 0
pos = 0,-100
postype = p1
supermove = 99999
pausemove = 99999

[State 889488, MeatHead Falling]
type = Helper
trigger1 = time = 430
stateno = 889492
id = 889492
ownpal = 0
pos = -30,-100
postype = p1
supermove = 99999
pausemove = 99999

[State 889488, NotHitBy] ;Can't be hit
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889488, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value=889488
ignorehitpause=1

;-------------------------
;Death Chamber Scroller
[Statedef 889489]
type = S
movetype= I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = -1
anim = 9800 ;Invisible

[State 889489, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 75 && time <=320
x = 0
y = -4

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 320 && time <=322
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 322 && time <=324
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 324 && time <=326
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 326 && time <=328
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 328 && time <=330
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 330 && time <=332
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 332 && time <=334
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 334 && time <=336
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 336 && time <=338
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 340 && time <=342
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 342 && time <=344
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 344 && time <=346
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 346 && time <=348
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 348 && time <=350
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 350 && time <=352
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 352 && time <=354
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 354 && time <=356
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 356 && time <=358
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 360 && time <=362
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 364 && time <=366
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 366 && time <=368
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 368 && time <=370
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 370 && time <=372
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 372 && time <=374
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 374 && time <=376
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 376 && time <=378
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 378 && time <=380
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 380 && time <=382
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 382 && time <=384
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 384 && time <=386
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 386 && time <=388
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 388 && time <=395
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 395 && time <=397
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 397 && time <=410
x = 0
y = 3

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 410 && time <=412
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 412 && time <=414
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 414 && time <=416
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 416 && time <=418
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 420 && time <=422
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 422 && time <=755
x = 0
y = -4

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 755 && time <=757
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 757 && time <=759
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 759 && time <=761
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 761 && time <=763
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 763 && time <=765
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 765 && time <=767
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 767 && time <=769
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 769 && time <=771
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 771 && time <=773
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 773 && time <=775
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 775 && time <=777
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 777 && time <=779
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 779 && time <=781
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 781 && time <=783
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 783 && time <=785
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 785 && time <=787
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 787 && time <=789
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 789 && time <=791
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 791 && time <=793
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 793 && time <=795
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 795 && time <=797
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 797 && time <=799
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 799 && time <=801
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 801 && time <=803
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 803 && time <=805
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 805 && time <=807
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 807 && time <=809
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 809 && time <=811
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 811 && time <=813
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 813 && time <=815
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 815 && time <=817
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 817 && time <=819
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 819 && time <=821
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 821 && time <=834
x = 0
y = 3

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 834 && time <=836
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 836 && time <=838
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 838 && time <=840
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 840 && time <=842
x = 0
y = -2

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 842 && time <=844
x = 0
y = 0

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 844 && time <=1479
x = 0
y = -4

[State 889489, VelSet]
type = VelSet
trigger1 = time >= 1479
x = 0
y = 0

[State 889489, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889489, DC Front]
type = Explod
trigger1 = time = 0
anim = F89148
pos = 0,-225
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 35
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, DC Back]
type = Explod
trigger1 = time = 0
anim = F89149
pos = 0,-225
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, DC Saw]
type = Explod
trigger1 = time = 0
anim = F89139
;ID = 889499
pos = 0,900
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1.25,1.25
sprpriority = 21
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, DC Saw]
type = Explod
trigger1 = time = 0
anim = F89139
pos = 0,2272
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1.25,1.25
sprpriority = 21
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, DC Saw]
type = Explod
trigger1 = time = 0
anim = F89139
pos = 0,3649
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1.25,1.25
sprpriority = 21
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, DC Ropes]
type = Explod
trigger1 = time = 0
anim = F89151
pos = 2,805
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1.25,1.25
sprpriority = 21
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, DC Ropes]
type = Explod
trigger1 = time = 0
anim = F89151
pos = 2,2182
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1.25,1.25
sprpriority = 21
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, DC Ropes]
type = Explod
trigger1 = time = 0
anim = F89151
pos = 2,3559
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1.25,1.25
sprpriority = 21
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, DC Blade]
type = Explod
trigger1 = time = 0
anim = F89152
pos = -9,784
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1.25,1.25
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, DC Blade]
type = Explod
trigger1 = time = 0
anim = F89152
pos = -9,2166
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1.25,1.25
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, DC Blade]
type = Explod
trigger1 = time = 0
anim = F89152
pos = -9,3543
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1.25,1.25
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889489, ChangeState] ; Neverending
type = ChangeState
trigger1 = movecontact
value=889489
ignorehitpause=1

;-------------------------
;Combatant Falling in Death Chamber
[Statedef 889490]
type = S
movetype= I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 25
juggle = 5
anim = 5050 ;Your characters own animation

[State 889490, ChangeAnimRR]
type = ChangeAnim
trigger1 = time = 0
trigger1 = name = "Road Runner"
value = 9800 ; Invisible

[State 889490, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889487
ignorehitpause = 1

[State 889490, Explod]
type = Explod
trigger1 = time = 0
trigger1 = name = "Road Runner"
anim = 5061
;ID = 889486
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 372
scale = 2,2
sprpriority = 25
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 889490, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F52,0

[State 889490, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 889490, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889490, VelSet] ;Combatant falling
type = VelSet
trigger1 = time >= 0 && time <=60
x = 0
y = 4

[State 889490, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 60 ;&& time <=235
x = 0
y = 0

[State 889490, DC Blood]
type = Explod
trigger1 = time = 262
anim = F89147
;ID = 889499
pos = -9,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 26
pausemovetime = 0
vel = 0,-4
scale = 1,1
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889490, DC Blood]
type = Explod
trigger1 = time = 335
anim = F89147
;ID = 889499
pos = -10,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 26
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889490, Blade]
type = PlaySnd
trigger1 = time = 262
value = F32,random%4

[State 889490, Blade]
type = PlaySnd
trigger1 = time = 315
value = F32,random%4

[State 889490, Saw]
type = PlaySnd
trigger1 = time = 320
value = F48,0

[State 889490, Yell]
type = PlaySnd
trigger1 = time = 321
value = S11,0

[State 889490, ChangeAnim]
type = ChangeAnim
trigger1 = time = 372
value = 9800    ;Invisible

[State 889490, ChangeState] ; Neverending
type = ChangeState
trigger1 = movecontact
value=889490
ignorehitpause=1

;-------------------------
; Meat Body Falling in Death Chamber
[Statedef 889491]
type = S
movetype= I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 25
juggle = 5
anim = 9800 ;Your characters own animation

[State 889491, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 889490, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = F52,0

[State 889491, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889491, VelSet] ;Combatant falling
type = VelSet
trigger1 = time >= 0 && time <=7
x = 0
y = 4

[State 889491, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 7 && time <=70
x = -0.5
y = 0

[State 889491, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 70 && time <=75
x = 0
y = 0

[State 889491, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 75 && time <=190
x = 0.6
y = 0

[State 889491, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 190 && time <=200
x = 0
y = 0

[State 889491, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 200 && time <=320
x = -0.2
y = 0

[State 889491, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 320 ;&& time <=200
x = 0
y = 0

[State 889491, Bumpwall]
type = PlaySnd
trigger1 = time = 70
value = F49,0

[State 889491, Bumpwall]
type = PlaySnd
trigger1 = time = 190
value = F49,0

[State 889491, Meat Body]
type = Explod
trigger1 = time = 0
trigger1 = Facing = 1 ;facing right
trigger1 = name != "Road Runner"
anim = F89140
ID = 889491
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, Meat Body]
type = Explod
trigger1 = time = 0
trigger1 = Facing = -1 ;facing left
trigger1 = name != "Road Runner"
anim = F89140
ID = 889491
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, Meat Body RoadRunner]
type = Explod
trigger1 = time = 0
trigger1 = Facing = 1 ;facing right
trigger1 = name = "Road Runner"
anim = F89212
ID = 889491
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 2,2
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, Meat Body RoadRunner]
type = Explod
trigger1 = time = 0
trigger1 = Facing = -1 ;facing left
trigger1 = name = "Road Runner"
anim = F89212
ID = 889491
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 2,2
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, RemoveExplod]
type = RemoveExplod
trigger1 = time = 380
id = 889491

[State 889491, DC Blood]
type = Explod
trigger1 = time = 275
anim = F89147
;ID = 889499
pos = -22,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 26
pausemovetime = 0
vel = 0,-4
scale = 1,1
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, DC Blood]
type = Explod
trigger1 = time = 320
anim = F89147
;ID = 889499
pos = -10,-38
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 26
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, Meat Arm]
type = Explod
trigger1 = time = 380
trigger1 = Facing = 1 ;facing right
trigger1 = name != "Road Runner"
anim = F89142
ID = 889492
pos = -24,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 26
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, Meat Arm]
type = Explod
trigger1 = time = 380
trigger1 = Facing = -1 ;facing left
trigger1 = name != "Road Runner"
anim = F89142
ID = 889492
pos = -24,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 26
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, Meat Leg RoadRunner]
type = Explod
trigger1 = time = 380
trigger1 = Facing = 1 ;facing right
trigger1 = name = "Road Runner"
anim = F89214
ID = 889492
pos = -24,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 2,2
sprpriority = 26
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, Meat Leg RoadRunner]
type = Explod
trigger1 = time = 380
trigger1 = Facing = -1 ;facing left
trigger1 = name = "Road Runner"
anim = F89214
ID = 889492
pos = -24,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 2,2
sprpriority = 26
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, Meat Guts]
type = Explod
trigger1 = time = 380
trigger1 = Facing = 1 ;facing right
anim = F89143
ID = 889492
pos = 0,-7
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
pausemovetime = 0
vel = 0,-0.1
scale = 1,1
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, Meat Guts]
type = Explod
trigger1 = time = 380
trigger1 = Facing = -1 ;facing left
anim = F89143
ID = 889492
pos = 0,-7
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = -1
pausemovetime = 0
vel = 0,-0.1
scale = 1,1
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889491, PlaySnd]
type = PlaySnd
trigger1 = time = 405
value = F52,0

[State 889491, PlaySnd]
type = PlaySnd
trigger1 = time = 595
value = F52,0

[State 889491, RemoveExplod]
type = RemoveExplod
trigger1 = time = 760
id = 889492

[State 889491, Blade]
type = PlaySnd
trigger1 = time = 275
value = F32,random%4

[State 889491, Saw]
type = PlaySnd
trigger1 = time = 320
value = F48,0

[State 889491, ChangeState] ; Neverending
type = ChangeState
trigger1 = movecontact
value=889490
ignorehitpause=1

;-------------------------
; Meat Head Falling in Death Chamber
[Statedef 889492]
type = S
movetype= I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 25
juggle = 5
anim = 9800 ;Your characters own animation

[State 889492, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 889492, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889492, VelSet] ;Combatant falling
type = VelSet
trigger1 = time >= 0 && time <=7
x = 0
y = 4

[State 889492, VelSet] ;Combatant stop falling & go right
type = VelSet
trigger1 = time >= 7 && time <=55
x = -0.5
y = 0

[State 889492, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 55 && time <=75
x = 0
y = 0

[State 889492, VelSet] ;Combatant stop falling & go Left
type = VelSet
trigger1 = time >= 75 && time <=300
x = 0.1
y = 0

[State 889492, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 300 && time <=340
x = 0
y = 0

[State 889492, VelSet] ;Combatant stop falling & go Left
type = VelSet
trigger1 = time >= 340 && time <=710
x = 0.1
y = 0

[State 889492, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 710 && time <=1049
x = 0
y = 0

[State 889492, VelSet] ;Combatant falling
type = VelSet
trigger1 = time >= 1049 && time <=1069
x = 0
y = 4

[State 889492, VelSet] ;Combatant stop falling
type = VelSet
trigger1 = time >= 1069
x = 0
y = 0

[State 889492, Meat Head]
type = Explod
trigger1 = time = 0
trigger1 = Facing = 1 ;facing right
trigger1 = name != "Road Runner"
anim = F89141
;ID = 889499
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 760
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 27
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Meat Head]
type = Explod
trigger1 = time = 0
trigger1 = Facing = -1 ;facing left
trigger1 = name != "Road Runner"
anim = F89141
;ID = 889499
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 760
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 27
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Meat Head RoadRunner]
type = Explod
trigger1 = time = 0
trigger1 = Facing = 1 ;facing right
trigger1 = name = "Road Runner"
anim = F89213
;ID = 889499
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 760
pausemovetime = 0
;vel = 0,-4
scale = 2,2
sprpriority = 27
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Meat Head RoadRunner]
type = Explod
trigger1 = time = 0
trigger1 = Facing = -1 ;facing left
trigger1 = name = "Road Runner"
anim = F89213
;ID = 889499
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 760
pausemovetime = 0
;vel = 0,-4
scale = 2,2
sprpriority = 27
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, DC Blood]
type = Explod
trigger1 = time = 725
anim = F89147
;ID = 889499
pos = 0,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 28
pausemovetime = 0
vel = 0,-4
scale = 1,1
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Blade]
type = PlaySnd
trigger1 = time = 725
value = F32,random%4

[State 889492, Meat Chunk]
type = Explod
trigger1 = time = 380
trigger1 = Facing = 1 ;facing right
anim = F89144
ID = 889492
pos = 24,-55
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
pausemovetime = 0
vel = 0.1,0.1
scale = 1,1
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Meat Chunk]
type = Explod
trigger1 = time = 380
trigger1 = Facing = -1 ;facing left
anim = F89144
ID = 889492
pos = 24,-55
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = -1
pausemovetime = 0
vel = 0.1,0.1
scale = 1,1
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, RemoveExplod]
type = RemoveExplod
trigger1 = time = 760
id = 889492

[State 889492, Skull]
type = Explod
trigger1 = time = 760
trigger1 = Facing = 1 ;facing right
trigger1 = name != "Road Runner"
anim = F89145
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 310
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Skull]
type = Explod
trigger1 = time = 760
trigger1 = Facing = -1 ;facing left
trigger1 = name != "Road Runner"
anim = F89145
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 310
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Beak RoadRunner]
type = Explod
trigger1 = time = 760
trigger1 = Facing = 1 ;facing right
trigger1 = name = "Road Runner"
anim = F89215
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 310
pausemovetime = 0
;vel = 0,-4
scale = 2,2
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Beak RoadRunner]
type = Explod
trigger1 = time = 760
trigger1 = Facing = -1 ;facing left
trigger1 = name = "Road Runner"
anim = F89215
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 310
pausemovetime = 0
;vel = 0,-4
scale = 2,2
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Quick Saw]
type = PlaySnd
trigger1 = time = 750
value = F50,0

[State 889492, Skull Pop]
type = Explod
trigger1 = time = 1070
trigger1 = Facing = 1 ;facing right
trigger1 = name != "Road Runner"
anim = F89146
;ID = 889492
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 13
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Skull Pop]
type = Explod
trigger1 = time = 1070
trigger1 = Facing = -1 ;facing left
trigger1 = name != "Road Runner"
anim = F89146
;ID = 889492
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 13
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Beak Bounce RoadRunner]
type = Explod
trigger1 = time = 1070
trigger1 = Facing = 1 ;facing right
trigger1 = name = "Road Runner"
anim = F89216
;ID = 889492
pos = 0,-13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 2,2
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Beak Bounce RoadRunner]
type = Explod
trigger1 = time = 1070
trigger1 = Facing = -1 ;facing left
trigger1 = name = "Road Runner"
anim = F89216
;ID = 889492
pos = 0,-13
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
;vel = 0,-4
scale = 2,2
sprpriority = 25
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889492, Skull Pop]
type = PlaySnd
trigger1 = time = 1070
trigger1 = name != "Road Runner"
value = F51,0

[State 889492, Beak Bounce]
type = PlaySnd
trigger1 = time = 1070 || time = 1118
trigger1 = name = "Road Runner"
value = F61,0

[State 889492, Beak Bounce RoadRunner]
type = PlaySnd
trigger1 = time = 1070 || time = 1118
trigger1 = name = "Road Runner"
value = F61,0

[State 889492, Tounge RoadRunner]
type = PlaySnd
trigger1 = time = 1161
trigger1 = name = "Road Runner"
value = F78,0

[State 889492, ChangeState] ; Neverending
type = ChangeState
trigger1 = movecontact
value=889490
ignorehitpause=1

;---------------------------------------------------------------------------
; Time Warp
[Statedef 889493]
type = S
ctrl = 0
anim = 0 ;Stance
velset = 0,0
sprpriority = 2
ctrl = 0

[State 889493, PalFX]
type=palfx
trigger1=time=0
time=200
sinadd=128,128,128,110
invertall=0
color=256
ignorehitpause=1
persistent=1

[State 889493, CtrlSet]
type = CtrlSet
trigger1 = time = [0,2100]
value = 0
persistent = 1

[State 889493, VelSet] ;Glowie Movement
type = VelSet
trigger1 = time >= 50 && time <=55
x = 0
y = -1

[State 889493, VelSet] ;Glowie Movement
type = VelSet
trigger1 = time >= 55 && time <=60
x = 0
y = -2

[State 889493, VelSet] ;Glowie Movement
type = VelSet
trigger1 = time >= 60 && time <=200
x = 0
y = -3

[State 889493, VelSet] ;Glowie Stop
type = VelSet
trigger1 = time >= 200
x = 0
y = 0

[State 889493, PosSet]
type = PosSet
trigger1 = time = 200
x = 0
y = 0

[State 889493, ChangeAnim]
type = ChangeAnim
trigger1 = time >=40
value = 9800 ;Invisible

[State 889493, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 889493, EC Glowie]
type = Explod
trigger1 = time = 35
anim = F89150
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 120
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889493, WarpandDoor]
type = PlaySnd
trigger1 = time = 32
trigger1 = stagevar(info.name) = "Belgrave Square Labs"
;trigger1 = stagevar(info.name) != "Ultimate_Great_Rift_Valley_ECCftDS"
value = F47,0

[State 889493, Warp]
type = PlaySnd
trigger1 = time = 32
trigger1 = stagevar(info.name) = "Ultimate_Great_Rift_Valley_ECCftDS"
trigger2 = time = 32
trigger2 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
value = F99,2

[State 889493, PosSet] ;Below Floor on Great Rift Valley
type = PosSet
trigger1 = time >= 700
trigger1 = stagevar(info.name) = "Ultimate_Great_Rift_Valley_ECCftDS"
trigger2 = time >= 340
trigger2 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
y = 400
;ignorehitpause =
;persistent =

[State 889493]
type = AssertSpecial
trigger1 = time = [0,2100]
flag = roundnotover
flag2 = timerfreeze

[State 889493, ChangeState] ;Below Floor on Great Rift Valley
type = ChangeState
trigger1 = time >= 800
trigger1 = stagevar(info.name) = "Ultimate_Great_Rift_Valley_ECCftDS"
trigger2 = time >= 350
trigger2 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
value = 5150 ;puzzled on how to not get the intro to play after finisher.
ctrl = 1
;anim =
;ignorehitpause =
;persistent =


;------------------------------
; end round faster "Belgrave Square Labs finisher2"
[Statedef 889494]
type    = S
movetype= H
physics = N
anim = 9800 ;invisible
velset = 0,0
pos = 0,0
sprpriority = 2
ctrl = 0

[State 889494, AssertSpecial]
type = AssertSpecial
trigger1 = time <= 1608
flag = nomusic
flag2 = noshadow
flag3 = roundnotover

[State 889494, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 889494]
type = Helper
trigger1 = time = 0
stateno = 889495
id = 889495
ownpal = 0
pos = 0,0
postype = p1
supermove = 99999
pausemove = 99999
size.xscale = 1
size.yscale = 1

[State 889494, playwinposefaster]
type = ChangeState
trigger1 = time >= 1608
trigger1 = !Ishelper
value = 5150

;-------------------------
;Warp to Vapor Chamber for Belgrave Square Labs
[Statedef 889495]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = -1
anim = 5030 ;Your Character must have this anim

[State 889495, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 889495, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889495, PosFreeze]
type = PosFreeze
trigger1 = time < 50
value = 1

[State 889495, PalFX]
type=palfx
trigger1=time=0
time=200
sinadd=128,128,128,110
invertall=0
color=256
ignorehitpause=1
persistent=1

[State 889495, Warp]
type = PlaySnd
trigger1 = time = 50
value = F58,0

[State 889495, VelSet] ;Glowie Movement
type = VelSet
trigger1 = time >= 50 && time <=55
x = -1
y = 0

[State 889495, VelSet] ;Glowie Movement
type = VelSet
trigger1 = time >= 55
x = -2
y = 0

[State 889495, VelSet] ;Glowie Movement stop
type = VelSet
trigger1=numhelper(889478)
trigger1=abs(Rootdist X-Helper(889478),Rootdist X)=[-1,1]
trigger2=numhelper(889479)
trigger2=abs(Rootdist X-Helper(889479),Rootdist X)=[-1,1]
x = 0
y = 0

[State 889495, ChangeAnim]
type = ChangeAnim
trigger1 = time >=40
value = 9800 ;Invisible

[State 889495, Turn]
type = Turn
trigger1 = time = 41
trigger1 = root,facing = 1 ;facing right

[State 889495, VC Glowie]
type = Explod
trigger1 = time = 35
anim = F89150
pos = 0,-60
postype = p1  ;p2,front,back,left,right
ID = 89150
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889495, RemoveExplod]
type = RemoveExplod
trigger1=numhelper(889480)
trigger1=abs(Rootdist X-Helper(889480),Rootdist X)=[-1,1]
trigger2=numhelper(889481)
trigger2=abs(Rootdist X-Helper(889481),Rootdist X)=[-1,1]
id = 89150

[State 889495, VC Glowie2Zapper]
type = Explod
trigger1 = NumExplod(89153) = 0
trigger1=numhelper(889480)
trigger1=abs(Rootdist X-Helper(889480),Rootdist X)=[-1,1]
trigger2 = NumExplod(89153) = 0
trigger2=numhelper(889481)
trigger2=abs(Rootdist X-Helper(889481),Rootdist X)=[-1,1]
anim = F89153
ID = 89153
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889495, WarpAgain]
type = PlaySnd
trigger1 = NumExplod(89153) = 0
trigger1=numhelper(889480)
trigger1=abs(Rootdist X-Helper(889480),Rootdist X)=[-1,1]
trigger2 = NumExplod(89153) = 0
trigger2=numhelper(889481)
trigger2=abs(Rootdist X-Helper(889481),Rootdist X)=[-1,1]
value = F58,0

[State 889487, Belgrave Darkness]
type = Explod
trigger1 = time = 246
anim = F89138
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 45
pausemovetime = 0
scale = 1,1
sprpriority = 37
ontop = 1
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889495, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889495, ChangeState]
type = ChangeState
trigger1 = time = 275
value=889496
ignorehitpause=1

;-------------------------
;Vapor Chamber for Belgrave Square Labs ending
[Statedef 889496]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = -1
anim = 9800 ;Your Character must have this anim

[State 889496, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 889496, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889486, Vapor Chamber]
type = Explod
trigger1 = time = 0
anim = F89154
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889496, Electric]
type = PlaySnd
trigger1 = time = 1
value = F30,1
volumescale = 20

[State 889496, Electric]
type = PlaySnd
trigger1 = time = 158
value = F30,0

[State 889496, Electric]
type = PlaySnd
trigger1 = time = 248
value = F30,1

[State 889496, Chamber]
type = PlaySnd
trigger1 = time = 210
value = F60,0

[State 889496, Vaporizer]
type = PlaySnd
trigger1 = time = 278
value = F56,0

[State 889496, yell]
type = PlaySnd
trigger1 = time = 318
value = S11,0

[State 889496, Vaporizor2]
type = PlaySnd
trigger1 = time = 508
value = F57,0

[State 889496, Flames]
type = PlaySnd
trigger1 = time = 562
value = F53,0

[State 889496, Flames 2]
type = PlaySnd
trigger1 = time = 560
value = F31,2
volumescale = 20

[State 889496, Vaporand SkellyBones]
type = PlaySnd
trigger1 = time = 690
value = F55,0

[State 889496, GlassBreak]
type = PlaySnd
trigger1 = time = 883
value = F41,3

[State 889496, Blood]
type = PlaySnd
trigger1 = time = 897
value = F59,0

[State 889496, heartbeat]
type = PlaySnd
trigger1 = time = 953 || time = 985
value = F54,0

[State 889496, heartbeat]
type = PlaySnd
trigger1 = time = 1009 || time = 1033
value = F54,0

[State 889496, heartbeat]
type = PlaySnd
trigger1 = time = 1057 || time = 1081
value = F54,0

[State 889496, heartbeat]
type = PlaySnd
trigger1 = time = 1101 || time = 1125
value = F54,0

[State 889496, heartbeat]
type = PlaySnd
trigger1 = time = 1153 || time = 1181
value = F54,0

[State 889496, heartbeat]
type = PlaySnd
trigger1 = time = 1205 || time = 1233
value = F54,0

[State 889496, heartbeat]
type = PlaySnd
trigger1 = time = 1257 || time = 1277
value = F54,0

[State 889496, heartbeat]
type = PlaySnd
trigger1 = time = 1301 || time = 1329
value = F54,0

[State 889486, Belgrave Darkness2]
type = Explod
trigger1 = time = 0
anim = F89155
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 35
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889487, Belgrave Darkness]
type = Explod
trigger1 = time = 1315
anim = F89138
;ID =
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 45
pausemovetime = 0
scale = 1,1
sprpriority = 37
ontop = 1
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889495, NotHitBy] ;Can't be hit again
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 889495, PosSet]
type = PosSet
trigger1 = time >=0
x = 0
y = 0

;---------------------------------------------------------------------------
; Time Warp 2
[Statedef 889498]
type = S
ctrl = 0
velset = 0,0
sprpriority = 2

[State 889498, ChangeAnim] ;Stay in same attack animation
type = ChangeAnim
Trigger1 = time < 40
value = anim
elem = animelemno(0)

[State 889498, PalFX]
type=palfx
trigger1=time=0
time=200
sinadd=128,128,128,110
invertall=0
color=256
ignorehitpause=1
persistent=1

[State 889498, CtrlSet]
type = CtrlSet
trigger1 = time <= 1608
value = 0
persistent = 1

[State 889498, Warp]
type = PlaySnd
trigger1 = time = 55
value = F58,0

[State 889498, VelSet] ;Glowie Movement
type = VelSet
trigger1 = time >= 50 && time <=55
x = 0
y = -1

[State 889498, VelSet] ;Glowie Movement
type = VelSet
trigger1 = time >= 55 && time <=60
x = 0
y = -2

[State 889498, VelSet] ;Glowie Movement
type = VelSet
trigger1 = time >= 60 && time <=200
x = 0
y = -3

[State 889498, VelSet] ;Glowie Stop
type = VelSet
trigger1 = time >= 200
x = 0
y = 0

[State 889498, PosSet]
type = PosSet
trigger1 = time = 200
x = 0
y = 300

[State 889498, ChangeAnim]
type = ChangeAnim
trigger1 = time >=40
value = 9800 ;Invisible

[State 889498, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 889498, EC Glowie]
type = Explod
trigger1 = time = 35
anim = F89150
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 120
pausemovetime = 0
;vel = 0,-4
scale = 1,1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889498, WarpandDoor]
type = PlaySnd
trigger1 = time = 32
value = F47,0

[State 889498]
type = AssertSpecial
trigger1 = time <= 1608
flag = roundnotover
flag2 = timerfreeze

;------------------------------------------
;Septic Lair stage finisher - for Player 1
[Statedef 889658]
type = S
ctrl = 0
anim = 0
velset = 0,0
sprpriority = 2

[State 889658, ChangeAnim]
type = ChangeAnim
trigger1 = time = 25
value = 9800 ;Invisible

[State 889658, PosSet]
type = PosSet
trigger1 = Time = 53
y = 1000

[state 889658, AssertSpecial]
type = AssertSpecial
trigger1 = Time >= 53
flag = noshadow

[State 889658, Helper]
type = Helper
trigger1 = Time = 25
ID = 180
pos = 0,0
postype = P1
stateno = 180
helpertype = normal
name = "Winning"
keyctrl = 0
sprpriority = -2

[State 889658, Helper]
type = Helper
trigger1 = NumHelper(889659) = 0 ;It cannot have Helper as this in the screen.
trigger1 = Time >= 55
ID = 889659
pos = 160,-120
postype = left
stateno = 889659
helpertype = normal
name = "Screen"
keyctrl = 0
sprpriority = -2

[State 889658, ChangeState]
type = ChangeState
trigger1 = time = 200
value = 0
ctrl = 1

;-----------------------------------
;Zone
[Statedef 889659]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 9800
ctrl = 0

[State 889659, Helper]
type = Helper
trigger1 = NumHelper(889659) = 0
ID = 889659
pos = 160,-120
postype = left
stateno = 889659
helpertype = normal
name = "Zone"
keyctrl = 0
sprpriority = -2

[State 889659, 2]
type = Destroyself
trigger1 = time = 200

;-------------------------
;Pit 1 enemy react
[Statedef 889660]
type    = S
movetype= H
physics = S
juggle  = 1
velset = 0,0
anim = 5030
ctrl = 0

[State 889660, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 5930
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 5930
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, PrettyBoy25]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 3
trigger1 = time = 0
value = 5730
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, PrettyBoy50]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 2
trigger1 = time = 0
value = 5830
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, PrettyBoy75]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 1
trigger1 = time = 0
value = 5930
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, FlameGolem]
type = ChangeAnim
triggerall = name = "Ultimate_Blob"
triggerall = Var(50) = 1
trigger1 = time = 0
value = 5930
;elem = 1
;ignorehitpause =
;persistent =

[state 889660, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 889660, 2]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 889660, 3]
type =  ChangeAnim
trigger1 = time = 30
value = 5050

[State 889660, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 30
value = 5950
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 30
value = 5950
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, PrettyBoy25]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 3
trigger1 = time = 30
value = 5750
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, PrettyBoy50]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 2
trigger1 = time = 30
value = 5850
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, PrettyBoy75]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 1
trigger1 = time = 30
value = 5950
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, FlameGolem]
type = ChangeAnim
triggerall = name = "Ultimate_Blob"
triggerall = Var(50) = 1
trigger1 = time = 30
value = 5950
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, 4]
type = Velset
trigger1 = time = [0,30]
x = -.5
y = -5.8

[State 889660, 5]
type = VelAdd
trigger1 = time = [30,158]
x = 0
y = 0.2

[State 889660, 5]
type = VelAdd
trigger1 = time >= 158
x = 0
y = 0.2

[State 889660, 6]
type = Velset
trigger1 = time >= 158
x = 0
y = 0

[State 889660, 3]
type =  ChangeAnim
trigger1 = time = 158
value = 5080

[State 889660, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 158
value = 5980
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 158
value = 5980
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, PrettyBoy25]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 3
trigger1 = time = 158
value = 5780
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, PrettyBoy50]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 2
trigger1 = time = 158
value = 5880
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, PrettyBoy75]
type = ChangeAnim
triggerall = name = "Ultimate_Pretty_Boy"
triggerall = Var(40) = 1
trigger1 = time = 158
value = 5980
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, FlameGolem]
type = ChangeAnim
triggerall = name = "Ultimate_Blob"
triggerall = Var(50) = 1
trigger1 = time = 158
value = 5980
;elem = 1
;ignorehitpause =
;persistent =

[State 889660, BloodSplash]
type = Explod
trigger1 = time = 158
anim = F89207
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
removetime = 26
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 889660, Yell]
type = PlaySnd
trigger1 = time = 70
value = 11,0

[State 889660, HitFloor]
type = PlaySnd
trigger1 = time = 158
value = F66,0

[State 889663, Bloodsplash]
type = PlaySnd
trigger1 = time = 159
value = F67,0

[State 889659, Helper]
type = Helper
trigger1 = time = 160
ID = 889661
pos = 2,-30
postype = p1
stateno = 889661
helpertype = normal
name = "MK1bloodspin"
keyctrl = 0
sprpriority = 21

[State 889659, Helper]
type = Helper
trigger1 = time = 161
ID = 889661
pos = 4,-31
postype = p1
stateno = 889661
helpertype = normal
name = "MK1bloodspin2"
keyctrl = 0
sprpriority = 21

[State 889659, Helper]
type = Helper
trigger1 = time = 159
ID = 889662
pos = -2,-32
postype = p1
stateno = 889662
helpertype = normal
name = "MK1bloodspin3"
keyctrl = 0
sprpriority = 21

[State 889659, Helper]
type = Helper
trigger1 = time = 161
ID = 889662
pos = -4,-30
postype = p1
stateno = 889662
helpertype = normal
name = "MK1bloodspin4"
keyctrl = 0
sprpriority = 21

[State 889659, Helper]
type = Helper
trigger1 = time = 162
ID = 889661
pos = 2,-50
postype = p1
stateno = 889661
helpertype = normal
name = "MK1bloodspin5"
keyctrl = 0
sprpriority = 21

[State 889659, Helper]
type = Helper
trigger1 = time = 163
ID = 889661
pos = 4,-51
postype = p1
stateno = 889661
helpertype = normal
name = "MK1bloodspin6"
keyctrl = 0
sprpriority = 21

[State 889659, Helper]
type = Helper
trigger1 = time = 164
ID = 889662
pos = -2,-53
postype = p1
stateno = 889662
helpertype = normal
name = "MK1bloodspin7"
keyctrl = 0
sprpriority = 21

[State 889659, Helper]
type = Helper
trigger1 = time = 163
ID = 889662
pos = -4,-52
postype = p1
stateno = 889662
helpertype = normal
name = "MK1bloodspin8"
keyctrl = 0
sprpriority = 21

[State 889660, 10]
type = SelfState
trigger1 = time = 200
value = 5150

;-------------------------------------------------------------
;MK1 blood drop
[Statedef 889661]
type    = A
movetype= I
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889661, Explod]
type = Explod
trigger1 = time = 0
anim = F89209
ID = 889661
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 0
ownpal = 1
removeongethit = 0

[State 889661, varrandom]
type = VarRandom
trigger1 = 1
v = 0
range = -1,-8

[State 889661, varrandom]
type = VarRandom
trigger1 = 1
v = 1
range = -3,-1

[State 889661, velset]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889661, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 889661, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 729
trigger1 = Vel Y > 0
value = 889663
ctrl = 0

;-------------------------------------------------------------
;MK1 blood drop #2
[Statedef 889662]
type    = A
movetype= I
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889662, Explod]
type = Explod
trigger1 = time = 0
anim = F89209
ID = 889662
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 0
ownpal = 1
removeongethit = 0

[State 889662, varrandom]
type = VarRandom
trigger1 = 1
v = 2
range = 1,-8

[State 889662, varrandom]
type = VarRandom
trigger1 = 1
v = 3
range = 3,-1

[State 889662, velset]
type = velset
trigger1 = time = 1
y = var(2)
x = var(3)

[State 889662, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 889662, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 729
trigger1 = Vel Y > 0
value = 889663
ctrl = 0

;-------------------------------------------------------------
;MK1 blood on ground
[Statedef 889663]
type    = A
movetype= I
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889663, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 889663, new ground blood]
type = explod
anim = F89208
trigger1 = time = 0
pos = 0,0
postype = p1
bindtime = 1
vel = 0, 0
sprpriority = 22
removetime = 53
ownpal = 1

[State 889663, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 889661

[State 889663, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 889662

[State 889663, Squish]
type = PlaySnd
trigger1 = time = 0
value = F68,0

[State 889663, DestroySelf] ;Good bye blood
type = DestroySelf
trigger1 = time = 54
ignorehitpause = 1

;----------------------------------
;Barrel O goodies for "WestSide FF" stage Energy #1
[Statedef 889680]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
sprpriority = -5

[State 889680, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889680, Barrel]
type = Explod
trigger1 = time = 0
anim = F89007
ID = 889680
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 0

[State 889680, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889680, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889681

[State 889680, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889680, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889680, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889681
ctrl = 0

;----------------------------------
;Barrel O goodies for "West Side FF" stage Energy #1 Cont...
[Statedef 889681]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
sprpriority = -5

[State 889681, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889681, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889681, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889682

[State 889681, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889681, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889681, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889682
ctrl = 0

;----------------------------------
;Barrel O goodies for "West Side FF" stage Energy #1 Cont...
[Statedef 889682]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
sprpriority = -5

[State 889682, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889682, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889682, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889683

[State 889682, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889682, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889682, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889683
ctrl = 0

;------------------------------
; broken FF barrel Energy #1 end
[Statedef 889683]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
sprpriority = -5

[State 889683, Wood]
type = PlaySnd
trigger1 = time = 0
value = F33,random%4

[State 889683, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889683, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889680

[State 889683, barrel bottom]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889683
helpertype = Normal
ID = 889146
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889126
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889683, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889683
helpertype = Normal
ID = 889144
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889683, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889683
helpertype = Normal
ID = 889144
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889683, wood piece square]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889683
helpertype = Normal
ID = 889147
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889127
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889683, wood piece medium]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889683
helpertype = Normal
ID = 889129
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889129
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889683, wood piece small]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889683
helpertype = Normal
ID = 889130
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889130
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889683, wood piece fragments]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889683
helpertype = Normal
ID = 889131
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889131
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889683, FFGoodie2]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889683
helpertype = Normal
ID = 889160
name = "Goodie Energy2"
postype = p1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889683, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889680
ctrl = 0

;----------------------------------
; trashcan#1 O goodies for "WestSide - FF" stage Energy
[Statedef 889690]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
sprpriority = -2

[State 889690, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889690, Trash Can]
type = Explod
trigger1 = time = 0
anim = F89027
ID = 65664
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 0

[State 889690, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889690, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889690, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889690, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889691
ctrl = 0

[State 889690, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889691

;----------------------------------
; trashcan#1 O goodies for "Subway Station - FF" stage Energy Cont...
[Statedef 889691]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
sprpriority = -2

[State 889691, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889691, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889691, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889691, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889691, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889692
ctrl = 0

[State 889691, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889692

;----------------------------------
; trashcan#1 O goodies for "Subway Train FF" stage Energy Cont...
[Statedef 889692]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Trashcan Hitbox
velset = 0,0
sprpriority = -2

[State 889692, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889692, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889692, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889692, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889692, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889693
ctrl = 0

[State 889692, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889693

;------------------------------
;Broken trashcan#1 end Energy
[Statedef 889693]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
sprpriority = -2

[State 889693, Broke Trashcan]
type = PlaySnd
trigger1 = time = 0
value = F41,2

[State 889693, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 65664

[State 889693, wasted can]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889693
helpertype = Normal
ID = 889694
name = "wastedcan"
postype = p1
pos = 0,-40
stateno = 889694
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889693, FFGoodie4]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889693
helpertype = Normal
ID = 889696
name = "FFgoodie4"
postype = p1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889693, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889693, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889693
ctrl = 0

;-------------------------------------------------------------
;Wasted can
[Statedef 889694]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889694, Explod]
type = Explod
trigger1 = time = 0
anim = F89028
ID = 889694
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889694, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State y]
type = VarRandom
trigger1 = 1
v = 0
range = -5,-9
[State x]
type = VarRandom
trigger1 = 1
v = 1
range = 5,-1

[State ]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State ]
type = veladd
trigger1 = time >= 1
y = .3

[State 889694]
type = ChangeState
trigger1 = Pos Y >= -14
trigger1 = Vel Y > 0
value = 889695

;-------------------------------
;wasted can on ground
[Statedef 889695]
type    = S
movetype= H
physics = N
velset = 0,0

[State 889695, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889694

[State 889695, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889695, ChangeAnim] ;change to own Invisible anim
type = ChangeAnim
Trigger1 = Time = 0
value = 9800 ;Invisible

[State 889695, Can hit ground]
type = PlaySnd
trigger1 = time = 0
value = F42,0
volume = 250

[State 889695, wasted can]
type = explod
anim = F89028
trigger1 = time = 0
postype = p1
pos = 0,0
vel = 0, 0
sprpriority = -5
removetime = 335
ownpal = 1

[State 889695, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;----------------------------------
; trashcan#1 O empty for "WestSide - FF" stage
[Statedef 889700]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
juggle = 25
sprpriority = 21

[State 889700, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889700, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889700, Trashcan]
type = Explod
trigger1 = time = 0
anim = F89027
ID = 889700
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 0

[State 889700, Explod]
type = Explod
trigger1 = rootdist x = [-50,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889700, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889700, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889701
ctrl = 0

[State 889700, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889701

;----------------------------------
; trashcan#2 O empty for "Subway Station - FF" stage Cont...
[Statedef 889701]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
juggle = 25
sprpriority = 21

[State 889701, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889701, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889701, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889701, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889701, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889702
ctrl = 0

[State 889701, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889702

;----------------------------------
; trashcan#2 O empty for "Subway Train FF" stage Cont...
[Statedef 889702]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
juggle = 25
sprpriority = 21

[State 889702, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889702, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889702, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889702, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889702, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889703
ctrl = 0

[State 889702, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889703

;------------------------------
; broken trashcan#2 end
[Statedef 889703]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 1
sprpriority = 21

[State 889703, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889700

[State 889703, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889703, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1526,2

[State 889703, wasted can]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889703
helpertype = Normal
ID = 889704
name = "wastedcan"
postype = p1
pos = 0,-40
stateno = 889704
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889703, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 889703 ;perpetual loop
ctrl = 0

;-------------------------------------------------------------
;Wasted can
[Statedef 889704]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889704, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889704, Explod]
type = Explod
trigger1 = time = 0
anim = F89028
ID = 889704
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889704]
type = VarRandom
trigger1 = 1
v = 0
range = -5,-9

[State 889704]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889704]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889704]
type = veladd
trigger1 = time >= 1
y = .3

[State 889704]
type = ChangeState
trigger1 = Pos Y >= -14
trigger1 = Vel Y > 0
value = 889705

;-------------------------------
;wasted can on ground
[Statedef 889705]
type    = S
movetype= H
physics = N
velset = 0,0

[State 889705, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889705, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889704

[State 889705, ChangeAnim]
type = ChangeAnim
Trigger1 = Time = 0
value = 9800 ;Invisible

[State 889705, Can hit Ground]
type = PlaySnd
trigger1 = time = 0
value = F42,0
volume = 250

[State 889705, wasted can]
type = explod
anim = F89028
trigger1 = time = 0
postype = p1
pos = 0,0
vel = 0, 0
sprpriority = -5
removetime = 335
ownpal = 1

[State 889705, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;----------------------------------
;Trashcan#2 O empty for "WestSide - FF" stage
[Statedef 889706]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
sprpriority = 21

[State 889706, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889706, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889706, Trashcan]
type = Explod
trigger1 = time = 0
anim = F89027
ID = 889706
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0

[State 889706, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889706, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889706, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889707
ctrl = 0

[State 889706, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889707

;----------------------------------
;Trashcan#2 O empty for "Subway Station - FF" stage Cont...
[Statedef 889707]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
sprpriority = 21

[State 889707, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889707, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889707, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889707, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889707, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889708
ctrl = 0

[State 889707, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889708

;----------------------------------
;Trashcan#2 O empty for "Subway Train FF" stage Cont...
[Statedef 889708]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889347 ;Hitbox
velset = 0,0
juggle = 25
sprpriority = 21

[State 889708, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889708, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889708, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889708, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889708, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889709
ctrl = 0

[State 889708, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889709

;------------------------------
; broken trashcan#2 end
[Statedef 889709]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 1
sprpriority = 21

[State 889709, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889706

[State 889709, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889709, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1526,2

[State 889709, wasted can]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889709
helpertype = Normal
ID = 889710
name = "wastedcan"
postype = p1
pos = 0,-40
stateno = 889710
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889709, FFGoodie5]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889709
helpertype = Normal
ID = 889709
name = "FFgoodie5"
postype = p1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889709, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 889709 ;perpetual loop
ctrl = 0

;-------------------------------------------------------------
;Wasted can
[Statedef 889710]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889710, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889710, Explod]
type = Explod
trigger1 = time = 0
anim = F89028
ID = 889710
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889710]
type = VarRandom
trigger1 = 1
v = 0
range = -5,-9

[State 889710]
type = VarRandom
trigger1 = 1
v = 1
range = 5,-1

[State 889710]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889710]
type = veladd
trigger1 = time >= 1
y = .3

[State 889710]
type = ChangeState
trigger1 = Pos Y >= 23
trigger1 = Vel Y > 0
value = 889711

;-------------------------------
;wasted can on ground
[Statedef 889711]
type    = S
movetype= H
physics = N
velset = 0,0

[State 889711, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889711, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889710

[State 889711, ChangeAnim]
type = ChangeAnim
Trigger1 = Time = 0
value = 9800 ;Invisible

[State 889711, Can hit Ground]
type = PlaySnd
trigger1 = time = 0
value = F42,0
volume = 250

[State 889711, wasted can]
type = explod
anim = F89028
trigger1 = time = 0
postype = p1
pos = 0,0
vel = 0, 0
sprpriority = 20
removetime = 335
ownpal = 1

[State 889711, DestroySelf]
type = DestroySelf
trigger1 = time = 335

;----------------------------------
;WestSide Surf Sign #1
[Statedef 889743]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889743, sign]
type = Explod
trigger1 = time = 0
anim = F89240
ID = 889743
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889743, Width]
type = Width
trigger1 = 1
edge = 0,0
player = 1,0

[State 889743, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889743, ChangeState]
type = ChangeState
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y >= -103
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y >= -103
value = 889744 + (random % 5)
ctrl = 0

;----------------------------------
;Surf sign Cont...
[Statedef 889744]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 889744, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889744, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y >= -103
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y >= -103
value = 889745
ctrl = 0

;----------------------------------
; Surf sign Cont...
[Statedef 889745]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 889745, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889745, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y >= -103
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y >= -103
value = 889746
ctrl = 0

;----------------------------------
;Surf sign Cont...
[Statedef 889746]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 889746, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889746, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y >= -103
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y >= -103
value = 889747
ctrl = 0

;----------------------------------
; Surf sign Cont...
[Statedef 889747]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 889747, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889747, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y >= -103
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y >= -103
value = 889748
ctrl = 0

;------------------------------
; broken Surf sign end
[Statedef 889748]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15
sprpriority = -2

[State 889748] ;Pause when hitting the sign
type = pause
trigger1 = time = 0
time=8

[State 889748, RemoveExplod] ;Remove Ryu Sign
type = RemoveExplod
trigger1 = time >= 0
id = 889743

[State 889748, sign broke]
type = Explod
trigger1 = time = 0
anim = F89241
;ID = 889748
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889748, Woodbreak]
type = PlaySnd
trigger1 = time = 0
value = F33,4

[State 889748, wood piece big]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889144
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889748, wood piece big]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889144
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889748, wood piece square]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889147
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889127
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889748, wood piece medium]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889129
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889129
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889748, wood piece small]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889130
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889130
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889748, wood piece fragments]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889131
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889131
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889748, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889748, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 889213
ctrl = 0

;----------------------------------
;WestSide Surf Sign #2
[Statedef 889749]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889749, sign]
type = Explod
trigger1 = time = 0
anim = F89240
ID = 889749
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889749, Width]
type = Width
trigger1 = 1
edge = 0,0
player = 1,0

[State 889749, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889749, ChangeState]
type = ChangeState
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y >= -103
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y >= -103
value = 889750 + (random % 5)
ctrl = 0

;----------------------------------
;Surf sign Cont...
[Statedef 889750]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 889750, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889750, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y >= -103
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y >= -103
value = 889751
ctrl = 0

;----------------------------------
; Surf sign Cont...
[Statedef 889751]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 889751, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889751, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y >= -103
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y >= -103
value = 889752
ctrl = 0

;----------------------------------
;Surf sign Cont...
[Statedef 889752]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889752, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889752, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y >= -103
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y >= -103
value = 889753
ctrl = 0

;----------------------------------
; Surf sign Cont...
[Statedef 889753]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 889753, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889753, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y >= -103
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y >= -103
value = 889754
ctrl = 0

;------------------------------
; broken Surf sign end
[Statedef 889754]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15
sprpriority = -2

[State 889754] ;Pause when hitting the sign
type = pause
trigger1 = time = 0
time=8

[State 889754, RemoveExplod] ;Remove Ryu Sign
type = RemoveExplod
trigger1 = time >= 0
id = 889749

[State 889754, sign broke]
type = Explod
trigger1 = time = 0
anim = F89241
;ID = 889748
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889754, Woodbreak]
type = PlaySnd
trigger1 = time = 0
value = F33,4

[State 889754, wood piece big]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889144
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889754, wood piece big]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889144
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889754, wood piece square]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889147
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889127
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889754, wood piece medium]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889129
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889129
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889754, wood piece small]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889130
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889130
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889754, wood piece fragments]
type = Helper
trigger1 = Time = 0
helpertype = Normal
ID = 889131
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889131
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889754, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889754, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 889213
ctrl = 0

;--------------------------------
;Captain Commando Museum LVL2 Wall#1
[Statedef 889785]
type    = S
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889370 ;Hitbox
velset = 0,0
juggle = 1

[State 889785, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889785, HitDef]
type = HitDef
Trigger1=Movecontact!=[1,15] ;time in between hits
Trigger1=!moveguarded  ;do not hit again if move guarded
trigger1 = root,facing = 1
trigger1 = root,StateType = A
trigger1=rootdist X = [1,200]
Trigger2=Movecontact!=[1,15] ;time in between hits
Trigger2=!moveguarded  ;do not hit again if move guarded
trigger2 = root,facing = -1
trigger2 = root,StateType = A
trigger2=rootdist X = [1,200]
Trigger3=Movecontact!=[1,15] ;time in between hits
Trigger3=!moveguarded  ;do not hit again if move guarded
trigger3 = enemy,facing = 1
trigger3 = enemy,StateType = A
trigger3=P2dist X = [1,200]
Trigger4=Movecontact!=[1,15] ;time in between hits
Trigger4=!moveguarded  ;do not hit again if move guarded
trigger4 = enemy,facing = -1
trigger4 = enemy,StateType = A
trigger4=P2dist X = [1,200]
attr = S, HA
animtype  = light
damage    = 0,0
affectteam = B
getpower = 0,0
givepower = 0,0
hitflag = MAF
guardflag = ;unblockable
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
guard.sparkno = -1
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0,0
guard.velocity = 0
air.velocity = -1,-1
air.fall = 0
p1facing = 1
fall.recovertime = 1
guard.Dist = 0
numhits = 0

[State 889785, HitDef]
type = HitDef
Trigger1=Movecontact!=[1,15] ;time in between hits
Trigger1=!moveguarded  ;do not hit again if move guarded
trigger1 = root,facing = -1
trigger1 = root,StateType = A
trigger1=rootdist X = [-200,0]
Trigger2=Movecontact!=[1,15] ;time in between hits
Trigger2=!moveguarded  ;do not hit again if move guarded
trigger2 = root,facing = 1
trigger2 = root,StateType = A
trigger2=rootdist X = [-200,0]
Trigger3=Movecontact!=[1,15] ;time in between hits
Trigger3=!moveguarded  ;do not hit again if move guarded
trigger3 = enemy,facing = -1
trigger3 = enemy,StateType = A
trigger3=P2dist X = [-200,0]
Trigger4=Movecontact!=[1,15] ;time in between hits
Trigger4=!moveguarded  ;do not hit again if move guarded
trigger4 = enemy,facing = 1
trigger4 = enemy,StateType = A
trigger4=P2dist X = [-200,0]
attr = S, HA
animtype  = light
damage    = 0,0
affectteam = B
getpower = 0,0
givepower = 0,0
hitflag = MAF
guardflag = ;unblockable
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
guard.sparkno = -1
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0,0
guard.velocity = 0
air.velocity = 1,-1
air.fall = 0
p1facing = 1
fall.recovertime = 1
guard.Dist = 0
numhits = 0

;--------------------------------------------------
;CaveWarrior SpawnerLeft
[Statedef 889789]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 0
sprpriority = -2

[State 889789, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889789, CaveWarriorLeft]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger1 = (GameTime % 100) = random%27
;trigger1 = time >=1
trigger1 = teamside = 2
trigger1 = Numhelper(889790) = 0 ;Numhelper and ID have to be the same
Pos = 0,0
name = "CaveWarriorLeft"
stateno = 889790
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 889790
;size.xscale = 2
;size.yscale = 2

[State 889789, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889789
ctrl = 0

;--------------------------------
;CaveWarrior Left Stance
[Statedef 889790]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889371 ;HitBox
velset = 0,0
juggle = 1

[State 889790, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 889790, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889790, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889790, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889790, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889790, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889790, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889790, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889790, Stance]
type = Explod
trigger1 = time = 0
anim = F80054
ID = 889790
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889790, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889790, HitOverride] ;light React
type = HitOverride
trigger1 = 1
;trigger1 = life >= 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889795 + random%10
ignorehitpause = 1

[State 889790, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889790, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889790, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889790)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889790)
value = 889795 + random%10
ctrl = 0

[State 889790, ChangeState]
type = ChangeState
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(889790)
trigger2 = rootdist X =[-20,20]
trigger2 = numhelper(889790)
value = 889810 + random%5
ctrl = 0

[State 889790, ChangeState]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(889790)
value = 889791 + random%3
ctrl = 0

;-------------------------------------
;CaveWarriorLeft chase opponent
[Statedef 889791]
type = S
movetype = I
physics = N
anim = 889371 ;Hitbox
ctrl = 0

[State 889791, VarSet]
Type = VarSet
Trigger1 = 1
fvar(0) = (EnemyNear(0), Pos X - Pos X) * Facing

[State 889791, turn]
type = turn
trigger1 = P2Dist X < 0
trigger1 = Vel X < 2

[State 889791, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889791, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889791, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889791, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889591, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889591, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889591, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889791, CaveWarriorLeftWalk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(0)
anim = F80055
ID = 889791
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -2
shadow = 190,190,190
ontop = 0
ownpal = 1
removeongethit = 0

[State 889791, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = P2BodyDist X != [-20,20]
x = 1.5

[State 889791, stop]
type = VelSet
trigger1 = P2BodyDist X = [-20,20];<= 170
x = 0

[State 889791, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889791, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889795 + random%10
ignorehitpause = 1

[State 889791, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889791, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889791, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889790)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889790)
value = 889795 + random%10
ctrl = 0

[State 889790, ChangeState]
type = ChangeState
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(889790)
value = 889810 + random%5
ctrl = 0

[State 889791, ChangeState]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(889790)
value = 889790
ctrl = 0

;-------------------------------------
;CaveWarriorLeft chase root
[Statedef 889792]
type = S
movetype = I
physics = N
anim = 889371 ;Hitbox
ctrl = 0

[State 889792, VarSet]
Type = VarSet
Trigger1 = 1
fvar(1) = (root, Pos X - Pos X) * Facing

[State 889792, turn]
type = turn
trigger1 = RootDist X < 0
trigger1 = Vel X < 2

[State 889792, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889792, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889792, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889792, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889792, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889792, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889792, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889792, CaveWarriorLeftWalk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(1)
anim = F80055
ID = 889792
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ontop = 0
ownpal = 1
removeongethit = 0

[State 889792, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = RootDist X !=[-20,20]
x = 1.5

[State 889792, stop]
type = VelSet
trigger1 = RootDist X =[-20,20];<= 170
x = 0

[State 889792, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889792, HitOverride] ;light React
type = HitOverride
trigger1 = 1
;trigger1 = life >= 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889795 + random%10
ignorehitpause = 1

[State 889792, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889792, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889792, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889790)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889790)
value = 889795 + random%10
ctrl = 0

[State 889790, ChangeState]
type = ChangeState
trigger1 = rootdist X =[-20,20]
;trigger1 = life >= 1
trigger1 = numhelper(889790)
value = 889810 + random%5
ctrl = 0

[State 889792, ChangeState]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(889790)
value = 889790
ctrl = 0

;-------------------------------------
;CaveWarriorLeft walking
[Statedef 889793]
type = S
movetype = I
physics = N
anim = 889371 ;Hitbox
ctrl = 0

[State 889793, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889793, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889793, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889793, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889793, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889793, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889793, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889793, CaveWarriorLeftWalk]
type = Explod
trigger1 = time = 0
anim = F80055
ID = 889793
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ontop = 0
ownpal = 1
removeongethit = 0

[State 889793, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889793, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889795 + random%10
ignorehitpause = 1

[State 889793, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889793, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889793, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889790)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889790)
value = 889795 + random%10
ctrl = 0

[State 889793, velset]
type = VelSet
trigger1 = Time >= 0
x = -1.2

[State 889793, ChangeState]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(889790)
value = 889790
ctrl = 0

;--------------------------------
;CaveWarriorLeft Light react
[Statedef 889795]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;889371 ;HitBox
velset = 0,0
juggle = 1

[State 889795, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889795, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889795, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889795, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889795, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889795, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889795, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889795, CaveWarriorHitReact]
type = Explod
trigger1 = time = 0
anim = F80066
ID = 889795
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889795, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889795, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889795 + random%10
ignorehitpause = 1

[State 889795, ChangeState]
type = ChangeState
trigger1 = time >= 9
trigger1 = numhelper(889790)
value = 889790
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft Light react
[Statedef 889796]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;889371 ;HitBox
velset = 0,0
juggle = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889796, CaveWarriorHitReact]
type = Explod
trigger1 = time = 0
anim = F80066
ID = 889795
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889796, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889796, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889795 + random%10
ignorehitpause = 1

[State 889796, ChangeState]
type = ChangeState
trigger1 = time >= 9
trigger1 = numhelper(889790)
value = 889790
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft Light react fall
[Statedef 889797]
type    = A
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 889372 ;HitBox
velset = -3,-5
juggle = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889797, CaveWarriorHitReactFall]
type = Explod
trigger1 = time = 0
anim = F80062
ID = 889797
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889797, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889797, HitOverride] ;Fall
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889797
ignorehitpause = 1

[State 889797, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
;ignorehitpause =
;persistent =

[State 889797, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=2
trigger1 = numhelper(889790)
value = 889804
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft Medium react
[Statedef 889798]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889371 ;HitBox
velset = 0,0
juggle = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889798, Explod]
type = Explod
trigger1 = time = 0
anim = F80068
ID = 889798
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889798, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889798, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889795 + random%10
ignorehitpause = 1

[State 889798, ChangeState]
type = ChangeState
trigger1 = time >= 20
trigger1 = numhelper(889790)
value = 889790
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft Medium react
[Statedef 889799]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889371 ;HitBox
velset = 0,0
juggle = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889799, Explod]
type = Explod
trigger1 = time = 0
anim = F80068
ID = 889798
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889799, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889799, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889795 + random%10
ignorehitpause = 1

[State 889799, ChangeState]
type = ChangeState
trigger1 = time >= 20
trigger1 = numhelper(889790)
value = 889790
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft Medium react Fall
[Statedef 889800]
type    = A
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 889372 ;HitBox
velset = -3.5,-6
juggle = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889575
ignorehitpause = 1

[State 889800, CaveWarriorHitReactFall]
type = Explod
trigger1 = time = 0
anim = F80062
ID = 889797
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889800, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889800, HitOverride] ;Fall
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889800
ignorehitpause = 1

[State 889800, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
;ignorehitpause =
;persistent =

[State 889800, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=2
trigger1 = numhelper(889790)
value = 889804
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft Hard react
[Statedef 889801]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889371 ;HitBox
velset = 0,0
juggle = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889801, Explod]
type = Explod
trigger1 = time = 0
anim = F80056
ID = 889801
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889801, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889801, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889795 + random%10
ignorehitpause = 1

[State 889801, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = F85,2

[State 889801, ChangeState]
type = ChangeState
trigger1 = time >= 22
trigger1 = numhelper(889790)
value = 889790
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft Hard react
[Statedef 889802]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889371 ;HitBox
velset = 0,0
juggle = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889802, Explod]
type = Explod
trigger1 = time = 0
anim = F80056
ID = 889801
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889802, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889802, HitOverride] ;light React
type = HitOverride
trigger1 = 1
trigger1 = GetHitVar(yvel) = 0
Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889795 + random%10
ignorehitpause = 1

[State 889802, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = F85,2

[State 889802, ChangeState]
type = ChangeState
trigger1 = time >= 22
trigger1 = numhelper(889790)
value = 889790
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft Hard react Fall
[Statedef 889803]
type    = A
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 889372 ;HitBox
velset = -4,-7.5
juggle = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889803, CaveWarriorHitReactFall]
type = Explod
trigger1 = time = 0
anim = F80062
ID = 889797
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889803, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889803, HitOverride] ;Fall
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889803
ignorehitpause = 1

[State 889803, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
;ignorehitpause =
;persistent =

[State 889803, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=2
trigger1 = numhelper(889790)
value = 889804
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft react Fall Hit
[Statedef 889804]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Hitbox
velset = 0,0
juggle = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889804, CaveWarriorHitReactFall]
type = Explod
trigger1 = time = 0
anim = F80063
ID = 889804
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889804, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =

[State 889804, Slam]
type = PlaySnd
trigger1 = time = 0
value = F75,0

[State 889804, ChangeState]
type = ChangeState
trigger1 = time >=7
trigger1 = numhelper(889790)
value = 889805
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft react bounce
[Statedef 889805]
type    = A
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;HitBox
velset = 0,0
juggle = 1

[State 889805, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889804
ignorehitpause = 1

[State 889805, CaveWarriorHitReactFall]
type = Explod
trigger1 = time = 0
anim = F80062
ID = 889805
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889805, VelSet]
type = VelSet
trigger1 = time = 0
x = -2
y = -4
;ignorehitpause =
;persistent =

[State 889805, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
;ignorehitpause =
;persistent =

[State 889805, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = F85,2

[State 889805, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >= 1
trigger1 = numhelper(889790)
value = 889806 + random%2
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft react liedown
[Statedef 889806]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;HitBox
velset = 0,0
juggle = 1

[State 889806, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889805
ignorehitpause = 1

[State 889806, CaveWarriorLiedown]
type = Explod
trigger1 = time = 0
anim = F80063
ID = 889806
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889806, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =

[State 889806, ChangeState]
type = ChangeState
trigger1 = time > 30
trigger1 = numhelper(889790)
value = 889808
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarriorLeft react Death
[Statedef 889807]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;HitBox
velset = 0,0
juggle = 1

[State 889807, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889805
ignorehitpause = 1

[State 889807, CaveWarriorLiedown]
type = Explod
trigger1 = time = 0
anim = F80065
ID = 889801
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889807, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =

[State 889805, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = F85,0

[State 889807, RemoveExplod]
type = RemoveExplod
trigger1 = time >=129
id = 889801
ignorehitpause = 1

[State 889807, DestroySelf]
type = DestroySelf
trigger1 = time >=130
trigger1 = numhelper(889790)
;ignorehitpause =
;persistent =

;--------------------------------
;CaveWarriorLeft react Getup
[Statedef 889808]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 1

[State 889808, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889806
ignorehitpause = 1

[State 889808, CaveWarriorGetup]
type = Explod
trigger1 = time = 0
anim = F80064
ID = 889801
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889808, ChangeState]
type = ChangeState
trigger1 = time >=16
trigger1 = numhelper(889790)
value = 889790
ctrl = 0
ignorehitpause = 1

;-------------------------------------------------------------
; CaveWarriorLeft Pile Driver throw
[Statedef 889810]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889373

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889810, HitDef]
type = HitDef
trigger1 = p2movetype!=H
Trigger1 = Time = 0
trigger2 = root,movetype!=H
Trigger2 = Time = 0
attr = S, NT
hitflag = M
affectteam = B
priority = 4, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 889815
p2stateno = 889818
hitsound = F83,0
fall = 1

[State 889810, CaveWarriorGrab]
type = Explod
trigger1 = time = 0
anim = F80069
ID = 889801
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889810, ChangeState]
type = ChangeState
Trigger1 = Time >= 10
value = 889790
ctrl = 0

;-------------------------------------------------------------
; CaveWarriorLeft Suplex throw
[Statedef 889811]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889373

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889811, HitDef]
type = HitDef
trigger1 = p2movetype!=H
Trigger1 = Time = 0
trigger2 = root,movetype!=H
Trigger2 = Time = 0
attr = S, NT
hitflag = M
affectteam = B
priority = 4, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 889822
p2stateno = 889823
hitsound = F83,0
fall = 1

[State 889811, CaveWarriorGrab]
type = Explod
trigger1 = time = 0
anim = F80069
ID = 889801
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889811, ChangeState]
type = ChangeState
Trigger1 = Time >= 10
value = 889790
ctrl = 0

;-------------------------------------------------------------
; CaveWarriorLeft Punch
[Statedef 889812]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889377 ;hitbox

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889812, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Medium
damage = 45,1
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89172
sparkxy = -10,-37
hitsound = F69,1
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5

[State 889812, CaveWarriorPunch]
type = Explod
trigger1 = time = 0
anim = F80060
ID = 889801
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 889812, Woosh]
type = PlaySnd
trigger1 = time = 5
value = F81,2

[State 889812, ChangeState]
type = ChangeState
Trigger1 = Time >= 25
value = 889790
ctrl = 0

;-------------------------------------------------------------
; CaveWarriorLeft Double Axe Handle
[Statedef 889813]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889378 ;hitbox

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889813, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Hard
damage = 60,1
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 15,15
sparkno = 89172
sparkxy = -10,-42
hitsound = F81,0
guardsound = F86,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 17
ground.velocity = -6
air.velocity = -2.5,-4.5

[State 889813, CaveWarriorAxeHandle]
type = Explod
trigger1 = time = 0
anim = F80061
ID = 889801
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 889812, Woosh]
type = PlaySnd
trigger1 = time = 15
value = F81,1

[State 889813, ChangeState]
type = ChangeState
Trigger1 = Time >= 36
value = 889790
ctrl = 0

;-------------------------------------------------------------
; CaveWarriorLeft Jumping Double Axe Handle
[Statedef 889814]
type = S
movetype= A
physics = S
juggle = 0
velset = .9,-7
ctrl = 0
anim = 889379 ;hitbox

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889790
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889791
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889792
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889793
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889795
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889798
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889797
ignorehitpause = 1

[State 889814, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Hard
damage = 60,1
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 15,15
sparkno = 89172
sparkxy = -10,-40
hitsound = F81,0
guardsound = F86,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 17
ground.velocity = -4,-3.5
air.velocity = -2.5,-4.5
fall = 1

[State 889814, CaveWarriorGrab]
type = Explod
trigger1 = time = 0
anim = F80067
ID = 889801
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 889814, VelAdd]
type = VelAdd
trigger1 = 1
y = .3
;ignorehitpause =
;persistent =

[State 889814, Grunt]
type = PlaySnd
trigger1 = time = 5
value = F85,2

[State 889814, Woosh]
type = PlaySnd
trigger1 = time = 35
value = F81,1

[State 889814, land]
type = PlaySnd
trigger1 = time = 35
value = F69,0

[State 889814, ChangeState]
type = ChangeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
Trigger1 = Time >= 5
value = 889790
ctrl = 0

;----------------------------------------------------------------------
;CaveWarriorLeft Pile Driver
[Statedef 889815]
type = S
movetype= A
physics = N
anim = 9800  ;Invisible
sprpriority = 1
ctrl = 0

[State 889815, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889815, CaveWarriorPiledriver]
type = Explod
trigger1 = time = 0
anim = F80057
ID = 889811
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889815, Width]
type = Width
trigger1 = 1
edge = 25,25

[State 889815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
;persistent =

[State 889815, TargetState]
type = TargetState
trigger1 = time = 0
value =889818

[State 889815, Bind 1]
type = TargetBind
trigger1 = time >=0 && time <=8 ;AnimElem = 1
pos = 58, 0

[State 889815, Bind 2]
type = TargetBind
trigger1 = time >=9 && time <=15 ;AnimElem = 2
pos = 58, 0

[State 889815, Bind 3]
type = TargetBind
trigger1 = time >=16 && time <=22 ;AnimElem = 3
pos = 56, 2

[State 889815, ChangeState]
type = ChangeState
trigger1 = Time = 22
value = 889816
ctrl = 0

;---------------------------------------------------------------------------
;CaveWarriorLeft Pile Driver air
[Statedef 889816]
type    = A
movetype= H
physics = N
velset = -2.0,-11.5
sprpriority = 1
anim = 9800   ;Invisible

[State 889816, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889811
ignorehitpause = 1

[State 889816, CaveWarriorPiledriver]
type = Explod
trigger1 = time = 0
anim = F80070
ID = 889812
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889816, Width]
type = Width
trigger1 = 1
edge = 25,25

[State 889816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
;persistent =

[State 889816, superjump]
type = PlaySnd
trigger1 = time = 0
value = F84,0

[State 889816, Grunt]
type = PlaySnd
trigger1 = time = 1
value = F85,1

[State 889816, TargetState]
type = TargetState
trigger1 = time = 0
value =889819

[State 889816, Bind 1]
type = TargetBind
trigger1 = 1
pos = 34, 0

[State 889816]
type = VelAdd
Trigger1 = 1
y = .3

[State 889816, Shaker]
type  = envshake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
freq  = 60
time  = 16
ampl  = 4

[State 889816, Explod]
type = Explod
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
anim = 6150
ID = 6150
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 10
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 8
ownpal = 1
removeongethit = 0

[State 889816, Slam]
type = PlaySnd
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
value = F82,0

[State 889816, Dust]
type = Explod
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
anim = F89217
;ID = 889801
pos = 11,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 20
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
persistent = 1

[State 889816]
type = changeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
value = 889817
ctrl = 0

;---------------------------------------------------------------------------
;CaveWarriorLeft Pile Driver recover
[Statedef 889817]
type    = A
movetype= H
physics = N
velset = -2.5,-5.8
sprpriority = 1
anim = 9800  ;Invisible

[State 889817, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889812
ignorehitpause = 1

[State 889817, CaveWarriorPiledriver]
type = Explod
trigger1 = time = 0
anim = F80058
ID = 889806
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889817]
type = VelAdd
Trigger1 = 1
y = .3

[State 889817, LayonGround]
type = PlaySnd
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=2
value = F75,0

[State 889817, PosSet]
type = PosSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0

[State 889817, Dust]
type = Explod
trigger1 = time = 0
anim = F89217
;ID = 889801
pos = -11,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 20
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889817]
type = changeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=2
value = 889808
ctrl = 0

;----------------------------------------------------------------------
; enemy getting Pile Driven by CaveWarrior
[Statedef 889818]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority=-1

[State 889818, ScreenBound]
type = ScreenBound
trigger1 = 1
value =1
movecamera=1,0

[State 889818, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 889374

[State 889818]
type = ChangeState
trigger1 = AnimTime = 0
value = 889819

;---------------------------------------------------------------------------
; Enemy getting Pile Driven air by CaveWarrior
[Statedef 889819]
type    = A
movetype= H
physics = N
velset = 2.0,-11.5
sprpriority = -1

[State 889819]
type = ChangeAnim2
Trigger1 = Time = 0
value = 889375

[State 889819]
type = VelAdd
Trigger1 = 1
y = .5

[State 889819]
type = Changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 889820

;---------------------------------------------------------------------------
; Enemy fall away after Pile Driven by CaveWarrior
[Statedef 889820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -1

[State 889820]
type = ChangeAnim
Trigger1 = Time <= 3
value = 5101

[State 889820, PosSet]
type = PosSet
trigger1 = time <= 3
y = 5

[State 889820, PosFreeze]
type = PosFreeze
trigger1 = time <=3
value = 1

[State 889820]
type = ChangeAnim
Trigger1 = Time >= 3
value = 5160

[State 889820, VelSet]
type = VelSet
trigger1 = time <=14
x = 2.0
y = -5.0

[State 889820]
type = VelAdd
Trigger1 = 1
y = .5

[State 889820, Turn]
type = Turn
trigger1 = time =0

[State 889820, Ground Smash]
type = LifeAdd
trigger1 = time = 0
value = -127

[State 889820]
type = selfState
trigger1 = time > 5
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;----------------------------------------------------------------------
;CaveWarriorLeft Suplex
[Statedef 889822]
type = S
movetype= A
physics = N
anim = 9800  ;Invisible
sprpriority = 1
ctrl = 0

[State 889822, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889801
ignorehitpause = 1

[State 889822, CaveWarriorSuplex]
type = Explod
trigger1 = time = 0
anim = F80059
ID = 889791
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889822, Width]
type = Width
trigger1 = 1
edge = 35,35

[State 889822, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
;persistent =

[State 889822, TargetState]
type = TargetState
trigger1 = time = 0
value =889823

[State 889822, Bind 1]
type = TargetBind
trigger1 = time >=0 && time <=22 ;AnimElem = 1
pos = 58, 0

[State 889822, Bind 2]
type = TargetBind
trigger1 = time >=23 && time <=32 ;AnimElem = 2
pos = 55, 0

[State 889822, Bind 2]
type = TargetBind
trigger1 = time >=33 && time <=46 ;AnimElem = 2
pos = 44, 0

[State 889822, Bind 3]
type = TargetBind
trigger1 = time >=47 && time <=56 ;AnimElem = 3
pos = -15,-65

[State 889822, Bind 4]
type = TargetBind
trigger1 = time >=57 && time <=62 ;AnimElem = 3
pos = -100,0

[State 889822, Grunt]
type = PlaySnd
trigger1 = time = 46
value = F85,3

[State 889822, HitGround]
type = PlaySnd
trigger1 = time = 57
value = F82,0

[State 889822, ChangeState]
type = ChangeState
trigger1 = Time = 117
value = 889790
ctrl = 0

;----------------------------------------------------------------------
; enemy getting Suplexed by CaveWarrior
[Statedef 889823]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority=-1
ctrl = 0

[State 889823, ScreenBound]
type = ScreenBound
trigger1 = 1
value =1
movecamera=1,0

[State 889823, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 889376

[State 889823]
type = ChangeState
trigger1 = AnimTime = 0
value = 889824

;---------------------------------------------------------------------------
; Enemy fall away after Pile Driven by CaveWarrior
[Statedef 889824]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -1
ctrl = 0

;[State 889824]
;type = ChangeAnim
;Trigger1 = Time <= 3
;value = 5101

[State 889824, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

;[State 889824, PosFreeze]
;type = PosFreeze
;trigger1 = time <=3
;value = 1

[State 889824]
type = ChangeAnim
Trigger1 = Time = 0
value = 5160

[State 889824, VelSet]
type = VelSet
trigger1 = time <=1
x = 1.2
y = -5.0

[State 889824]
type = VelAdd
Trigger1 = 1
y = .4

;[State 889824, Turn]
;type = Turn
;trigger1 = time =0

[State 889824, Ground Smash]
type = LifeAdd
trigger1 = time = 0
value = -105

[State 889824]
type = selfState
trigger1 = time > 4
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
ctrl = 1

;--------------------------------------------------
;CaveWarrior SpawnerRight
[Statedef 889829]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 4881 ;Invisible
velset = 0,0
juggle = 0
sprpriority = -2

[State 889789, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889789, CaveWarriorRight]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_CC_Museum_Lvl_2"
trigger1 = (GameTime % 100) = random%27
;trigger1 = time >=1
trigger1 = teamside = 2
trigger1 = Numhelper(889830) = 0 ;Numhelper and ID have to be the same
Pos = 0,0
name = "CaveWarriorLeft"
stateno = 889830
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 889830
;size.xscale = 2
;size.yscale = 2

[State 889789, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889829
ctrl = 0

;--------------------------------
;CaveWarrior Right Stance
[Statedef 889830]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889371 ;HitBox
velset = 0,0
juggle = 1

[State 889830, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 889830, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889830, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889830, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889830, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889830, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889830, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889830, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889830, Stance]
type = Explod
trigger1 = time = 0
anim = F80054
ID = 889830
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889830, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889830, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889835 + random%10
ignorehitpause = 1

[State 889830, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889830, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889830, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889830)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889830)
value = 889835 + random%10
ctrl = 0

[State 889830, ChangeState]
type = ChangeState
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(889830)
trigger2 = rootdist X =[-20,20]
trigger2 = numhelper(889830)
value = 889850 + random%5
ctrl = 0

[State 889830, ChangeState]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(889830)
value = 889831 + random%3
ctrl = 0

;-------------------------------------
;CaveWarrior Right chase opponent
[Statedef 889831]
type = S
movetype = I
physics = N
anim = 889371 ;Hitbox
ctrl = 0

[State 889831, VarSet]
Type = VarSet
Trigger1 = 1
fvar(0) = (EnemyNear(0), Pos X - Pos X) * Facing

[State 889831, turn]
type = turn
trigger1 = P2Dist X < 0
trigger1 = Vel X < 2

[State 889831, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889831, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889831, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889831, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889831, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889831, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889831, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889831, CaveWarriorLeftWalk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(0)
anim = F80055
ID = 889831
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -2
shadow = 190,190,190
ontop = 0
ownpal = 1
removeongethit = 0

[State 889831, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = P2BodyDist X != [-20,20]
x = 1.5

[State 889831, stop]
type = VelSet
trigger1 = P2BodyDist X = [-20,20];<= 170
x = 0

[State 889831, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889831, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889835 + random%3
ignorehitpause = 1

[State 889831, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889831, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889831, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889830)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889830)
value = 889835 + random%10
ctrl = 0

[State 889831, ChangeState]
type = ChangeState
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(889830)
value = 889850 + random%5
ctrl = 0

[State 889831, ChangeState]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(889830)
value = 889830
ctrl = 0

;-------------------------------------
;CaveWarrior Right chase root
[Statedef 889832]
type = S
movetype = I
physics = N
anim = 889371 ;Hitbox
ctrl = 0

[State 889832, VarSet]
Type = VarSet
Trigger1 = 1
fvar(1) = (root, Pos X - Pos X) * Facing

[State 889832, turn]
type = turn
trigger1 = RootDist X < 0
trigger1 = Vel X < 2

[State 889832, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889832, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889832, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889832, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889832, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889832, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889832, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889832, CaveWarriorRightWalk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(1)
anim = F80055
ID = 889832
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ontop = 0
ownpal = 1
removeongethit = 0

[State 889832, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = RootDist X !=[-20,20]
x = 1.5

[State 889832, stop]
type = VelSet
trigger1 = RootDist X =[-20,20];<= 170
x = 0

[State 889832, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889832, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889835 + random%10
ignorehitpause = 1

[State 889832, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889832, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889832, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889830)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889830)
value = 889835 + random%10
ctrl = 0

[State 889832, ChangeState]
type = ChangeState
trigger1 = rootdist X =[-20,20]
;trigger1 = life >= 1
trigger1 = numhelper(889830)
value = 889850 + random%5
ctrl = 0

[State 889832, ChangeState]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(889830)
value = 889830
ctrl = 0

;-------------------------------------
;CaveWarrior Right walking
[Statedef 889833]
type = S
movetype = I
physics = N
anim = 889371 ;Hitbox
ctrl = 0

[State 889833, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889833, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889833, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889833, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889833, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889833, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889833, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889833, CaveWarriorRightWalk]
type = Explod
trigger1 = time = 0
anim = F80055
ID = 889833
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ontop = 0
ownpal = 1
removeongethit = 0

[State 889833, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889833, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889835 + random%10
ignorehitpause = 1

[State 889833, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889833, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889833, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889830)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889830)
value = 889835 + random%10
ctrl = 0

[State 889833, velset]
type = VelSet
trigger1 = Time >= 0
x = -1.2

[State 889833, ChangeState]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(889830)
value = 889830
ctrl = 0

;--------------------------------
;CaveWarrior Right Light react
[Statedef 889835]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 1

[State 889835, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889835, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889835, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889835, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889835, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889835, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889835, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889835, CaveWarriorHitReact]
type = Explod
trigger1 = time = 0
anim = F80066
ID = 889835
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889835, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889835, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889835 + random%10
ignorehitpause = 1

[State 889835, ChangeState]
type = ChangeState
trigger1 = time >= 9
trigger1 = numhelper(889830)
value = 889830
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right Light react
[Statedef 889836]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;889371 ;HitBox
velset = 0,0
juggle = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889796, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889796, CaveWarriorHitReact]
type = Explod
trigger1 = time = 0
anim = F80066
ID = 889835
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889796, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889796, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889835 + random%10
ignorehitpause = 1

[State 889796, ChangeState]
type = ChangeState
trigger1 = time >= 9
trigger1 = numhelper(889830)
value = 889830
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right Light react fall
[Statedef 889837]
type    = A
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 889372 ;HitBox
velset = -3,-5
juggle = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889797, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889797, CaveWarriorHitReactFall]
type = Explod
trigger1 = time = 0
anim = F80062
ID = 889837
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889797, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889797, HitOverride] ;Fall
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889837
ignorehitpause = 1

[State 889797, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
;ignorehitpause =
;persistent =

[State 889797, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=2
trigger1 = numhelper(889830)
value = 889844
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right Medium react
[Statedef 889838]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889371 ;HitBox
velset = 0,0
juggle = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889798, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889798, Explod]
type = Explod
trigger1 = time = 0
anim = F80068
ID = 889838
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889798, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889798, HitOverride] ;light React
type = HitOverride
trigger1 = 1

attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889835 + random%10
ignorehitpause = 1

[State 889798, ChangeState]
type = ChangeState
trigger1 = time >= 20
trigger1 = numhelper(889830)
value = 889830
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right Medium react
[Statedef 889839]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889371 ;HitBox
velset = 0,0
juggle = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889799, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889799, Explod]
type = Explod
trigger1 = time = 0
anim = F80068
ID = 889838
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889799, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889799, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889835 + random%10
ignorehitpause = 1

[State 889799, ChangeState]
type = ChangeState
trigger1 = time >= 20
trigger1 = numhelper(889830)
value = 889830
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right Medium react Fall
[Statedef 889840]
type    = A
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 889372 ;HitBox
velset = -3.5,-6
juggle = 1

[State 889840, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889800, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889800, CaveWarriorHitReactFall]
type = Explod
trigger1 = time = 0
anim = F80062
ID = 889837
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889800, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889800, HitOverride] ;Fall
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889840
ignorehitpause = 1

[State 889800, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
;ignorehitpause =
;persistent =

[State 889800, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=2
trigger1 = numhelper(889830)
value = 889844
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right Hard react
[Statedef 889841]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889371 ;HitBox
velset = 0,0
juggle = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889801, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889801, Explod]
type = Explod
trigger1 = time = 0
anim = F80056
ID = 889841
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889801, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889801, HitOverride] ;light React
type = HitOverride
trigger1 = 1
trigger1 = GetHitVar(yvel) = 0
Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889835 + random%10
ignorehitpause = 1

[State 889801, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = F85,2

[State 889801, ChangeState]
type = ChangeState
trigger1 = time >= 22
trigger1 = numhelper(889830)
value = 889830
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right Hard react
[Statedef 889842]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889371 ;HitBox
velset = 0,0
juggle = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889802, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889802, Explod]
type = Explod
trigger1 = time = 0
anim = F80056
ID = 889841
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889802, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889802, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889835 + random%3
ignorehitpause = 1


[State 889802, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = F85,2

[State 889802, ChangeState]
type = ChangeState
trigger1 = time >= 22
trigger1 = numhelper(889830)
value = 889830
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right Hard react Fall
[Statedef 889843]
type    = A
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 889372 ;HitBox
velset = -4,-7.5
juggle = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889803, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889803, CaveWarriorHitReactFall]
type = Explod
trigger1 = time = 0
anim = F80062
ID = 889837
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889803, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 889803, HitOverride] ;Fall
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889843
ignorehitpause = 1

[State 889803, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
;ignorehitpause =
;persistent =

[State 889803, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=2
trigger1 = numhelper(889830)
value = 889844
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right react Fall Hit
[Statedef 889844]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Hitbox
velset = 0,0
juggle = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889804, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889804, CaveWarriorHitReactFall]
type = Explod
trigger1 = time = 0
anim = F80063
ID = 889844
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889804, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =

[State 889804, Slam]
type = PlaySnd
trigger1 = time = 0
value = F75,0

[State 889804, ChangeState]
type = ChangeState
trigger1 = time >=7
trigger1 = numhelper(889830)
value = 889845
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right react bounce
[Statedef 889845]
type    = A
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;HitBox
velset = 0,0
juggle = 1

[State 889805, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889844
ignorehitpause = 1

[State 889805, CaveWarriorHitReactFall]
type = Explod
trigger1 = time = 0
anim = F80062
ID = 889845
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889805, VelSet]
type = VelSet
trigger1 = time = 0
x = -2
y = -4
;ignorehitpause =
;persistent =

[State 889805, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
;ignorehitpause =
;persistent =

[State 889805, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = F85,2

[State 889805, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >= 1
trigger1 = numhelper(889830)
value = 889846 + random%2
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right react liedown
[Statedef 889846]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;HitBox
velset = 0,0
juggle = 1

[State 889806, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889845
ignorehitpause = 1

[State 889806, CaveWarriorLiedown]
type = Explod
trigger1 = time = 0
anim = F80063
ID = 889846
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889806, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =

[State 889806, ChangeState]
type = ChangeState
trigger1 = time > 30
trigger1 = numhelper(889830)
value = 889848
ctrl = 0
ignorehitpause = 1

;--------------------------------
;CaveWarrior Right react Death
[Statedef 889847]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;HitBox
velset = 0,0
juggle = 1

[State 889807, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889845
ignorehitpause = 1

[State 889807, CaveWarriorLiedown]
type = Explod
trigger1 = time = 0
anim = F80065
ID = 889841
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889807, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =

[State 889805, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = F85,0

[State 889807, RemoveExplod]
type = RemoveExplod
trigger1 = time >=129
id = 889841
ignorehitpause = 1

[State 889807, DestroySelf]
type = DestroySelf
trigger1 = time >=130
trigger1 = numhelper(889830)
;ignorehitpause =
;persistent =

;--------------------------------
;CaveWarrior Right react Getup
[Statedef 889848]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 1

[State 889848, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889846
ignorehitpause = 1

[State 889808, CaveWarriorGetup]
type = Explod
trigger1 = time = 0
anim = F80064
ID = 889841
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889808, ChangeState]
type = ChangeState
trigger1 = time >=16
trigger1 = numhelper(889830)
value = 889830
ctrl = 0
ignorehitpause = 1

;-------------------------------------------------------------
; CaveWarrior Right Pile Driver throw
[Statedef 889850]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889373

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889810, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889810, HitDef]
type = HitDef
trigger1 = p2movetype!=H
Trigger1 = Time = 0
trigger2 = root,movetype!=H
Trigger2 = Time = 0
attr = S, NT
hitflag = M
affectteam = B
priority = 4, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 889855
p2stateno = 889858
hitsound = F83,0
fall = 1

[State 889810, CaveWarriorGrab]
type = Explod
trigger1 = time = 0
anim = F80069
ID = 889841
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889810, ChangeState]
type = ChangeState
Trigger1 = Time >= 10
value = 889830
ctrl = 0

;-------------------------------------------------------------
; CaveWarrior Right Suplex throw
[Statedef 889851]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889373

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889811, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889811, HitDef]
type = HitDef
trigger1 = p2movetype!=H
Trigger1 = Time = 0
trigger2 = root,movetype!=H
Trigger2 = Time = 0
attr = S, NT
hitflag = M
affectteam = B
priority = 4, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 889862
p2stateno = 889863
hitsound = F83,0
fall = 1

[State 889811, CaveWarriorGrab]
type = Explod
trigger1 = time = 0
anim = F80069
ID = 889841
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889811, ChangeState]
type = ChangeState
Trigger1 = Time >= 10
value = 889830
ctrl = 0

;-------------------------------------------------------------
; CaveWarrior Right Punch
[Statedef 889852]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889377 ;hitbox

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889812, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889812, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Medium
damage = 45,1
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89172
sparkxy = -10,-37
hitsound = F69,1
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5

[State 889812, CaveWarriorPunch]
type = Explod
trigger1 = time = 0
anim = F80060
ID = 889841
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 889812, Woosh]
type = PlaySnd
trigger1 = time = 5
value = F81,2

[State 889812, ChangeState]
type = ChangeState
Trigger1 = Time >= 25
value = 889830
ctrl = 0

;-------------------------------------------------------------
; CaveWarrior Right Double Axe Handle
[Statedef 889853]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889378 ;hitbox

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889813, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889813, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Hard
damage = 60,1
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 15,15
sparkno = 89172
sparkxy = -10,-42
hitsound = F81,0
guardsound = F86,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 17
ground.velocity = -6
air.velocity = -2.5,-4.5

[State 889813, CaveWarriorAxeHandle]
type = Explod
trigger1 = time = 0
anim = F80061
ID = 889841
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 889812, Woosh]
type = PlaySnd
trigger1 = time = 15
value = F81,1

[State 889813, ChangeState]
type = ChangeState
Trigger1 = Time >= 36
value = 889830
ctrl = 0

;-------------------------------------------------------------
; CaveWarrior Right Jumping Double Axe Handle
[Statedef 889854]
type = S
movetype= A
physics = S
juggle = 0
velset = .9,-7
ctrl = 0
anim = 889379 ;hitbox

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889830
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889831
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889832
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889833
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889835
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889838
ignorehitpause = 1

[State 889814, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889837
ignorehitpause = 1

[State 889814, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Hard
damage = 60,1
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 15,15
sparkno = 89172
sparkxy = -10,-40
hitsound = F81,0
guardsound = F86,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 17
ground.velocity = -4,-3.5
air.velocity = -2.5,-4.5
fall = 1

[State 889814, CaveWarriorGrab]
type = Explod
trigger1 = time = 0
anim = F80067
ID = 889841
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 889814, VelAdd]
type = VelAdd
trigger1 = 1
y = .3
;ignorehitpause =
;persistent =

[State 889814, Grunt]
type = PlaySnd
trigger1 = time = 5
value = F85,2

[State 889814, Woosh]
type = PlaySnd
trigger1 = time = 35
value = F81,1

[State 889814, land]
type = PlaySnd
trigger1 = time = 35
value = F69,0

[State 889814, ChangeState]
type = ChangeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
Trigger1 = Time >= 5
value = 889830
ctrl = 0

;----------------------------------------------------------------------
;CaveWarrior Right Pile Driver
[Statedef 889855]
type = S
movetype= A
physics = N
anim = 9800  ;Invisible
sprpriority = 1
ctrl = 0

[State 889815, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889815, CaveWarriorPiledriver]
type = Explod
trigger1 = time = 0
anim = F80057
ID = 889851
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889815, Width]
type = Width
trigger1 = 1
edge = 25,25

[State 889815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
;persistent =

[State 889815, TargetState]
type = TargetState
trigger1 = time = 0
value =889818

[State 889815, Bind 1]
type = TargetBind
trigger1 = time >=0 && time <=8 ;AnimElem = 1
pos = 58, 0

[State 889815, Bind 2]
type = TargetBind
trigger1 = time >=9 && time <=15 ;AnimElem = 2
pos = 58, 0

[State 889815, Bind 3]
type = TargetBind
trigger1 = time >=16 && time <=22 ;AnimElem = 3
pos = 56, 2

[State 889815, ChangeState]
type = ChangeState
trigger1 = Time = 22
value = 889856
ctrl = 0

;---------------------------------------------------------------------------
;CaveWarrior Right Pile Driver air
[Statedef 889856]
type    = A
movetype= H
physics = N
velset = -2.0,-11.5
sprpriority = 1
anim = 9800   ;Invisible

[State 889816, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889851
ignorehitpause = 1

[State 889816, CaveWarriorPiledriver]
type = Explod
trigger1 = time = 0
anim = F80070
ID = 889852
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889816, Width]
type = Width
trigger1 = 1
edge = 25,25

[State 889816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
;persistent =

[State 889816, superjump]
type = PlaySnd
trigger1 = time = 0
value = F84,0

[State 889816, Grunt]
type = PlaySnd
trigger1 = time = 1
value = F85,1

[State 889816, TargetState]
type = TargetState
trigger1 = time = 0
value =889819

[State 889816, Bind 1]
type = TargetBind
trigger1 = 1
pos = 34, 0

[State 889816]
type = VelAdd
Trigger1 = 1
y = .3

[State 889816, Shaker]
type  = envshake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
freq  = 60
time  = 16
ampl  = 4

[State 889816, Explod]
type = Explod
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
anim = 6150
ID = 6150
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 10
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 8
ownpal = 1
removeongethit = 0

[State 889816, Slam]
type = PlaySnd
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
value = F82,0

[State 889816, Dust]
type = Explod
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
anim = F89217
;ID = 889801
pos = 11,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 20
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
persistent = 1

[State 889816]
type = changeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
value = 889857
ctrl = 0

;---------------------------------------------------------------------------
;CaveWarrior Right Pile Driver recover
[Statedef 889857]
type    = A
movetype= H
physics = N
velset = -2.5,-5.8
sprpriority = 1
anim = 9800  ;Invisible

[State 889817, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889852
ignorehitpause = 1

[State 889817, CaveWarriorPiledriver]
type = Explod
trigger1 = time = 0
anim = F80058
ID = 889846
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889817]
type = VelAdd
Trigger1 = 1
y = .3

[State 889817, LayonGround]
type = PlaySnd
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=2
value = F75,0

[State 889817, PosSet]
type = PosSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0

[State 889817, Dust]
type = Explod
trigger1 = time = 0
anim = F89217
;ID = 889801
pos = -11,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 20
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889817]
type = changeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=2
value = 889848
ctrl = 0

;----------------------------------------------------------------------
; enemy getting Pile Driven by CaveWarrior
[Statedef 889858]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority=-1

[State 889818, ScreenBound]
type = ScreenBound
trigger1 = 1
value =1
movecamera=1,0

[State 889818, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 889374

[State 889818]
type = ChangeState
trigger1 = AnimTime = 0
value = 889859

;---------------------------------------------------------------------------
; Enemy getting Pile Driven air by CaveWarrior
[Statedef 889859]
type    = A
movetype= H
physics = N
velset = 2.0,-11.5
sprpriority = -1

[State 889819]
type = ChangeAnim2
Trigger1 = Time = 0
value = 889375

[State 889819]
type = VelAdd
Trigger1 = 1
y = .5

[State 889819]
type = Changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 889860

;---------------------------------------------------------------------------
; Enemy fall away after Pile Driven by CaveWarrior
[Statedef 889860]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -1

[State 889820]
type = ChangeAnim
Trigger1 = Time <= 3
value = 5101

[State 889820, PosSet]
type = PosSet
trigger1 = time <= 3
y = 5

[State 889820, PosFreeze]
type = PosFreeze
trigger1 = time <=3
value = 1

[State 889820]
type = ChangeAnim
Trigger1 = Time >= 3
value = 5160

[State 889820, VelSet]
type = VelSet
trigger1 = time <=14
x = 2.0
y = -5.0

[State 889820]
type = VelAdd
Trigger1 = 1
y = .5

[State 889820, Turn]
type = Turn
trigger1 = time =0

[State 889820, Ground Smash]
type = LifeAdd
trigger1 = time = 0
value = -127

[State 889820]
type = selfState
trigger1 = time > 5
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;----------------------------------------------------------------------
;CaveWarrior Right Suplex
[Statedef 889862]
type = S
movetype= A
physics = N
anim = 9800  ;Invisible
sprpriority = 1
ctrl = 0

[State 889822, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889841
ignorehitpause = 1

[State 889822, CaveWarriorSuplex]
type = Explod
trigger1 = time = 0
anim = F80059
ID = 889831
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889822, Width]
type = Width
trigger1 = 1
edge = 35,35

[State 889822, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
;persistent =

[State 889822, TargetState]
type = TargetState
trigger1 = time = 0
value =889823

[State 889822, Bind 1]
type = TargetBind
trigger1 = time >=0 && time <=22 ;AnimElem = 1
pos = 58, 0

[State 889822, Bind 2]
type = TargetBind
trigger1 = time >=23 && time <=32 ;AnimElem = 2
pos = 55, 0

[State 889822, Bind 2]
type = TargetBind
trigger1 = time >=33 && time <=46 ;AnimElem = 2
pos = 44, 0

[State 889822, Bind 3]
type = TargetBind
trigger1 = time >=47 && time <=56 ;AnimElem = 3
pos = -15,-65

[State 889822, Bind 4]
type = TargetBind
trigger1 = time >=57 && time <=62 ;AnimElem = 3
pos = -100,0

[State 889822, Grunt]
type = PlaySnd
trigger1 = time = 46
value = F85,3

[State 889822, HitGround]
type = PlaySnd
trigger1 = time = 57
value = F82,0

[State 889822, ChangeState]
type = ChangeState
trigger1 = Time = 117
value = 889830
ctrl = 0

;----------------------------------------------------------------------
; enemy getting Suplexed by CaveWarrior
[Statedef 889863]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority=-1
ctrl = 0

[State 889823, ScreenBound]
type = ScreenBound
trigger1 = 1
value =1
movecamera=1,0

[State 889823, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 889376

[State 889823]
type = ChangeState
trigger1 = AnimTime = 0
value = 889864

;---------------------------------------------------------------------------
; Enemy fall away after Pile Driven by CaveWarrior
[Statedef 889864]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -1
ctrl = 0

;[State 889824]
;type = ChangeAnim
;Trigger1 = Time <= 3
;value = 5101

[State 889824, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

;[State 889824, PosFreeze]
;type = PosFreeze
;trigger1 = time <=3
;value = 1

[State 889824]
type = ChangeAnim
Trigger1 = Time = 0
value = 5160

[State 889824, VelSet]
type = VelSet
trigger1 = time <=1
x = 1.2
y = -5.0

[State 889824]
type = VelAdd
Trigger1 = 1
y = .4

;[State 889824, Turn]
;type = Turn
;trigger1 = time =0

[State 889824, Ground Smash]
type = LifeAdd
trigger1 = time = 0
value = -105

[State 889824]
type = selfState
trigger1 = time > 4
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
ctrl = 1

;----------------------------------
; CC Museum Glass
[Statedef 889870]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
sprpriority = -2

[State 889870, Glass]
type = Explod
trigger1 = time = 0
anim = F80076
ID = 889870
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = -21
ontop = 0
ownpal = 1
removeongethit = 0

[State 889870, Glass]
type = Explod
trigger1 = time = 0
anim = F80075
ID = 889870
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889870, Width]
type = Width
trigger1 = 1
edge = 0,0
player = 1,0

[State 889870, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889870, ChangeState]
type = ChangeState
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-500,200]
trigger1 = P2BodyDist Y >= -203
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-500,200]
trigger2 = RootDist Y >= -203
value = 889871 + (random % 5)
ctrl = 0

;----------------------------------
; CC Museum Glass Cont...
[Statedef 889871]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889871, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889871, ChangeState]
type = ChangeState
trigger1 = time >=50
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-500,200]
trigger1 = P2BodyDist Y >= -203
trigger2 = time >=50
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-500,200]
trigger2 = RootDist Y >= -203
value = 889272
ctrl = 0


;----------------------------------
; CC Museum Glass Cont...
[Statedef 889872]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889872, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889872, ChangeState]
type = ChangeState
trigger1 = time >=50
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-500,200]
trigger1 = P2BodyDist Y >= -203
trigger2 = time >=50
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-500,200]
trigger2 = RootDist Y >= -203
value = 889873
ctrl = 0

;----------------------------------
; CC Museum Glass Cont...
[Statedef 889873]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889873, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889873, ChangeState]
type = ChangeState
trigger1 = time >=50
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-500,200]
trigger1 = P2BodyDist Y >= -203
trigger2 = time >=50
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-500,200]
trigger2 = RootDist Y >= -203
value = 889874
ctrl = 0

;----------------------------------
; CC Museum Glass Cont...
[Statedef 889874]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 889874, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889874, ChangeState]
type = ChangeState
trigger1 = time >=50
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-500,200]
trigger1 = P2BodyDist Y >= -203
trigger2 = time >=50
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-500,200]
trigger2 = RootDist Y >= -203
value = 889875
ctrl = 0

;------------------------------
; CC Museum Glass end
[Statedef 889875]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15
sprpriority = -2

[State 889875] ;Pause when hitting the Glass
type = pause
trigger1 = time = 0
time=15

[State 889875, RemoveExplod] ;Remove Glass
type = RemoveExplod
trigger1 = time >= 0
id = 889870

[State 889875, Glass broke]
type = Explod
trigger1 = time = 0
anim = F80079
;ID = 889875
pos = -70,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 33
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = -19
ontop = 0
ownpal = 1
removeongethit = 0

[State 889875, Glass broke2]
type = Explod
trigger1 = time = 0
anim = F80079
;ID = 889875
pos = -430,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 33
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = -19
ontop = 0
ownpal = 1
removeongethit = 0

[State 889875, Glass broke3]
type = Explod
trigger1 = time = 0
anim = F80079
;ID = 889875
pos = -800,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 33
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = -19
ontop = 0
ownpal = 1
removeongethit = 0

[State 889875, Glass broke4]
type = Explod
trigger1 = time = 0
anim = F80079
;ID = 889875
pos = -1000,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 33
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = -19
ontop = 0
ownpal = 1
removeongethit = 0

[State 889870, Glass]
type = Explod
trigger1 = time = 0
anim = F80078
;ID = 889875
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = -21
ontop = 0
ownpal = 1
removeongethit = 0

[State 889870, Glass]
type = Explod
trigger1 = time = 0
anim = F80077
;ID = 889875
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889875, Glassbreak]
type = PlaySnd
trigger1 = time = 0
value = F41,3

[State 889875, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889875, ChangeState]  ;neverending
type = ChangeState
trigger1 = movecontact
value = 889870
ctrl = 0

;----------------------------------
; Barrel O goodies for "CC Museum" stage + Health
[Statedef 889880]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = -19

[State 889880, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889880, Barrel]
type = Explod
trigger1 = time = 0
anim = F80071
ID = 889880
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -19
ownpal = 1
removeongethit = 0

[State 889880, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889880, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889881

[State 889880, Explod]
type = Explod
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=35
trigger1 = Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=35
trigger2 = Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889880, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=35
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=35
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889880, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=35
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=35
trigger2 = root,Facing = -1 ;facing Left
value = 889881
ctrl = 0

;----------------------------------
; Barrel O goodies for "CC Museum" stage + Health Cont...
[Statedef 889881]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = 20

[State 889881, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889881, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889881, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889882

[State 889881, Explod]
type = Explod
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=35
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=35
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889881, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=35
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=35
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889881, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=35
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=35
trigger2 = root,Facing = -1 ;facing Left
value = 889882
ctrl = 0

;----------------------------------
; Barrel O goodies for "CC Museum" stage + Health Cont...
[Statedef 889882]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = 20

[State 889882, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889882, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889882, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889883

[State 889882, Explod]
type = Explod
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=35
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=35
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889882, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=35
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=35
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889882, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=35
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=35
trigger2 = root,Facing = -1 ;facing Left
value = 889883
ctrl = 0

;------------------------------
; broken barrel + health Broken "CC Museum"
[Statedef 889883]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15
sprpriority = 20

[State 889883, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889883, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889880

[State 889883, Barrel]
type = PlaySnd
trigger1 = time = 0
value = F46,0

[State 889883, barrel bottom]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889883
helpertype = Normal
ID = 889886
name = "CCMuseumBarrelBottom"
postype = p1
pos = 0,-10
stateno = 889886
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889883, Barrel Top]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889883
helpertype = Normal
ID = 889884
name = "CCMuseumBarrelTop"
postype = p1
pos = 0,-40
stateno = 889884
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889883, goodie]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889883
helpertype = Normal
ID = 889888
name = "CCMuseumGoodieHealth"
postype = P1
pos = 0,0
stateno = 889888
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889883, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889880
ctrl = 0

;-------------------------------------------------------------
;Barrel Top CC Museum
[Statedef 889884]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889884, CCBarrelTop]
type = Explod
trigger1 = time = 0
anim = F80072
ID = 889884
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -18
ontop = 0
ownpal = 1
removeongethit = 0

[State 889884]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-8

[State 889884]
type = VarRandom
trigger1 = 1
v = 1
range = -4,4

[State 889884]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889884]
type = veladd
trigger1 = time >= 1
y = .3

[State 889884]
type = ChangeState
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
value = 889885

;-------------------------------
;CC Barrel Top ground
[Statedef 889885]
type    = S
movetype= I
physics = N
velset = 0,0

[State 889885, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = 9800 ;Invisible

[State 889885, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889884

[State 889885, CCBarrelTop]
type = explod
anim = F80072
trigger1 = time = 0
pos = -4,4
vel = 0, 0
sprpriority = -18
removetime = 331
ownpal = 1

[State 889885, hitground]
type = PlaySnd
trigger1 = time = 0
value = F42,0

[State 889885, DestroySelf]
type = DestroySelf
trigger1 = time >= 335

;-------------------------------------------------------------
;CC Museum Barrel Bottom
[Statedef 889886]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889886, CCMuseumBarrelBottom]
type = Explod
trigger1 = time = 0
anim = F80073
ID = 889886
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -18
ontop = 0
ownpal = 1
removeongethit = 0

[State 889886]
type = VarRandom
trigger1 = 1
v = 0
range = -3,-5

[State 889886]
type = VarRandom
trigger1 = 1
v = 1
range = -3,3

[State 889886]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889886]
type = veladd
trigger1 = time >= 1
y = .3

[State 889886]
type = ChangeState
trigger1 = Pos Y >= -19
trigger1 = Vel Y > 0
value = 889887

;-------------------------------
;CC Museum barrel bottom ground
[Statedef 889887]
type    = S
movetype= I
physics = N
velset = 0,0

[State 889887, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889886

[State 889887, ChangeAnim2]
type = ChangeAnim
Trigger1 = Time = 0
value = 9800 ;Invisible

[State 889887, barrel bottom]
type = explod
anim = F80073
trigger1 = time = 0
pos = -4,4
vel = 0, 0
sprpriority = -18
removetime = 331
ownpal = 1

[State 889887, hitground]
type = PlaySnd
trigger1 = time = 0
value = F42,0

[State 889887, DestroySelf]
type = DestroySelf
trigger1 = time >= 335

;------------------------------
;CC Museum Goodie Health
[Statedef 889888]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15

[State 889888, Goodie]
type = Explod
trigger1 = time = 0
anim = F80074
ID = 889888
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -18
ontop = 0
ownpal = 1
removeongethit = 0

[State 889888, AssertSpecial]
type = Assertspecial
trigger1 = 1
flag = noshadow

[State 889888, Changestate]
type = ChangeState
trigger1 = p2statetype != A
trigger1 = p2statetype = C
trigger1 = time >= 20
trigger1 = P2BodyDist X = [-40,20] ;is Between these two numbers
trigger2 = root,statetype != A
trigger2 = root,statetype = C
trigger2 = time >= 20
trigger2 = rootdist X = [-40,20] ;is Between these two numbers
value = 889890
ctrl = 0

[State 889888, RemoveExplod] ;remove goodie
type = RemoveExplod
trigger1 = time >= 700
id = 889888

[State 889888, DestroySelf]; hit nothing so destroy self
type = DestroySelf
trigger1 = time >= 700

;------------------------------
;CC Museum goodie health from barrel cont...
[Statedef 889889]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15

[State 889889, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow

[State 889889, Changestate]
type = ChangeState
trigger1 = p2statetype != A
trigger1 = p2statetype = C
trigger1 = time >= 20
trigger1 = P2BodyDist X = [-40,20] ;is Between these two numbers
trigger2 = root,statetype != A
trigger2 = root,statetype = C
trigger2 = time >= 20
trigger2 = rootdist X = [-40,20] ;is Between these two numbers
value = 889890
ctrl = 0

[State 889889, RemoveExplod] ;remove goodie
type = RemoveExplod
trigger1 = time >= 300
id = 889888

[State 889889, DestroySelf]; hit nothing so destroy self
type = DestroySelf
trigger1 = time >= 300

;----------------------------------
;CC Museum Barrel FF goodies Health Hitbox
[Statedef 889890]
type    = S
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 888888 ;hitbox
velset = 0,0
juggle = 25

[State 889890, AssertSpecial]
type = Assertspecial
trigger1 = 1
flag = noshadow

[State 889890, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 0,0
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MA
guardflag = ;unblockable
pausetime = 5,5
sparkno = -1
sparkxy = 0,0
hitsound   = S1,80
guardsound = S2, 6
guard.sparkno = S711
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,0
air.fall = 0
p2stateno = 889136
fall.recovertime = 0
palfx.time = 50
palfx.add = 0,100,50
palfx.mul = 20,120,24
palfx.sinadd = 85,110,55,10
ID = 889134
nochainID = 889134
Attack.Dist = 0

[State 889890, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
id = 889888

[State 889890, DestroySelf] ;Send to Graveyard!!!!
type = DestroySelf
trigger1 = movecontact

[State 889890, ChangeState]
type = ChangeState
trigger1 = time = 2
value = 889889
ctrl = 0

;-------------------------------------------
;WWE Refree Start
[Statedef 889895]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0

[State 889895, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = -5
;ignorehitpause =
;persistent =

[State 889895, Stand]
type = Explod
trigger1 = time = 0
anim = F80081
ID = 889895
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 889895, ChangeState]
type = ChangeState
trigger1 = time >= 0
trigger1 = root,life < P2life
trigger1 = RoundState = 2
value = 889897
ctrl = 0

[State 889895, ChangeState]
type = ChangeState
trigger1 = time >= 0
trigger1 = root,life > P2life
trigger1 = RoundState = 2
value = 889898
ctrl = 0

;-------------------------------------------
;WWE Refree Stand
[Statedef 889896]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0

[State 889896, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889895
ignorehitpause = 1
;persistent =

[State 889896, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889897
ignorehitpause = 1
;persistent =

[State 889895, Stand]
type = Explod
trigger1 = time = 0
anim = F80081
ID = 889896
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 889896, ChangeState]
type = ChangeState
trigger1 = time >= 0
trigger1 = root,life < P2life
trigger1 = RootDist X < -20
trigger2 = time >= 0
trigger2 = root,life < P2life
trigger2 = RootDist X > -15
value = 889897
ctrl = 0

[State 889896, ChangeState]
type = ChangeState
trigger1 = time >= 0
trigger1 = root,life > P2life
trigger1 = P2Dist X < -20
trigger2 = time >= 0
trigger2 = root,life > P2life
trigger2 = P2Dist X > -15
value = 889898
ctrl = 0

;-------------------------------------------
;WWE Refree Walk to P1
[Statedef 889897]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0

[State 889897, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889895
ignorehitpause = 1
;persistent =

[State 889897, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889896
ignorehitpause = 1
;persistent =

[State 889897, WalkForward]
type = Explod
trigger1 = time = 0
trigger1 = RootDist X > -20
anim = F80080
ID = 889897
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 889897, WalkBackward]
type = Explod
trigger1 = time = 0
trigger1 = RootDist X < -15
anim = F80082
ID = 889897
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 889897, VelAdd]
type = VelAdd
trigger1 = time >=0
trigger1 = RootDist X < -20
x = -1.1
;ignorehitpause = 1
;persistent =

[State 889897, VelAdd]
type = VelAdd
trigger1 = time >=0
trigger1 = RootDist X > -20
x = 1.1
;ignorehitpause = 1
;persistent =

[State 889897, ChangeState]
type = ChangeState
trigger1 = time >= 0
trigger1 = RootDist X = [-20,-15]
trigger1 = root,life > 0
value = 889896
ctrl = 0

[State 889897, ChangeState]
type = ChangeState
trigger1 = time >= 0
trigger1 = root,stateno = 5150
trigger1 = root,life = 0
value = 889899
ctrl = 0

;-------------------------------------------
;WWE Refree Walk to P2
[Statedef 889898]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0

[State 889898, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889895
ignorehitpause = 1
;persistent =

[State 889898, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889896
ignorehitpause = 1
;persistent =

[State 889898, WalkForward]
type = Explod
trigger1 = time = 0
trigger1 = P2Dist X > -20
anim = F80080
ID = 889897
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 889898, WalkBackward]
type = Explod
trigger1 = time = 0
trigger1 = P2Dist X < -15
anim = F80082
ID = 889897
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 889898, VelAdd]
type = VelAdd
trigger1 = time >=0
trigger1 = P2Dist X < -20
x = -1.1
;ignorehitpause = 1
;persistent =

[State 889898, VelAdd]
type = VelAdd
trigger1 = time >=0
trigger1 = P2Dist X > -20
x = 1.1
;ignorehitpause = 1
;persistent =

[State 889898, ChangeState]
type = ChangeState
trigger1 = time >= 0
trigger1 = P2Dist X = [-20,-15]
trigger1 = P2Life > 0
value = 889896
ctrl = 0

[State 889898, ChangeState]
type = ChangeState
trigger1 = time >= 0
trigger1 = P2Stateno = 5150
trigger1 = P2Life = 0
value = 889899
ctrl = 0

;-----------------------------------------
;WWE Refree Countdown
[Statedef 889899]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0

[State 889898, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889895
ignorehitpause = 1
;persistent =

[State 889898, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889896
ignorehitpause = 1
;persistent =

[State 889898, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889897
ignorehitpause = 1
;persistent =

[State 889899, GiveUp]
type = Explod
triggerAll = !matchover
trigger1 = time = 0
trigger1 = P2Dist X < -20
trigger1 = P2Stateno = 5150
trigger2 = time = 0
trigger2 = RootDist X < -20
trigger2 = root,Stateno = 5150
anim = F80084
ID = 889899
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 889899, GiveUp]
type = Explod
triggerAll = !matchover
trigger1 = time = 0
trigger1 = P2Dist X > -20
trigger1 = P2Stateno = 5150
trigger2 = time = 0
trigger2 = RootDist X > -20
trigger2 = root,Stateno = 5150
anim = F80084
ID = 889899
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 889899, GiveUpStraight]
type = Explod
triggerAll = !matchover
trigger1 = time = 0
trigger1 = P2Dist X = [-20,-15]
trigger1 = P2Stateno = 5150
trigger2 = time = 0
trigger2 = RootDist X = [-20,-15]
trigger2 = root,Stateno = 5150
anim = F80085
ID = 889899
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 889899, Count]
type = Explod
triggerAll = matchover
trigger1 = time = 0
trigger1 = P2Dist X < -20
trigger1 = P2Stateno = 5150
trigger2 = time = 0
trigger2 = RootDist X < -20
trigger2 = root,Stateno = 5150
anim = F80083
ID = 889899
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 889899, Count]
type = Explod
triggerAll = matchover
trigger1 = time = 0
trigger1 = P2Dist X > -20
trigger1 = P2Stateno = 5150
trigger2 = time = 0
trigger2 = RootDist X > -20
trigger2 = root,Stateno = 5150
anim = F80083
ID = 889899
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 889899, Count]
type = Explod
triggerAll = matchover
trigger1 = time = 0
trigger1 = P2Dist X = [-20,-15]
trigger1 = P2Stateno = 5150
trigger2 = time = 0
trigger2 = RootDist X = [-20,-15]
trigger2 = root,Stateno = 5150
anim = F80083
ID = 889899
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 889899, GiveUp]
type = PlaySnd
trigger1 = time = 54
trigger1 = !matchover
value = F87,9

[State 889899, Count1]
type = PlaySnd
trigger1 = time = 54
trigger1 = matchover
value = F87,0

[State 889899, Count2]
type = PlaySnd
trigger1 = time = 81
trigger1 = matchover
value = F87,1

[State 889899, Count3]
type = PlaySnd
trigger1 = time = 108
trigger1 = matchover
value = F87,2

[State 889899, Bell]
type = PlaySnd
trigger1 = time = 138
trigger1 = matchover
value = F87,3

[State 889898, ChangeState]
type = ChangeState
trigger1 = time >= 2000
value = 889895
ctrl = 0

;--------------------------------------
;Marker Window on Belger Mansion P1
[Statedef 889900]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0

[State 889900, GlassBreak]
type = Explod
triggerall = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
triggerall = NumExplod(80086) = 0
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-5,5]
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-5,5]
anim = F80086
;ID = 889900
pos = -25,-12
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -50
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
persistent = 0

[State 889900, GlassBreak]
type = PlaySnd
;triggerall = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
;trigger1 = p2movetype = H
;trigger1 = p2statetype = A
;trigger1 = P2BodyDist X = [-5,5]
;trigger2 = root,movetype = H
;trigger2 = root,statetype = A
;trigger2 = RootDist X = [-5,5]
trigger1 = numhelper(889925) = 1
value = F41,3
channel = 5
persistent = 0

[State 889904, GlassShard]
type = Helper
triggerall = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
triggerall = NumExplod(80086) = 0
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-5,5]
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-5,5]
helpertype = normal ;player
name = "BGlassShard"
ID = 889925
stateno = 889925
pos = 0,-75
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, GlassShard2]
type = Helper
triggerall = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
triggerall = NumExplod(80086) = 0
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-5,5]
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-5,5]
helpertype = normal ;player
name = "BGlassShard2"
ID = 889926
stateno = 889926
pos = 0,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, GlassShard3]
type = Helper
triggerall = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
triggerall = NumExplod(80086) = 0
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-5,5]
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-5,5]
helpertype = normal ;player
name = "BGlassShard3"
ID = 889927
stateno = 889927
pos = 0,-65
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, GlassShard4]
type = Helper
triggerall = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
triggerall = NumExplod(80086) = 0
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-5,5]
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-5,5]
helpertype = normal ;player
name = "BGlassShard4"
ID = 889928
stateno = 889928
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, GlassShard5]
type = Helper
triggerall = stagevar(info.name) = "Ultimate_FF_Uptown_Belger_Mansion"
triggerall = NumExplod(80086) = 0
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-5,5]
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-5,5]
helpertype = normal ;player
name = "BGlassShard5"
ID = 889929
stateno = 889929
pos = 0,-55
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889900, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 889900
ctrl = 0

;--------------------------------------
;Marker Window on Belger Mansion P2
[Statedef 889901]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0

[State 889901, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 889901
ctrl = 0

;------------------------------
;end round faster "Belger Mansion stage finisher"
[Statedef 889902]
type    = S
movetype= H
physics = N
anim = 9800 ;invisible
velset = 0,0
sprpriority = 2

[State 889902, Opponent]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(889903) = 0
stateno = 889903
id = 889903
ownpal = 0
pos = 0,0
postype = p1
supermovetime = 99999
pausemovetime = 99999
persistent = 0

[State 889902, VelAdd]
type = VelAdd
trigger1 = 1
x = 0
y = 0.3

[State 889902, PosAdd]
type = PosAdd
trigger1 = time = 369
x = 0
y = 300

[State 889902, playwinposefaster]
type = SelfState
trigger1 = Time >= 1000
trigger1 = !Ishelper
value = 5150
ctrl = 1

;----------------------------------------------
;Hit react Belger Mansion go toward glass
[Statedef 889903]
type    = A
movetype= H
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 5030
sprpriority = 6

[State 889903, Turn]
type = Turn
trigger1 = facing = 1
trigger1 = time = 0
ignorehitpause = 1
persistent = 0

[State 889903, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 1

[State 889903, VelSet]
type = VelSet
trigger1 = time >=0 ;1
;trigger1 = facing = 1
;trigger1 = teamside = 1
x = -10
ignorehitpause = 1

[State 889903, VelSet]
type = VelSet
trigger1 = time = 0
y = -7
ignorehitpause = 1

[State 889903, VelAdd]
type = VelAdd
trigger1 = 1
y = .34
ignorehitpause = 1

[State 889903, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889904
ctrl = 0

;----------------------------------------------
;Hit react Falling from building
[Statedef 889904]
type    = A
movetype= I
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 9800 ;Invisible ;5051
sprpriority = 6

[State 889904, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = noautoturn
ignorehitpause = 1
;persistent =

[State 889904, NoFGNoBarDisplay]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "StuffNeeded"
ID = 889920
stateno = 889920
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1
size.yscale = 1
;ignorehitpause =
;persistent =

[State 889904, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889925
;ignorehitpause =
;persistent =

[State 889904, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 0

[State 889904, blackness Background]
type = explod
anim = F80097
trigger1 = time = 0
;ID = 889775
pos = 160,120
postype = left
vel = 0, 0
sprpriority = 52
removetime = 45

[State 889904, Falling]
type = Explod
trigger1 = time = 0
anim = 5051
ID = 889907
pos = 160,65
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = 1
removetime = 240
scale = 1,1
sprpriority = 50
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889904
pos = 180,65
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = 1
vel = 0,-.4
removetime = 460
scale = 1,1
sprpriority = 49
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, Glass2]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889904
pos = 190,30
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = 1
vel = 0,-.42
removetime = 460
scale = .8,.8
sprpriority = 49
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, Glass3]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889904
pos = 150,60
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = 1
vel = 0,-.6
removetime = 460
scale = .5,.5
sprpriority = 51
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, Glass5]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889904
pos = 120,75
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = 1
vel = 0,-.5
removetime = 460
scale = .8,.8
sprpriority = 51
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, Glass6]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889904
pos = 160,90
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-.8
removetime = 460
scale = .3,.3
sprpriority = 51
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, Front Panel Building]
type = Explod
trigger1 = time = 0
anim = F80095
ID = 889905
pos = 160,1360
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-4.6
removetime = -1
scale = 1,1
sprpriority = 16
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, FF Building]
type = Explod
trigger1 = time = 0
anim = F80096
ID = 889906
pos = 160,1080
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-3.7
removetime = -1
scale = 1,1
sprpriority = 15
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, Front Panel Building]
type = ModifyExplod
trigger1 = time = 241
anim = F80095
ID = 889905
pos = 160,250
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = -1
scale = 1,1
sprpriority = 16
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, FF Building]
type = ModifyExplod
trigger1 = time = 241
anim = F80096
ID = 889906
pos = 160,255
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = -1
scale = 1,1
sprpriority = 15
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, Falling]
type = Explod
trigger1 = time = 240
anim = 5051
ID = 889907
pos = 160,65
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = 1
vel = 0,4
removetime = 14
scale = 1,1
sprpriority = 50
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, ExplodeBlood]
type = Explod
trigger1 = time = 254
anim = F89207 ;F6018
;ID = 889907
pos = 160,210
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = 26
sprpriority = 50
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, Body]
type = Explod
trigger1 = time = 254
anim = 88266
;ID = 889907
pos = 160,220
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = -1
sprpriority = 44
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, ExplodePavement]
type = PlaySnd
trigger1 = time = 254
value = F88,0

[State 889904, ExplodePavement]
type = PlaySnd
trigger1 = time = 254
value = S206,0

[State 889904, BloodPavement]
type = Explod
trigger1 = time = 254
anim = F80098
;ID = 889907
pos = 160,211
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = -1
sprpriority = 30
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889904, Bone 1]
type = Helper
trigger1 = time = 254
helpertype = normal ;player
name = "Bone"
ID = 889910
stateno = 889910
pos = 0,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, Bone 2]
type = Helper
trigger1 = time = 254
helpertype = normal ;player
name = "Bone2"
ID = 889912
stateno = 889912
pos = 0,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, Blood]
type = Helper
trigger1 = time = 254
helpertype = normal ;player
name = "BelBlood"
ID = 889914
stateno = 889914
pos = 0,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, Blood2]
type = Helper
trigger1 = time = 255
helpertype = normal ;player
name = "BElBlood2"
ID = 889916
stateno = 889916
pos = 0,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, Blood3]
type = Helper
trigger1 = time = 256
helpertype = normal ;player
name = "BElBlood3"
ID = 889917
stateno = 889917
pos = 0,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

;[State 889904, Skull]
;type = Helper
;trigger1 = time = 255
;helpertype = normal ;player
;name = "BElSkull"
;ID = 889922
;stateno = 889922
;pos = 0,-1
;postype = p1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 0
;ownpal = 0
;supermovetime = 9999
;pausemovetime = 9999

[State 889904, Glass]
type = Helper
trigger1 = time = 254
helpertype = normal ;player
name = "Glasser1"
ID = 889905
stateno = 889905
pos = 186,-350
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, Glass2]
type = Helper
trigger1 = time = 254
helpertype = normal ;player
name = "Glasser2"
ID = 889906
stateno = 889906
pos = 145,-340
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, Glass3]
type = Helper
trigger1 = time = 254
helpertype = normal ;player
name = "Glasser3"
ID = 889907
stateno = 889907
pos = 179,-430
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, Glass4]
type = Helper
trigger1 = time = 254
helpertype = normal ;player
name = "Glasser4"
ID = 889908
stateno = 889908
pos = 138,-390
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999

[State 889904, Wind]
type = PlaySnd
trigger1 = time = 15
value = F52,0

[State 889904, Yell]
type = PlaySnd
trigger1 = time = 28
value = S11,0  ;F88,1

[State 889904, PosSet]
type = PosSet
trigger1 = time = 450
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 889904, SelfState]
type = SelfState
trigger1 = time >= 451
value = 5150
ctrl = 1
;ignorehitpause = 0
;persistent = 1

;-------------------------------------------------------------
;Glass Shards
[Statedef 889905]
type    = A
movetype= I
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,7
anim = 9800 ;Invisible
sprpriority = 6

[State 889905, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889905
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
removetime = -1
sprpriority = 45
shadow = 0,0,0
scale = 1,1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889905]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889909

;-------------------------------------------------------------
;Glass Shards 2
[Statedef 889906]
type    = A
movetype= I
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,7
anim = 9800 ;Invisible
sprpriority = 6

[State 889906, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889906
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
removetime = -1
sprpriority = 45
shadow = 0,0,0
scale = .8,.8
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889905]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > -2
value = 889909

;-------------------------------------------------------------
;Glass Shards 3
[Statedef 889907]
type    = A
movetype= I
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,7
anim = 9800 ;Invisible
sprpriority = 6

[State 889907, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889907
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
removetime = -1
sprpriority = 45
shadow = 0,0,0
scale = .8,.8
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889907]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > -3
value = 889909

;-------------------------------------------------------------
;Glass Shards 4
[Statedef 889908]
type    = A
movetype= I
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,7
anim = 9800 ;Invisible
sprpriority = 6

[State 889908, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889908
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
removetime = -1
sprpriority = 45
shadow = 0,0,0
scale = .8,.8
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889908]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > -4
value = 889909

;-------------------------------------------------------------
;Glass Break
[Statedef 889909]
type    = A
movetype= I
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,7
anim = 9800 ;Invisible
sprpriority = 6

[State 889909, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889905

[State 889909, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889906

[State 889909, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889907

[State 889909, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889908

[State 889909, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
;ID = 889907
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -2,-2
removetime = 28
sprpriority = 45
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
scale = .2,.2

[State 889909, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
;ID = 889907
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -.5,-3
removetime = 27
sprpriority = 45
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
scale = .2,.2

[State 889909, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
;ID = 889907
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = .5,-3.1
removetime = 26
sprpriority = 45
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
scale = .15,.15

[State 889909, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
;ID = 889907
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2.1,-2.1
removetime = 29
sprpriority = 45
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
scale = .21,.21

[State 889909, GlassBreak]
type = PlaySnd
trigger1 = time = 0
value = F90,random%3

[State 889909, DestroySelf]
type = DestroySelf
trigger1 = time >=5

;-------------------------------------------------------------
;Bone 1
[Statedef 889910]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889910, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889910, Explod]
type = Explod
trigger1 = time = 0
anim = F80087
ID = 889910
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 51
ontop = 0
ownpal = 1
removeongethit = 0

[State 889910]
type = VarRandom
trigger1 = 1
v = 0
range = -4,-12

[State 889910]
type = VarRandom
trigger1 = 1
v = 1
range = -4,4

[State 889185]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889910]
type = veladd
trigger1 = time >= 1
y = .3

[State 889910]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger1 = time >=5
value = 889911

;-------------------------------------------------------------
;Bone on Ground
[Statedef 889911]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889911, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 889910
;ignorehitpause =
;persistent =

[State 889911, Explod]
type = Explod
trigger1 = time = 0
anim = F80091
;ID = 889910
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 51
ontop = 0
ownpal = 1
removeongethit = 0

[State 889911, Bone]
type = PlaySnd
trigger1 = time = 0
value = F88,3

[State 889911, DestroySelf]
type = DestroySelf
trigger1 = time >=2000
;ignorehitpause =
;persistent =

;-------------------------------------------------------------
;Bone 1
[Statedef 889912]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889912, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889912, Explod]
type = Explod
trigger1 = time = 0
anim = F80087
ID = 889912
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 52
ontop = 0
ownpal = 1
removeongethit = 0

[State 889912]
type = VarRandom
trigger1 = 1
v = 10
range = -4,-12

[State 889185]
type = VarRandom
trigger1 = 1
v = 11
range = -4,4

[State 889912]
type = velset
trigger1 = time = 1
y = var(10)
x = var(11)

[State 889912]
type = veladd
trigger1 = time >= 1
y = .3

[State 889912]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger1 = time >=5
value = 889913

;-------------------------------------------------------------
;Bone on Ground
[Statedef 889913]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889913, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 889912
;ignorehitpause =
;persistent =

[State 889913, Explod]
type = Explod
trigger1 = time = 0
anim = F80091
;ID = 889910
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 52
ontop = 0
ownpal = 1
removeongethit = 0

[State 889913, Bone]
type = PlaySnd
trigger1 = time = 0
value = F88,4

[State 889913, DestroySelf]
type = DestroySelf
trigger1 = time >=2000
;ignorehitpause =
;persistent =

;-------------------------------------------------------------
;Belger Blood drop (stay)
[Statedef 889914]
type    = A
movetype= I
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889914, Explod]
type = Explod
trigger1 = time = 0
anim = F88951
ID = 88933
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0

[State 889914, varrandom]
type = VarRandom
trigger1 = 1
v = 18
range = -4,-10

[State 889914, varrandom]
type = VarRandom
trigger1 = 1
v = 19
range = -4,4

[State 889914, velset]
type = velset
trigger1 = time = 1
y = var(18)
x = var(19)

[State 889914, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 889914, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger1 = time >=5
id = 88933

[State 889914, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger1 = time >=5
value = 889915

;-------------------------------
;blood on ground
[Statedef 889915]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 9800 ;invisible

[State 889915, ground blood]
type = explod
anim = F88970
trigger1 = time = 0
pos = 0,0
postype = p1
vel = 0, 0
sprpriority = 36
removetime = -1
ownpal = 1

[State 889915, PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
value = F68,random%3

[State 889915, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------------------------
;Belger Blood drop (stay)
[Statedef 889916]
type    = A
movetype= I
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889916, Explod]
type = Explod
trigger1 = time = 0
anim = F88951
ID = 88934
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0

[State 889916, varrandom]
type = VarRandom
trigger1 = 1
v = 30
range = -2,-10

[State 889916, varrandom]
type = VarRandom
trigger1 = 1
v = 31
range = -5,5

[State 889916, velset]
type = velset
trigger1 = time = 1
y = var(30)
x = var(31)

[State 889916, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 889917, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger1 = time >=5
id = 88934

[State 889916, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger1 = time >=5
value = 889915

;-------------------------------------------------------------
;Belger Blood drop (stay)
[Statedef 889917]
type    = A
movetype= I
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889917, Explod]
type = Explod
trigger1 = time = 0
anim = F88951
ID = 88935
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0

[State 889917, varrandom]
type = VarRandom
trigger1 = 1
v = 40
range = -3,-7

[State 889917, varrandom]
type = VarRandom
trigger1 = 1
v = 41
range = -5,5

[State 889917, velset]
type = velset
trigger1 = time = 1
y = var(40)
x = var(41)

[State 889917, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 889917, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger1 = time >=5
id = 88935

[State 889917, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger1 = time >=5
value = 889915

;-------------------------------------------------------------
;Belger Leg
[Statedef 889918]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889918, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889918, Explod]
type = Explod
trigger1 = time = 0
anim = F80088
ID = 889918
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0

[State 889918]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-10

[State 889918]
type = VarRandom
trigger1 = 1
v = 1
range = -5,5

[State 889918]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889918]
type = veladd
trigger1 = time >= 1
y = .3

[State 889918]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889919

;-------------------------------------------------------------
;Leg on Ground
[Statedef 889919]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889919, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889918
;ignorehitpause =
;persistent =

[State 889919, Explod]
type = Explod
trigger1 = time = 0
anim = F80092
;ID = 889910
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0

[State 889919, Leg]
type = PlaySnd
trigger1 = time = 0
value = F69,0

[State 889919, DestroySelf]
type = DestroySelf
trigger1 = time >=2000
;ignorehitpause =
;persistent =

;-------------------------------------------------------------
;Make ForeGround & Background Invisible
[Statedef 889920]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889920, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889920, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = noFG
flag2 = nobardisplay
flag3 = noautoturn
ignorehitpause = 1
;persistent =

[State 889920, ScreenBound]
type = ScreenBound
trigger1 = time >=0
value = 0
movecamera = 0,0
ignorehitpause = 1
;persistent =

[State 889920, PlayerPush]
type = PlayerPush
trigger1 = time >=0
value = 0
ignorehitpause = 1
;persistent =

[State 889920]
type = ChangeState
trigger1 = movecontact
value = 889920

;-------------------------------------------------------------
;Belger Skull
[Statedef 889922]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889922, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889922, Explod]
type = Explod
trigger1 = time = 0
anim = F80090
ID = 889922
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 50
ontop = 0
ownpal = 1
removeongethit = 0

[State 889922]
type = VarRandom
trigger1 = 1
v = 0
range = -4,-15

[State 889922]
type = VarRandom
trigger1 = 1
v = 1
range = -2,2

[State 889922]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889922]
type = veladd
trigger1 = time >= 1
y = .3

[State 889922]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger1 = time >=4
value = 889923

;-------------------------------------------------------------
;Skull Bounce
[Statedef 889923]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889923, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889922
;ignorehitpause =
;persistent =

[State 889923, Explod]
type = Explod
trigger1 = time = 0
anim = F80090
ID = 889923
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0

[State 889923, Ribs]
type = PlaySnd
trigger1 = time = 0
value = F51,0

[State 889923, VelSet]
type = VelSet
trigger1 = time = 0
y = -6
;ignorehitpause =
;persistent =

[State 889923, VelAdd]
type = VelAdd
trigger1 = 1
y = .2
;ignorehitpause =
;persistent =

[State 889922]
type = ChangeState
trigger1 = time >=2
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889924

;-------------------------------------------------------------
;Skull on Ground
[Statedef 889924]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889924, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889923
;ignorehitpause =
;persistent =

[State 889924, Skull]
type = Explod
trigger1 = time = 0
anim = F80094
;ID = 889910
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 36
ontop = 0
ownpal = 1
removeongethit = 0

[State 889924, Skull]
type = PlaySnd
trigger1 = time = 0
value = F88,3

[State 889924, DestroySelf]
type = DestroySelf
trigger1 = time >=2000
;ignorehitpause =
;persistent =

;-------------------------------------------------------------
;Belger Glass Break
[Statedef 889925]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889925, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889925, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889925
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
removetime = -1
scale = 1,1
sprpriority = 9
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889925]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-5

[State 889925]
type = VarRandom
trigger1 = 1
v = 1
range = -2,-4

[State 889925]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889925]
type = veladd
trigger1 = time >= 1
y = .2

[State 889925, DestroySelf]
type = DestroySelf
trigger1 = time >=150
;ignorehitpause =
;persistent =

;-------------------------------------------------------------
;Belger Glass Break 2
[Statedef 889926]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889926, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889926, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889925
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
removetime = -1
scale = .8,.8
sprpriority = 9
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889926]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-5

[State 889926]
type = VarRandom
trigger1 = 1
v = 1
range = -2,-4

[State 889926]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889926]
type = veladd
trigger1 = time >= 1
y = .2

[State 889926, DestroySelf]
type = DestroySelf
trigger1 = time >=150
;ignorehitpause =
;persistent =

;-------------------------------------------------------------
;Belger Glass Break 3
[Statedef 889927]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889927, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889927, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889925
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
removetime = -1
scale = .6,.6
sprpriority = 9
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889927]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-5

[State 889927]
type = VarRandom
trigger1 = 1
v = 1
range = -2,-4

[State 889927]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889927]
type = veladd
trigger1 = time >= 1
y = .2

[State 889927, DestroySelf]
type = DestroySelf
trigger1 = time >=150
;ignorehitpause =
;persistent =

;-------------------------------------------------------------
;Belger Glass Break 4
[Statedef 889928]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889928, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889928, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889925
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
removetime = -1
scale = .5,.5
sprpriority = 9
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889928]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-5

[State 889928]
type = VarRandom
trigger1 = 1
v = 1
range = -2,-4

[State 889928]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889928]
type = veladd
trigger1 = time >= 1
y = .2

[State 889928, DestroySelf]
type = DestroySelf
trigger1 = time >=150
;ignorehitpause =
;persistent =

;-------------------------------------------------------------
;Belger Glass Break 5
[Statedef 889929]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889929, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889929, Glass]
type = Explod
trigger1 = time = 0
anim = F89023
ID = 889925
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
removetime = -1
scale = .9,.9
sprpriority = 9
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 889929]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-5

[State 889929]
type = VarRandom
trigger1 = 1
v = 1
range = -2,-4

[State 889929]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889929]
type = veladd
trigger1 = time >= 1
y = .2

[State 889929, DestroySelf]
type = DestroySelf
trigger1 = time >=150
;ignorehitpause =
;persistent =

;----------------------------------
;Metal Barrel O goodies for "Belger's Mansion FF" #1
[Statedef 889930]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = -19

[State 889930, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889930, Barrel]
type = Explod
trigger1 = time = 0
anim = F89125
ID = 889930
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 0

[State 889930, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889930, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889931

[State 889930, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889930, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889930, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889931
ctrl = 0

;----------------------------------
; Barrel O goodies for "Belger's Mansion FF" stage + Health Cont...
[Statedef 889931]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = 20

[State 889931, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889931, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889931, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889932

[State 889931, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889931, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889931, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889932
ctrl = 0
;----------------------------------
; Barrel O goodies for "Belger's Mansion FF" stage + Health Cont...
[Statedef 889932]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = 20

[State 889932, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889932, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889932, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889933

[State 889932, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889932, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889932, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889933
ctrl = 0

;------------------------------
; broken barrel + health Broken
[Statedef 889933]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15
sprpriority = 20

[State 889933, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889933, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889930

[State 889933, BarrelBottom]
type = Helper
trigger1 = Time = 0
;trigger1 = stateno = 889933
helpertype = Normal
ID = 889941
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889941
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889933, BarrelTop]
type = Helper
trigger1 = Time = 0
;trigger1 = stateno = 889933
helpertype = Normal
ID = 889943
name = "wood piece 1"
postype = p1
pos = 0,-42
stateno = 889943
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

;[State 889933, RandomGoodie]
;type = Helper
;trigger1 = Time = 0
;trigger1 = stateno = 889933
;helpertype = Normal
;ID = 889934
;name = "GoodieBM"
;postype = P1
;pos = 0,0
;stateno = 889934+random%3
;ownpal = 1
;size.xscale = 1.0
;size.yscale = 1.0

[State 889933, FFgoodie1]
type = Helper
trigger1 = Time = 0
;trigger1 = stateno = 889443
helpertype = Normal
ID = 889933
name = "FFGoodie1a"
postype = P1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889933, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889930
ctrl = 0

;-------------------------------------------------------------
;FF barrel bottom drop "Belger's Mansion"
[Statedef 889941]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889941, Explod]
type = Explod
trigger1 = time = 0
anim = F89129
ID = 889941
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889941]
type = VarRandom
trigger1 = 1
v = 0
range = -3,-5

[State 889941]
type = VarRandom
trigger1 = 1
v = 1
range = -3,3

[State 889941]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889941]
type = veladd
trigger1 = time >= 1
y = .3

[State 889941, BrokeBarrel]
type = PlaySnd
trigger1 = time = 0
value = F46,0

[State 889941]
type = ChangeState
trigger1 = Pos Y >= -9
trigger1 = Vel Y > 0
value = 889942

;-------------------------------
;FF barrel bottom ground "Belger's Mansion"
[Statedef 889942]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800

[State 889942, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889941

[State 889942, ChangeAnim2]
type = ChangeAnim
Trigger1 = Time = 0
value = 9800 ;Invisible

[State 889942, barrel bottom]
type = explod
anim = F89130
trigger1 = time = 0
ID = 889942
pos = -4,4
vel = 0, 0
sprpriority = -18
removetime = 331
ownpal = 1

[State 889942, metalhit]
type = PlaySnd
trigger1 = time = 0
value = F42,0

[State 889942, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 50
id = 889942

[State 889942, DestroySelf]
type = DestroySelf
trigger1 = time = 50

;-------------------------------------------------------------
;FF barrel top drop "Belger's Mansion"
[Statedef 889943]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889943, Explod]
type = Explod
trigger1 = time = 0
anim = F89131
ID = 889943
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889943]
type = VarRandom
trigger1 = 1
v = 2
range = -3,-8

[State 889943]
type = VarRandom
trigger1 = 1
v = 3
range = -3,3

[State 889943]
type = velset
trigger1 = time = 1
y = var(2)
x = var(3)

[State 889943]
type = veladd
trigger1 = time >= 1
y = .3

[State 889943, BrokeBarrel]
type = PlaySnd
trigger1 = time = 0
value = F46,0

[State 889943]
type = ChangeState
trigger1 = Pos Y >= -9
trigger1 = Vel Y > 0
value = 889944

;-------------------------------
;FF barrel top ground "Belger's Mansion"
[Statedef 889944]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800

[State 889944, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889943

[State 889944, ChangeAnim2]
type = ChangeAnim
Trigger1 = Time = 0
value = 9800 ;Invisible

[State 889944, barrel bottom]
type = explod
anim = F89132
trigger1 = time = 0
ID = 889944
pos = -4,4
vel = 0, 0
sprpriority = -5
removetime = 331
ownpal = 1

[State 889944, metalhit]
type = PlaySnd
trigger1 = time = 0
value = F42,0

[State 889944, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 50
id = 889944

[State 889944, DestroySelf]
type = DestroySelf
trigger1 = time = 50

;----------------------------------
;Metal Barrel O goodies for "Belger's Mansion FF" stage #2
[Statedef 889945]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = -19

[State 889945, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889945, Barrel]
type = Explod
trigger1 = time = 0
anim = F89125
ID = 889945
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 889945, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889945, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889946

[State 889945, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889945, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889945, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889946
ctrl = 0

;----------------------------------
; Barrel O goodies for "Belger's Mansion FF" stage + Energy Cont...
[Statedef 889946]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = 20

[State 889946, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889946, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889946, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889947

[State 889946, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889946, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889946, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889947
ctrl = 0
;----------------------------------
; Barrel O goodies for "Belger's Mansion FF" stage + Energy Cont...
[Statedef 889947]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = 20

[State 889947, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889947, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 889947, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 889948

[State 889947, Explod]
type = Explod
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889947, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889947, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-5,50] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,5] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 889948
ctrl = 0

;------------------------------
; broken barrel + Energy Broken
[Statedef 889948]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15
sprpriority = 20

[State 889948, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 889948, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 889945

[State 889948, BarrelBottom]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889948
helpertype = Normal
ID = 889957
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889957
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889948, BarrelTop]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889948
helpertype = Normal
ID = 889959
name = "wood piece 1"
postype = p1
pos = 0,-42
stateno = 889959
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889948, goodie3]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889948
helpertype = Normal
ID = 889144
name = "FFEnergy3"
postype = p1
pos = 0,-23
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889948, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889945
ctrl = 0

;-------------------------------------------------------------
;FF barrel bottom drop "Belger's Mansion"
[Statedef 889957]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889957, Explod]
type = Explod
trigger1 = time = 0
anim = F89129
ID = 889957
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889957]
type = VarRandom
trigger1 = 1
v = 0
range = -3,-5

[State 889957]
type = VarRandom
trigger1 = 1
v = 1
range = -3,3

[State 889957]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 889957]
type = veladd
trigger1 = time >= 1
y = .3

[State 889957, BrokeBarrel]
type = PlaySnd
trigger1 = time = 0
value = F46,0

[State 889957]
type = ChangeState
trigger1 = Pos Y >= 15
trigger1 = Vel Y > 0
value = 889958

;-------------------------------
;FF barrel bottom ground "Belger's Mansion"
[Statedef 889958]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800

[State 889958, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889957

[State 889958, ChangeAnim2]
type = ChangeAnim
Trigger1 = Time = 0
value = 9800 ;Invisible

[State 889958, barrel bottom]
type = explod
anim = F89130
trigger1 = time = 0
ID = 889958
pos = -4,4
vel = 0, 0
sprpriority = 5
removetime = 331
ownpal = 1

[State 889958, metalhit]
type = PlaySnd
trigger1 = time = 0
value = F42,0

[State 889958, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 50
id = 889958

[State 889958, DestroySelf]
type = DestroySelf
trigger1 = time >= 50

;-------------------------------------------------------------
;FF barrel top drop "Belger's Mansion"
[Statedef 889959]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889959, Explod]
type = Explod
trigger1 = time = 0
anim = F89131
ID = 889959
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0

[State 889959]
type = VarRandom
trigger1 = 1
v = 2
range = -3,-8

[State 889959]
type = VarRandom
trigger1 = 1
v = 3
range = -3,3

[State 889959]
type = velset
trigger1 = time = 1
y = var(2)
x = var(3)

[State 889959]
type = veladd
trigger1 = time >= 1
y = .3

[State 889959, BrokeBarrel]
type = PlaySnd
trigger1 = time = 0
value = F46,0

[State 889959]
type = ChangeState
trigger1 = Pos Y >= 15
trigger1 = Vel Y > 0
value = 889960

;-------------------------------
;FF barrel top ground "Belger's Mansion"
[Statedef 889960]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800

[State 889960, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 889959

[State 889960, barrel bottom]
type = explod
anim = F89132
trigger1 = time = 0
ID = 889960
pos = -4,4
vel = 0, 0
sprpriority = 5
removetime = 331
ownpal = 1

[State 889960, metalhit]
type = PlaySnd
trigger1 = time = 0
value = F42,0

[State 889960, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 50
id = 889960

[State 889960, DestroySelf]
type = DestroySelf
trigger1 = time >= 50


;-------------------------------------------------------------
;FF Chandalier #1
[Statedef 889965]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889965, Chandalier]
type = Explod
trigger1 = time = 0
anim = F80104
ID = 889965
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889965, ChandalierShadow]
type = Explod
trigger1 = time = 0
anim = F80105
ID = 889966
pos = 0,146
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -16
ontop = 0
ownpal = 1
removeongethit = 0

[State 889965, ChangeState]
type = ChangeState
trigger1 = time >= 0
trigger1 = RootDist X = [-10,10]
trigger2 = time >= 0
trigger2 = P2Dist X = [-10,10]
value = 889966
ctrl = 0

[State 889965, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 889965
ctrl = 0

;-------------------------------------------------------------
;;FF Chandalier #1 Cont...
[Statedef 889966]
type    = A
movetype= A
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3
juggle = 1

[State 889967, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889965

[State 889966, PosAdd]
type = PosAdd
trigger1 = time = 0
y = 4
;ignorehitpause =
;persistent =

[State 889966, Chandalier]
type = Explod
trigger1 = time = 0
anim = F80104
ID = 889966
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889966, ChandalierHit]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 80,10
guardflag = MAFD
affectteam = B
pausetime = 12,12
sparkno = -1
sparkxy = -10,-70
hitsound   = F45,0
guardsound = F86,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -2.5,-5
air.velocity = -2.5,-4
fall = 1
fall.recover = 0

[State 889966, Hitbox]
type = ChangeAnim
trigger1 = time = 47
value = 889380
ignorehitpause = 1
;persistent =

[State 889966, VelAdd]
type = VelAdd
trigger1 = time > 45
y = .2

[State 889966, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889967
ctrl = 0

;-------------------------------------------------------------
;;FF Chandalier #1 crashed
[Statedef 889967]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889967, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889966

[State 889967, Chandalier]
type = Explod
trigger1 = time = 0
anim = F80103
;ID = 889965
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 65
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -16
ontop = 0
ownpal = 1
removeongethit = 0

[State 889967, RandomGoodie]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889967
helpertype = Normal
ID = 889950
name = "GoodieBM"
postype = P1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889967, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889967
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = 3,-20
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889967, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889967
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = 6,-30
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889967, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889967
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = -3,-33
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889967, wood piece square]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889967
helpertype = Normal
ID = 889127
name = "wood piece 1"
postype = p1
pos = -6,-12
stateno = 889127
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889967, wood piece medium]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889967
helpertype = Normal
ID = 889129
name = "wood piece 1"
postype = p1
pos = -9,-19
stateno = 889129
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889967, wood piece small]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889967
helpertype = Normal
ID = 889130
name = "wood piece 1"
postype = p1
pos = 9,-13
stateno = 889130
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889967, wood piece fragments]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889967
helpertype = Normal
ID = 889131
name = "wood piece 1"
postype = p1
pos = 0,-25
stateno = 889131
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889967, Glass]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889967
helpertype = Normal
ID = 889185
name = "Glass1"
postype = p1
pos = 6,-17
stateno = 889185
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889967, Glass 2]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889967
helpertype = Normal
ID = 889182
name = "Glass2"
postype = p1
pos = -6,-22
stateno = 889185
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889967, ChanadlierCrash]
type = PlaySnd
trigger1 = time = 0
value = F41,3

[State 889967, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 889965
ctrl = 0

;-------------------------------------------------------------
;;FF Chandalier #2
[Statedef 889968]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889968, Chandalier]
type = Explod
trigger1 = time = 0
anim = F80104
ID = 889968
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889968, ChandalierShadow]
type = Explod
trigger1 = time = 0
anim = F80105
ID = 889969
pos = 0,146
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -16
ontop = 0
ownpal = 1
removeongethit = 0

[State 889968, ChangeState]
type = ChangeState
trigger1 = time >= 0
trigger1 = RootDist X = [-10,10]
trigger2 = time >= 0
trigger2 = P2Dist X = [-10,10]
value = 889969
ctrl = 0

[State 889968, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 889968
ctrl = 0

;-------------------------------------------------------------
;;FF Chandalier #2 Cont...
[Statedef 889969]
type    = A
movetype= A
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3
juggle = 1

[State 889969, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889968

[State 889969, PosAdd]
type = PosAdd
trigger1 = time = 0
y = 4
;ignorehitpause =
;persistent =

[State 889969, Chandalier]
type = Explod
trigger1 = time = 0
anim = F80104
ID = 889969
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0

[State 889969, ChandalierHit]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 80,10
guardflag = MAFD
affectteam = B
pausetime = 12,12
sparkno = 1
sparkxy = -10,-70
hitsound   = F45,0
guardsound = F86,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -2.5,-5
air.velocity = -2.5,-4
fall = 1
fall.recover = 0

[State 889969, Hitbox]
type = ChangeAnim
trigger1 = time = 47
value = 889380
ignorehitpause = 1
;persistent =

[State 889966, VelAdd]
type = VelAdd
trigger1 = time > 45
y = .2

[State 889969, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 889970
ctrl = 0

;-------------------------------------------------------------
;;FF Chandalier #2 crashed
[Statedef 889970]
type    = A
movetype= I
physics = N
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 889970, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889969

[State 889970, Chandalier]
type = Explod
trigger1 = time = 0
anim = F80103
;ID = 889965
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 65
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -16
ontop = 0
ownpal = 1
removeongethit = 0

[State 889970, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889970
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = 3,-20
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889970, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889970
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = 6,-30
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889970, wood piece big]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889970
helpertype = Normal
ID = 889124
name = "wood piece 1"
postype = p1
pos = -3,-33
stateno = 889124
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889970, wood piece square]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889970
helpertype = Normal
ID = 889127
name = "wood piece 1"
postype = p1
pos = -6,-12
stateno = 889127
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889970, wood piece medium]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889970
helpertype = Normal
ID = 889129
name = "wood piece 1"
postype = p1
pos = -9,-19
stateno = 889129
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889970, wood piece small]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889970
helpertype = Normal
ID = 889130
name = "wood piece 1"
postype = p1
pos = 9,-13
stateno = 889130
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889970, wood piece fragments]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889970
helpertype = Normal
ID = 889131
name = "wood piece 1"
postype = p1
pos = 0,-25
stateno = 889131
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889970, Glass]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889970
helpertype = Normal
ID = 889185
name = "Glass1"
postype = p1
pos = 6,-17
stateno = 889185
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889970, Glass 2]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889970
helpertype = Normal
ID = 889182
name = "Glass2"
postype = p1
pos = -6,-22
stateno = 889185
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889970, FFGoodie4]
type = Helper
trigger1 = Time = 0
trigger1 = stateno = 889970
helpertype = Normal
ID = 889970
name = "FFGoodie4"
postype = p1
pos = -6,-22
stateno = 889160+random%2
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 889970, ChanadlierCrash]
type = PlaySnd
trigger1 = time = 0
value = F41,3

[State 889970, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 889968
ctrl = 0

;--------------------------------------------------
;Ninja Warrior Spawner "Sewers stage 5"
[Statedef 889971]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 0
sprpriority = -2

[State 889971, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 889971, NinjaWarriorLeft]
type = Helper
triggerall = RoundState = 2
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5" || stagevar(info.name) = "Ninja Warriors Stage 1"
trigger1 = (GameTime % 100) = random%27
trigger1 = teamside = 2
trigger1 = Numhelper(889975) = 0 ;Numhelper and ID have to be the same
trigger2 = stagevar(info.name) = "Ninja Warriors Stage 2" || stagevar(info.name) = "Ninja Warriors Stage 3"
trigger2 = (GameTime % 100) = random%27
trigger2 = teamside = 2
trigger2 = Numhelper(890025) = 0
trigger3 = stagevar(info.name) = "Ninja Warriors Stage 4" || stagevar(info.name) = "Ninja Warriors Stage 6"
trigger3 = (GameTime % 100) = random%27
trigger3 = teamside = 2
trigger3 = Numhelper(890025) = 0
Pos = 0,0
name = "NWsoildersLeft"
stateno = 889972 + random%4
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 889975
;size.xscale = 2
;size.yscale = 2

[State 889971, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 889971
ctrl = 0

;--------------------------------
;NW Rifleman Left Stance
[Statedef 889972]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889383 ;HitBox
velset = 0,0
juggle = 1

[State 889972, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 889972, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889985
;ignorehitpause = 1

[State 889972, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889986
;ignorehitpause = 1

[State 889972, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889987
;ignorehitpause = 1

[State 889972, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889988
;ignorehitpause = 1

[State 889972, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889990
;ignorehitpause = 1

[State 889972, Stance]
type = Explod
trigger1 = time = 0
trigger1 = NumExplod(889972) = 0
anim = F80112
ID = 889972
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 889972, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889972, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889972, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889988
;ignorehitpause = 1

[State 889972, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889972, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889972, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889988
ctrl = 0

[State 889972, watersplashIdle]
type = Explod
trigger1 = NumExplod(889979) = 0
trigger1 = Pos Y = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80099
ID =889979
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889972, WalkAway]
type = ChangeState
triggerall = time >25
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[-20,20]
trigger2 = numhelper(889975)
value = 889985 + random%3
ctrl = 0

[State 889972, ShootRifle]
type = ChangeState
triggerall = time >20
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(889975)
value = 889990 + random%2
ctrl = 0

[State 889972, stance]
type = ChangeState
trigger1 = (GameTime % 80) = random%27
trigger1 = numhelper(889975)
value = 889985 + random%3
ctrl = 0

;--------------------------------
;NW Grenadier Left Stance
[Statedef 889973]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889383 ;HitBox
velset = 0,0
juggle = 1

[State 889973, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 889973, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890000
;ignorehitpause = 1

[State 889973, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890001
;ignorehitpause = 1

[State 889973, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890002
;ignorehitpause = 1

[State 889973, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890004
;ignorehitpause = 1

[State 889973, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890010
;ignorehitpause = 1

[State 889973, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890014
;ignorehitpause = 1

[State 889973, Stance]
type = Explod
trigger1 = time = 0
trigger1 = NumExplod(889973) = 0
anim = F80123
ID = 889973
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 889973, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889973, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889973, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890004
;ignorehitpause = 1

[State 889973, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889973, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889973, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 890004
ctrl = 0

[State 889973, watersplashIdle]
type = Explod
trigger1 = NumExplod(889979) = 0
trigger1 = Pos Y = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80099
ID =889979
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889973, StockSmash]
type = ChangeState
triggerall = time >25
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[-20,20]
trigger2 = numhelper(889975)
value = 890014
ctrl = 0

[State 889973, ShootGrenade]
type = ChangeState
triggerall = time >65
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(889975)
value = 890010
ctrl = 0

[State 889973, Walk]
type = ChangeState
trigger1 = (GameTime % 80) = random%27
trigger1 = numhelper(889975)
value = 890000 + random%3
ctrl = 0

;--------------------------------
;NW Dog Left Run
[Statedef 889974]
type    = S
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889388 ;HitBox
velset = 0,0
juggle = 1

[State 889974, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 889974, Running]
type = Explod
trigger1 = time = 0
trigger1 = NumExplod(889974) = 0
anim = F80129
ID = 889974
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 889974, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889974, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889974, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890016
;ignorehitpause = 1

[State 889974, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889974, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889974, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 890016
ctrl = 0

[State 889974, watersplashIdle]
type = Explod
trigger1 = NumExplod(889979) = 0
trigger1 = Pos Y = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80099
ID =889974
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889974, HitDef]
type = HitDef
trigger1 = !time
attr = C, SP
animtype = medium
damage = 60,7
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89182
sparkxy = -20,-35
hitsound = F95,2
guardsound = F86,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 18
ground.velocity = 5
air.velocity = -2.9,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 889974, PlaySnd]
type = PlaySnd
triggerall = time >=0
trigger1 = P2BodyDist X =[-160,170]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[-160,170]
trigger2 = numhelper(889975)
value = F95,0
persistent = 0

[State 889974, VelSet]
type = VelSet
trigger1 = time >=0
x = -3.5
;ignorehitpause =
;persistent =

[State 889974, RemoveExplod]
type = RemoveExplod
trigger1 = time >=699
id = 889974
;ignorehitpause = 1

[State 889974, DestroySelf]
type = DestroySelf
trigger1 = time >=700
;ignorehitpause =
;persistent =

;--------------------------------
;NW Soldier Left Stance
[Statedef 889975]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889383 ;HitBox
velset = 0,0
juggle = 1

[State 889975, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 889975, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889976
;ignorehitpause = 1

[State 889975, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889977
;ignorehitpause = 1

[State 889975, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889978
;ignorehitpause = 1

[State 889975, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889980
;ignorehitpause = 1

[State 889975, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889982
;ignorehitpause = 1

[State 889975, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889983
;ignorehitpause = 1

[State 889975, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889984
;ignorehitpause = 1

[State 889975, Stance]
type = Explod
trigger1 = time = 0
trigger1 = NumExplod(889975) = 0
anim = F80108
ID = 889975
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 889975, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889975, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889975, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889980
;ignorehitpause = 1

[State 889975, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889975, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889975, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889980
ctrl = 0

[State 889975, watersplashIdle]
type = Explod
trigger1 = NumExplod(889979) = 0
trigger1 = Pos Y = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80099
ID =889979
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889975, watersplashjumpLand]
type = Explod
trigger1 = time = 0
trigger1 = PrevStateNo = 889983
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80102
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 14
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889975, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = PrevStateNo = 889983
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,1

[State 889975, Stab]
type = ChangeState
triggerall = time >25
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[-20,20]
trigger2 = numhelper(889975)
value = 889982
ctrl = 0

[State 889975, JumpKickorSlideKnife]
type = ChangeState
triggerall = time >20
trigger1 = P2BodyDist X =[90,100]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[90,100]
trigger2 = numhelper(889975)
value = 889983 + random%2
ctrl = 0

[State 889975, stance]
type = ChangeState
trigger1 = (GameTime % 80) = random%27
trigger1 = numhelper(889975)
value = 889975 + random%4
ctrl = 0

;-------------------------------------
;NWsoldier chase opponent
[Statedef 889976]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 889976, VarSet]
Type = VarSet
Trigger1 = 1
fvar(0) = (EnemyNear(0), Pos X - Pos X) * Facing

[State 889976, turn]
type = turn
trigger1 = P2Dist X < 0
trigger1 = Vel X < 2

[State 889976, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889975
;ignorehitpause = 1

[State 889976, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889977
;ignorehitpause = 1

[State 889976, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889978
;ignorehitpause = 1

[State 889976, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889980
;ignorehitpause = 1

[State 889976, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889982
;ignorehitpause = 1

[State 889976, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889984
;ignorehitpause = 1

[State 889976, Walk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(0)
anim = F80106
ID = 889976
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 190,190,190
ownpal = 1
removeongethit = 0
persistent = 0

[State 889976, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = P2BodyDist X != [-20,20]
x = 2

[State 889976, stop]
type = VelSet
trigger1 = P2BodyDist X = [-20,20];<= 170
x = 0

[State 889976, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889976, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889976, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889980; + random%3
;ignorehitpause = 1

[State 889976, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889976, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889976, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889980
ctrl = 0

[State 889976, ChangeState]
type = ChangeState
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(889975)
value = 889982
ctrl = 0

[State 889976, JumpKickorSlideKnife]
type = ChangeState
trigger1 = P2BodyDist X =[90,100]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[90,100]
trigger2 = numhelper(889975)
value = 889983 + random%2
ctrl = 0

[State 889976, Stance]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(889975)
value = 889975
ctrl = 0

;-------------------------------------
;NWSoldier chase root
[Statedef 889977]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 889977, VarSet]
Type = VarSet
Trigger1 = 1
fvar(1) = (root, Pos X - Pos X) * Facing

[State 889977, turn]
type = turn
trigger1 = RootDist X < 0
trigger1 = Vel X < 2

[State 889977, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889975
;ignorehitpause = 1

[State 889977, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889976
;ignorehitpause = 1

[State 889977, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889978
;ignorehitpause = 1

[State 889977, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889980
;ignorehitpause = 1

[State 889977, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889982
;ignorehitpause = 1

[State 889977, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889984
;ignorehitpause = 1

[State 889977, SoilderLeftWalk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(1)
anim = F80106
ID = 889977
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 889977, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = RootDist X !=[-20,20]
x = 2

[State 889977, stop]
type = VelSet
trigger1 = RootDist X =[-20,20];<= 170
x = 0

[State 889977, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889977, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889977, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889980
;ignorehitpause = 1

[State 889977, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889977, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889977, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889980
ctrl = 0

[State 889977, Stab]
type = ChangeState
trigger1 = rootdist X =[-20,20]
trigger1 = life >= 1
trigger1 = numhelper(889975)
value = 889982
ctrl = 0

[State 889977, JumpKickorSlideKnife]
type = ChangeState
trigger1 = P2BodyDist X =[90,100]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[90,100]
trigger2 = numhelper(889975)
value = 889983 + random%2
ctrl = 0

[State 889792, Stance]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(889975)
value = 889975
ctrl = 0

;-------------------------------------
;NW Soldier walking
[Statedef 889978]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 889978, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889975
;ignorehitpause = 1

[State 889978, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889976
;ignorehitpause = 1

[State 889978, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889977
;ignorehitpause = 1

[State 889978, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889980
;ignorehitpause = 1

[State 889978, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889982
;ignorehitpause = 1

[State 889978, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889984
;ignorehitpause = 1

[State 889978, CaveWarriorLeftWalk]
type = Explod
trigger1 = time = 0
anim = F80106
ID = 889978
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 889978, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889978, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889978, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889980
;ignorehitpause = 1

[State 889978, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889978, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889978, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889980
ctrl = 0

[State 889978, velset]
type = VelSet
trigger1 = Time >= 0
x = -2

[State 889978, stance]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(889975)
value = 889975
ctrl = 0

;--------------------------------
;NW Soldier Hit react
[Statedef 889980]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 889980, PosSet]
type = PosSet
trigger1 = time = 0
y = -3
ignorehitpause = 1
;persistent =

[State 889980, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889975
;ignorehitpause = 1

[State 889980, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889976
;ignorehitpause = 1

[State 889980, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889977
;ignorehitpause = 1

[State 889980, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889978
;ignorehitpause = 1

[State 889980, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889979
;ignorehitpause = 1

[State 889980, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889982
;ignorehitpause = 1

[State 889980, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889983
;ignorehitpause = 1

[State 889980, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889984
;ignorehitpause = 1

[State 889980, NWSoilderHitReact]
type = Explod
trigger1 = time = 0
anim = F80109
ID = 889980
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 889980, VelSet]
type = VelSet
trigger1 = 1
x = -3
ignorehitpause = 1
;;persistent =

[State 889980, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 889980, watersplashjump]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80100
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 18
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889980, KnifeSpawn]
type = Helper
trigger1 = time = 5
trigger1 = numhelper(9100) < 5
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size = 1,1
;ignorehitpause =
persistent = 0

[State 889980, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 889980, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 889980, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 889981
ctrl = 0
;ignorehitpause = 1

;--------------------------------
;NW Soldier dead
[Statedef 889981]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;Invisible
velset = 0,0
juggle = 1

[State 889981, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889975
;ignorehitpause = 1

[State 889981, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889980
;ignorehitpause = 1

[State 889981, NWSoilderDead]
type = Explod
trigger1 = time = 0
anim = F80110
;ID = 889980
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause = 1

[State 889981, watersplashfall]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80101
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 25
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889981, BigSplash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F93,random%2

[State 889981, DestroySelf]
type = DestroySelf
trigger1 = time >= 55
ignorehitpause = 1

;-------------------------------------------------------------
;Ninja Warrior Soldier Knife Attack
[Statedef 889982]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889381 ;hitbox

[State 889982, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889975
;ignorehitpause = 1

[State 889982, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889976
;ignorehitpause = 1

[State 889982, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889977
;ignorehitpause = 1

[State 889982, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889978
;ignorehitpause = 1

[State 889982, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889980
;ignorehitpause = 1

[State 889982, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889984
;ignorehitpause = 1

[State 889982, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889982, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889982, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889980
;ignorehitpause = 1

[State 889982, HitDef]
type = HitDef
trigger1 = animelem = 1
attr = S, NA
animtype = Medium
damage = 30,3
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89182
sparkxy = -10,-50
hitsound = F32,random%4
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 889982, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype = Medium
damage = 35,3
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89182
sparkxy = -10,-50
hitsound = F32,random%4
guardsound = F86,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 889982, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
animtype = Medium
damage = 55,5
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 13,13
sparkno = 89182
sparkxy = -10,-60
hitsound = F32,random%4
guardsound = F86,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 889982, NWSoilderStab]
type = Explod
trigger1 = time = 0
anim = F80107
ID = 889982
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 889982, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889982, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889982, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889980
ctrl = 0

[State 889982, Woosh]
type = PlaySnd
trigger1 = time = 0 || time = 20
value = F81,2

[State 889982, Stance]
type = ChangeState
Trigger1 = Time >= 41
value = 889975
ctrl = 0

;-------------------------------------------------------------
;Ninja Warrior Soldier Jump Kick
[Statedef 889983]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 889382 ;hitbox

[State 889983, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889975
;ignorehitpause = 1

[State 889983, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889976
;ignorehitpause = 1

[State 889983, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889977
;ignorehitpause = 1

[State 889983, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889978
;ignorehitpause = 1

[State 889983, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889979
;ignorehitpause = 1

[State 889983, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889980
;ignorehitpause = 1

[State 889983, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889984
;ignorehitpause = 1

[State 889983, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889983, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889983, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889980
;ignorehitpause = 1

[State 889983, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype = Medium
damage = 55,4
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89172
sparkxy = -10,-43
hitsound = F69,1
guardsound = F86,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -7
air.velocity = -3,-4

[State 889983, NWJumpKick]
type = Explod
trigger1 = time = 0
anim = F80111
ID = 889983
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 889983, watersplashjump]
type = Explod
trigger1 = time = 0
anim = F80100
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 18
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889983, Woosh]
type = PlaySnd
trigger1 = time = 10
value = F81,2

[State 889983, VelSet]
type = VelSet
trigger1 = time = 0
x = 3
y = -7
ignorehitpause = 1
;;persistent =

[State 889983, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 889983, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889983, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889983, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889980
ctrl = 0

[State 889983, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 889983, Stance]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 889975
ctrl = 0
ignorehitpause = 1

;-------------------------------------------------------------
;Ninja Warrior Soldier Slide Attack
[Statedef 889984]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889386 ;hitbox

[State 889984, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889975
;ignorehitpause = 1

[State 889984, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889976
;ignorehitpause = 1

[State 889984, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889977
;ignorehitpause = 1

[State 889984, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889978
;ignorehitpause = 1

[State 889984, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889979
;ignorehitpause = 1

[State 889984, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889980
;ignorehitpause = 1

[State 889984, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889984, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889984, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889980
;ignorehitpause = 1

[State 889984, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
animtype = Medium
damage = 30,3
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89182
sparkxy = -10,-50
hitsound = F32,random%4
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 889984, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
animtype = Medium
damage = 35,3
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89182
sparkxy = -10,-50
hitsound = F32,random%4
guardsound = F86,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 889982, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = C, NA
animtype = Medium
damage = 55,5
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 13,13
sparkno = 89182
sparkxy = -10,-60
hitsound = F32,random%4
guardsound = F86,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 889984, NWStab1]
type = Explod
trigger1 = time = 0
anim = F80124
ID = 889984
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 889984, watersplashSlide]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80101
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 25
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 1

[State 889984, WaterSlide]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F64,0

[State 889984, KnifeSlash]
type = PlaySnd
trigger1 = time = 0
value = F62,0

[State 889984, VelSet]
type = VelSet
trigger1 = time = 0
x = 11
ignorehitpause = 1
;;persistent =

[State 889984, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889984, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889984, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889980
ctrl = 0

[State 889984, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 889984, Stance]
type = ChangeState
trigger1 = time >=150
value = 889975
ctrl = 0
ignorehitpause = 1

;-------------------------------------
;NW Rifleman chase opponent
[Statedef 889985]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 889985, VarSet]
Type = VarSet
Trigger1 = 1
fvar(0) = (EnemyNear(0), Pos X - Pos X) * Facing

[State 889985, turn]
type = turn
trigger1 = P2Dist X < 0
trigger1 = Vel X < 2

[State 889985, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889972
;ignorehitpause = 1

[State 889985, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889986
;ignorehitpause = 1

[State 889985, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889987
;ignorehitpause = 1

[State 889985, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889988
;ignorehitpause = 1

[State 889985, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889990
;ignorehitpause = 1

[State 889985, Walk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(0)
anim = F80114
ID = 889985
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 190,190,190
ownpal = 1
removeongethit = 0
persistent = 0

[State 889985, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = P2BodyDist X != [-20,20]
x = 2

[State 889985, stop]
type = VelSet
trigger1 = P2BodyDist X = [-20,20];<= 170
x = 0

[State 889985, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889985, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889985, HitOverride] ;light React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889988
;ignorehitpause = 1

[State 889985, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889985, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889985, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889988
ctrl = 0

[State 889985, WalkAway]
type = ChangeState
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(889975)
value = 889985 + random%3
ctrl = 0

[State 889985, ShootRifle]
type = ChangeState
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(889975)
value = 889990 + random%2
ctrl = 0

[State 889985, Stance]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(889975)
value = 889972
ctrl = 0

;-------------------------------------
;NW Rifleman chase root
[Statedef 889986]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 889986, VarSet]
Type = VarSet
Trigger1 = 1
fvar(1) = (root, Pos X - Pos X) * Facing

[State 889986, turn]
type = turn
trigger1 = RootDist X < 0
trigger1 = Vel X < 2

[State 889986, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889972
;ignorehitpause = 1

[State 889986, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889985
;ignorehitpause = 1

[State 889986, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889987
;ignorehitpause = 1

[State 889986, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889988
;ignorehitpause = 1

[State 889986, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889990
;ignorehitpause = 1

[State 889986, RiflemanLeftWalk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(1)
anim = F80114
ID = 889986
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 889986, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = RootDist X !=[-20,20]
x = 2

[State 889986, stop]
type = VelSet
trigger1 = RootDist X =[-20,20];<= 170
x = 0

[State 889986, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889986, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889986, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889988
;ignorehitpause = 1

[State 889986, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889986, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889986, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889988 ;+ random%8
ctrl = 0

[State 889986, RunAway]
type = ChangeState
trigger1 = rootdist X =[-20,20]
trigger1 = life >= 1
trigger1 = numhelper(889975)
value = 889985 + random%3
ctrl = 0

[State 889986, ShootRifle]
type = ChangeState
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(889975)
value = 889990 + random%2
ctrl = 0

[State 889786, Stance]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(889975)
value = 889972
ctrl = 0

;-------------------------------------
;NW Rifleman walking
[Statedef 889987]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 889987, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889972
;ignorehitpause = 1

[State 889987, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889985
;ignorehitpause = 1

[State 889987, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889986
;ignorehitpause = 1

[State 889987, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889990
;ignorehitpause = 1

[State 889987, RiflemanLeftWalk]
type = Explod
trigger1 = time = 0
anim = F80114
ID = 889987
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 889987, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889987, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889987, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889988
;ignorehitpause = 1

[State 889987, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889987, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889987, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889988
ctrl = 0

[State 889987, velset]
type = VelSet
trigger1 = Time >= 0
x = -2

[State 889987, stance]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(889975)
value = 889972
ctrl = 0

;--------------------------------
;NW Rifleman Hit react
[Statedef 889988]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 889988, PosSet]
type = PosSet
trigger1 = time = 0
y = -3
ignorehitpause = 1
;persistent =

[State 889988, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889972
;ignorehitpause = 1

[State 889988, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889979
;ignorehitpause = 1

[State 889988, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889985
;ignorehitpause = 1

[State 889988, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889986
;ignorehitpause = 1

[State 889988, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889987
;ignorehitpause = 1

[State 889988, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889990
;ignorehitpause = 1

[State 889988, NWRiflemanHitReact]
type = Explod
trigger1 = time = 0
anim = F80115
ID = 889988
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 889988, VelSet]
type = VelSet
trigger1 = 1
x = -3
ignorehitpause = 1
;;persistent =

[State 889988, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 889988, watersplashjump]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80100
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 18
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889988, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 889988, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 889988, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 889989
ctrl = 0
ignorehitpause = 1

;--------------------------------
;NW Rifleman dead
[Statedef 889989]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;Invisible
velset = 0,0
juggle = 1

[State 889989, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889988
;ignorehitpause = 1

[State 889989, NWRiflemanDead]
type = Explod
trigger1 = time = 0
anim = F80116
;ID = 889980
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 889989, watersplashfall]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80101
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 25
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889989, BigSplash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F93,random%2

[State 889989, DestroySelf]
type = DestroySelf
trigger1 = time >= 55
ignorehitpause = 1

;-------------------------------------
;NW Rifleman shooting
[Statedef 889990]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
velset = 0,0
ctrl = 0

[State 889990, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889972
;ignorehitpause = 1

[State 889990, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889985
;ignorehitpause = 1

[State 889990, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889986
;ignorehitpause = 1

[State 889990, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889987
;ignorehitpause = 1

[State 889990, RiflemanShoot]
type = Explod
trigger1 = time = 0
anim = F80113
ID = 889990
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 889990, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889990, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889990, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889988
;ignorehitpause = 1

[State 889990, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889990, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889990, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889988
ctrl = 0

[State 889625, RiflemanBullet]
type = Helper
trigger1 = NumHelper(889993) = 0
trigger1 = time = 37
;trigger1 = rootdist x = [25,550]
;trigger2 = NumHelper(889993) = 0
;trigger1 = time = 13
;trigger2 = P2dist x = [25,550]
helpertype = normal ;player
name = "RiflemanBullet1"
ID = 889993
stateno = 889993
pos = 35,-68
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 890005, Riflecock]
type = PlaySnd
trigger1 = time = 1
value = F94,0

[State 889990, stance]
type = ChangeState
trigger1 = time = 90 ;(GameTime % 300) = random%27
trigger1 = numhelper(889975)
value = 889972
ctrl = 0

;-------------------------------------
;NW Rifleman shooting Crouching
[Statedef 889991]
type = S
movetype = I
physics = N
anim = 889387 ;Hitbox
velset = 0,0
ctrl = 0

[State 889991, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889972
;ignorehitpause = 1

[State 889991, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889985
;ignorehitpause = 1

[State 889991, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889986
;ignorehitpause = 1

[State 889991, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889987
;ignorehitpause = 1

[State 889991, RiflemanShoot]
type = Explod
trigger1 = time = 0
anim = F80128
ID = 889990
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 889991, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889991, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 889991, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 889988
;ignorehitpause = 1

[State 889991, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 889991, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 889991, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 889988
ctrl = 0

[State 889991, RiflemanBullet]
type = Helper
trigger1 = time = 52
helpertype = normal ;player
name = "RiflemanBullet1"
ID = 889993
stateno = 889993
pos = 36,-47
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 889991, Riflecock]
type = PlaySnd
trigger1 = time = 15
value = F94,0

[State 889991, stance]
type = ChangeState
trigger1 = time = 90
trigger1 = numhelper(889975)
value = 889972
ctrl = 0

;----------------------------------------
;Rifleman Bullet
[Statedef 889993]
type = A
movetype = A
physics = N
anim = 889355 ;hitbox
ctrl = 0
sprpriority = 19
juggle = 1

[State 889993, Bullet]
type = Explod
trigger1 = time = 0
anim = F80117
ID = 889993
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 60
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 889993, BulletFired]
type = PlaySnd
trigger1 = time = 0
value = F80,0

[State 889993, HitDef]
type = HitDef
trigger1 = !time
attr = S, NP
animtype  = light
damage    = 50,6
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MA
guardflag = M
pausetime = 5,5
sparkno = 89182
sparkxy = 0,0
hitsound   = F32,3
guardsound = F49,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,0
guard.slidetime = 11
guard.hittime = 11
;airguard.velocity = 0
guard.velocity = -2
air.velocity = -4,-5
;air.fall = 1
;p2stateno = 889167
;fall.recovertime = 8
;ID = 889169
;nochainID = 889169
;Attack.Dist = 0

[State 889993, velset]
type=velset
trigger1=!time
x=13
y=0

[State 889993, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 889993, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,SP,HP
time = 1

[State 889993, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,SP,HP
stateno = 889994

[State 889993, RemoveBullet]
type = RemoveExplod
trigger1 = movecontact
trigger2 = movehit
trigger3 = moveguarded
trigger4 = time >= 60
id = 889993

[State 889993]
type = Destroyself
trigger1 = movecontact
trigger2 = movehit
trigger3 = moveguarded
trigger4 = time >= 60

;-------------------------------------
;NW Grenadier chase opponent
[Statedef 890000]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890000, VarSet]
Type = VarSet
Trigger1 = 1
fvar(7) = (EnemyNear(0), Pos X - Pos X) * Facing

[State 890000, turn]
type = turn
trigger1 = P2Dist X < 0
trigger1 = Vel X < 2

[State 890000, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889973
;ignorehitpause = 1

[State 890000, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890001
;ignorehitpause = 1

[State 890000, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890002
;ignorehitpause = 1

[State 890000, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890004
;ignorehitpause = 1

[State 890000, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890010
;ignorehitpause = 1

[State 890000, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890014
;ignorehitpause = 1

[State 890000, Walk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(7)
anim = F80120
ID = 890000
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 190,190,190
ownpal = 1
removeongethit = 0
persistent = 0

[State 890000, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = P2BodyDist X != [-20,20]
x = 2

[State 890000, stop]
type = VelSet
trigger1 = P2BodyDist X = [-20,20];<= 170
x = 0

[State 890000, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890000, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890000, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890004
;ignorehitpause = 1

[State 890000, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890000, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890000, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 890004
ctrl = 0

[State 890000, StockSmash]
type = ChangeState
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(889975)
value = 890014
ctrl = 0

[State 890000, ShootGrenade]
type = ChangeState
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(889975)
value = 890010
ctrl = 0

[State 890000, Stance]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(889975)
value = 889973
ctrl = 0

;-------------------------------------
;NW Grenadier chase root
[Statedef 890001]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890001, VarSet]
Type = VarSet
Trigger1 = 1
fvar(1) = (root, Pos X - Pos X) * Facing

[State 890001, turn]
type = turn
trigger1 = RootDist X < 0
trigger1 = Vel X < 2

[State 890001, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890000
;ignorehitpause = 1

[State 890001, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890002
;ignorehitpause = 1

[State 890001, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889973
;ignorehitpause = 1

[State 890001, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890004
;ignorehitpause = 1

[State 890001, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890010
;ignorehitpause = 1

[State 890001, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890014
;ignorehitpause = 1

[State 890001, RiflemanLeftWalk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(1)
anim = F80120
ID = 890001
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890001, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = RootDist X !=[-20,20]
x = 2

[State 890001, stop]
type = VelSet
trigger1 = RootDist X =[-20,20];<= 170
x = 0

[State 890001, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890001, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890001, HitOverride] ;light React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890004
;ignorehitpause = 1

[State 890001, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890001, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890001, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 890004
ctrl = 0

[State 890001, StockSmash]
type = ChangeState
trigger1 = rootdist X =[-20,20]
trigger1 = life >= 1
trigger1 = numhelper(889975)
value = 890014
ctrl = 0

[State 890001, ShootGrenade]
type = ChangeState
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(889975)
value =890010
ctrl = 0

[State 890001, Stance]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(889975)
value = 889973
ctrl = 0

;-------------------------------------
;NW Grenadier walking
[Statedef 890002]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890002, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889973
;ignorehitpause = 1

[State 890002, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890000
;ignorehitpause = 1

[State 890002, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890001
;ignorehitpause = 1

[State 890002, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890004
;ignorehitpause = 1

[State 890002, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890014
;ignorehitpause = 1

[State 890002, RiflemanLeftWalk]
type = Explod
trigger1 = time = 0
anim = F80120
ID = 890002
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890002, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890002, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890002, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890004
;ignorehitpause = 1

[State 890002, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890002, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890002, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 890004
ctrl = 0

[State 890002, velset]
type = VelSet
trigger1 = Time >= 0
x = -2

[State 890002, stance]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(889975)
value = 889973
ctrl = 0

;--------------------------------
;NW Grenadier Hit react
[Statedef 890004]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890004, PosSet]
type = PosSet
trigger1 = time = 0
y = -3
ignorehitpause = 1
;persistent =

[State 890004, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890000
;ignorehitpause = 1

[State 890004, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890001
;ignorehitpause = 1

[State 890004, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890002
;ignorehitpause = 1

[State 890004, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889973
;ignorehitpause = 1

[State 890004, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890010
;ignorehitpause = 1

[State 890004, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890014
;ignorehitpause = 1

[State 890004, NWGrenadierHitReact]
type = Explod
trigger1 = time = 0
anim = F80126
ID = 890004
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 890004, VelSet]
type = VelSet
trigger1 = 1
x = -3
ignorehitpause = 1
;;persistent =

[State 890004, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890004, watersplashjump]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80100
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 18
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890004, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 890004, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 890004, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 890005
ctrl = 0
ignorehitpause = 1

;--------------------------------
;NW Grenadier dead
[Statedef 890005]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;Invisible
velset = 0,0
juggle = 1

[State 890005, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890004
;ignorehitpause = 1

[State 890005, NWGrenadierDead]
type = Explod
trigger1 = time = 0
anim = F80127
;ID = 889980
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 890005, watersplashfall]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80101
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 25
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890005, BigSplash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F93,random%2

[State 890005, DestroySelf]
type = DestroySelf
trigger1 = time >= 55
ignorehitpause = 1

;-------------------------------------
;NW Grenadier shooting
[Statedef 890010]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
velset = 0,0
ctrl = 0

[State 890010, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889973
;ignorehitpause = 1

[State 890010, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890000
;ignorehitpause = 1

[State 890010, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890001
;ignorehitpause = 1

[State 890010, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890002
;ignorehitpause = 1

[State 890010, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890014
;ignorehitpause = 1

[State 890010, RiflemanShoot]
type = Explod
trigger1 = time = 0
anim = F80119
ID = 890010
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
;persistent = 0

[State 890010, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890010, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890010, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890004
;ignorehitpause = 1

[State 890010, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890010, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890010, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 890004
ctrl = 0

[State 890010, GrenadierGrenade]
type = Helper
;trigger1 = NumHelper(890012) = 0
trigger1 = time = 70
helpertype = normal ;player
name = "GrenadierGrenade1"
ID = 890012
stateno = 890012
pos = 25,-73
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
;ignorehitpause = 1

[State 890010, LauncherReload]
type = PlaySnd
trigger1 = time = 11
value = F91,1

[State 890010, stance]
type = ChangeState
trigger1 = time >= 100
trigger1 = numhelper(889975)
value = 889973
ctrl = 0

;----------------------------------------
;Grenadier Grenade
[Statedef 890012]
type = A
movetype = A
physics = N
anim = 889384 ;hitbox
ctrl = 0
sprpriority = 19
juggle = 1

[State 890012, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 889384

[State 890012, Grenade]
type = Explod
trigger1 = time = 0
anim = F80121
ID = 890012
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 890012, GrenadeFired]
type = PlaySnd
trigger1 = time = 0
value = F91,0

[State 890012, HitDef]
type = HitDef
trigger1 = !time
attr = S, NP
animtype  = light
damage    = 75,13
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MAF
guardflag = MA
;priority = 4, Miss
pausetime = 5,5
sparkno = 80118
sparkxy = 0,0
hitsound   = F37,0
guardsound = F86,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,0
guard.slidetime = 19
guard.hittime = 19
;airguard.velocity = 0
guard.velocity = -4
air.velocity = -4,-5
;air.fall = 1
p2stateno = 889300
;fall.recovertime = 8
;ID = 889169
;nochainID = 889169
;Attack.Dist = 0

[State 890012, velset]
type=velset
trigger1= time = 0
x=2.5
y=-5

[State 890012, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.17
;ignorehitpause =
;persistent =

[State 890012, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890012, RemoveGrenade]
type = RemoveExplod
trigger1 = movecontact
trigger2 = movehit
trigger3 = moveguarded
;trigger4 = time >= 0
id = 890012

[State 890012]
type = Destroyself
trigger1 = movecontact
trigger2 = movehit
trigger3 = moveguarded
;trigger4 = time >= 0

[State 890012, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
value = 890013
ctrl = 0

;----------------------------------------
;Grenadier Grenade hit floor
[Statedef 890013]
type = S
movetype = A
physics = S
anim = 889389 ;hitbox
velset = 0,0
ctrl = 0
sprpriority = 19
juggle = 1

[State 890013, RemoveKnife]
type = RemoveExplod
trigger1 = time >= 0
id = 890012

[State 890013, Explode]
type = Explod
trigger1 = time = 0
anim = F80118
;ID = 889994
pos = 0,-13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 58
scale = 1.1,1.1
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 890013, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 75,13
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MAD
guardflag = ;Unblockable
pausetime = 5,5
sparkno = -1
sparkxy = 0,0
hitsound   = F31,random%3
;guardsound = S2, 6
;guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,-7
guard.slidetime = 11
guard.hittime = 11
airguard.velocity = 0
guard.velocity = 0
air.velocity = -4,-5
air.fall = 1
p2stateno = 889304
;ID = 889169
;nochainID = 889169
Attack.Dist = 0

[State 890013, explode]
type = PlaySnd
trigger1 = time = 0
value = F37,0

[State 890013]
type = Destroyself
trigger1 = time >= 60

;-------------------------------------------------------------
;NW Greandier Stock Smash
[Statedef 890014]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889385 ;hitbox

[State 890014, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889973
;ignorehitpause = 1

[State 890014, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890000
;ignorehitpause = 1

[State 890014, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890001
;ignorehitpause = 1

[State 890014, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890002
;ignorehitpause = 1

[State 890014, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890010
;ignorehitpause = 1

[State 890014, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890014, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890014, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890004
;ignorehitpause = 1

[State 890014, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
animtype = Medium
damage = 60,5
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89127
sparkxy = -10,-50
hitsound = F69,1
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -3
ground.cornerpush.veloff = -1

[State 890014, NWGreandierStockSmash]
type = Explod
trigger1 = time = 0
anim = F80122
ID = 890014
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 890014, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890014, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890014, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(889975)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(889975)
value = 890004
ctrl = 0

[State 890014, Woosh]
type = PlaySnd
trigger1 = time = 4
value = F81,2

[State 890014, Stance]
type = ChangeState
Trigger1 = Time >= 41
value = 889973
ctrl = 0

;--------------------------------
;NW Dog Hit react
[Statedef 890016]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890016, PosSet]
type = PosSet
trigger1 = time = 0
y = -3
ignorehitpause = 1
;persistent =

[State 890016, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 889974
;ignorehitpause = 1

[State 890016, NWDogHitReact]
type = Explod
trigger1 = time = 0
anim = F80130
ID = 890016
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 890016, VelSet]
type = VelSet
trigger1 = 1
x = -3
ignorehitpause = 1
;;persistent =

[State 890016, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890016, watersplashjump]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80100
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 18
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 889974, Hurt]
type = PlaySnd
trigger1 = time = 0
value = F95,1

[State 890016, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 890016, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 890017
ctrl = 0
ignorehitpause = 1

;--------------------------------
;NW Dog dead
[Statedef 890017]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;Invisible
velset = 0,0
juggle = 1

[State 890017, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890016
;ignorehitpause = 1

[State 890017, NWDogDead]
type = Explod
trigger1 = time = 0
anim = F80131
;ID = 889980
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 890017, watersplashfall]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80101
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 25
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890017, BigSplash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F93,random%2

[State 890017, DestroySelf]
type = DestroySelf
trigger1 = time >= 55
ignorehitpause = 1

;--------------------------------------------------
;Ninja Warrior Spawner "Sewers stage 5" Right
[Statedef 890021]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 0
sprpriority = -2

[State 890021, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890021, NinjaWarriorRight]
type = Helper
triggerall = RoundState = 2
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5" || stagevar(info.name) = "Ninja Warriors Stage 1"
trigger1 = (GameTime % 100) = random%27
trigger1 = teamside = 2
trigger1 = Numhelper(890025) = 0 ;Numhelper and ID have to be the same
trigger2 = stagevar(info.name) = "Ninja Warriors Stage 2" || stagevar(info.name) = "Ninja Warriors Stage 3"
trigger2 = (GameTime % 100) = random%27
trigger2 = teamside = 2
trigger2 = Numhelper(890025) = 0 ;Numhelper and ID have to be the same
trigger3 = stagevar(info.name) = "Ninja Warriors Stage 4" || stagevar(info.name) = "Ninja Warriors Stage 6"
trigger3 = (GameTime % 100) = random%27
trigger3 = teamside = 2
trigger3 = Numhelper(890025) = 0
Pos = 0,0
name = "NWsoildersRight"
stateno = 890022 + random%4
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890025
;size.xscale = 2
;size.yscale = 2

[State 890021, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 890021
ctrl = 0

;--------------------------------
;NW Rifleman Right Stance
[Statedef 890022]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889383 ;HitBox
velset = 0,0
juggle = 1

[State 890022, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 890022, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890035
;ignorehitpause = 1

[State 890022, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890036
;ignorehitpause = 1

[State 890022, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890037
;ignorehitpause = 1

[State 890022, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890038
;ignorehitpause = 1

[State 890022, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890040
;ignorehitpause = 1

[State 890022, Stance]
type = Explod
trigger1 = time = 0
trigger1 = NumExplod(890022) = 0
anim = F80112
ID = 890022
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890022, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890022, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890022, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890038
;ignorehitpause = 1

[State 890022, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890022, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890022, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890038
ctrl = 0

[State 890022, watersplashIdle]
type = Explod
trigger1 = NumExplod(890029) = 0
trigger1 = Pos Y = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80099
ID =890029
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890022, WalkAway]
type = ChangeState
triggerall = time >25
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[-20,20]
trigger2 = numhelper(890025)
value = 890035 + random%3
ctrl = 0

[State 890022, ShootRifle]
type = ChangeState
triggerall = time >20
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(890025)
value = 890040 + random%2
ctrl = 0

[State 890022, stance]
type = ChangeState
trigger1 = (GameTime % 80) = random%27
trigger1 = numhelper(890025)
value = 890035 + random%3
ctrl = 0

;--------------------------------
;NW Grenadier Right Stance
[Statedef 890023]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889383 ;HitBox
velset = 0,0
juggle = 1

[State 890023, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 890023, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890050
;ignorehitpause = 1

[State 890023, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890051
;ignorehitpause = 1

[State 890023, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890052
;ignorehitpause = 1

[State 890023, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890054
;ignorehitpause = 1

[State 890023, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890060
;ignorehitpause = 1

[State 890023, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890064
;ignorehitpause = 1

[State 890023, Stance]
type = Explod
trigger1 = time = 0
trigger1 = NumExplod(890023) = 0
anim = F80123
ID = 890023
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890023, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890023, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890023, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890054
;ignorehitpause = 1

[State 890023, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890023, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890023, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890054
ctrl = 0

[State 890023, watersplashIdle]
type = Explod
trigger1 = NumExplod(890029) = 0
trigger1 = Pos Y = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80099
ID =890029
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890023, StockSmash]
type = ChangeState
triggerall = time >25
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[-20,20]
trigger2 = numhelper(890025)
value = 890064
ctrl = 0

[State 890023, ShootGrenade]
type = ChangeState
triggerall = time >65
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(890025)
value = 890060
ctrl = 0

[State 890023, Walk]
type = ChangeState
trigger1 = (GameTime % 80) = random%27
trigger1 = numhelper(890025)
value = 890050 + random%3
ctrl = 0

;--------------------------------
;NW Dog Right Run
[Statedef 890024]
type    = S
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889388 ;HitBox
velset = 0,0
juggle = 1

[State 890024, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 890024, Turn]
type = Turn
trigger1 = time = 0
;ignorehitpause =
persistent = 0

[State 890024, Running]
type = Explod
trigger1 = time = 0
trigger1 = NumExplod(890024) = 0
anim = F80129
ID = 890024
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890024, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890024, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 890024, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890066
ignorehitpause = 1

[State 890024, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890024, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890024, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890066
ctrl = 0

[State 890024, watersplashIdle]
type = Explod
trigger1 = NumExplod(890029) = 0
trigger1 = Pos Y = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80099
ID =890029
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890024, HitDef]
type = HitDef
trigger1 = !time
attr = C, SP
animtype = medium
damage = 60,7
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89182
sparkxy = -20,-35
hitsound = F95,2
guardsound = F86,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 18
ground.velocity = -5
air.velocity = -2.9,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 890024, PlaySnd]
type = PlaySnd
triggerall = time >=0
trigger1 = P2BodyDist X =[-160,170]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[-160,170]
trigger2 = numhelper(890025)
value = F95,0
persistent = 0

[State 890024, VelSet]
type = VelSet
trigger1 = time >=0
x = -3.5
;ignorehitpause =
;persistent =

[State 890024, RemoveExplod]
type = RemoveExplod
trigger1 = time >=699
id = 890024
;ignorehitpause = 1

[State 890024, DestroySelf]
type = DestroySelf
trigger1 = time >=700
;ignorehitpause =
;persistent =

;--------------------------------
;NW Soldier Right Stance
[Statedef 890025]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889383 ;HitBox
velset = 0,0
juggle = 1

[State 890025, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 890025, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890026
;ignorehitpause = 1

[State 890025, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890027
;ignorehitpause = 1

[State 890025, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890028
;ignorehitpause = 1

[State 890025, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890030
;ignorehitpause = 1

[State 890025, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890032
;ignorehitpause = 1

[State 890025, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890033
;ignorehitpause = 1

[State 890025, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890034
;ignorehitpause = 1

[State 890025, Stance]
type = Explod
trigger1 = time = 0
trigger1 = NumExplod(890025) = 0
anim = F80108
ID = 890025
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890025, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890025, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890025, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890030
;ignorehitpause = 1

[State 890025, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890025, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890025, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890030
ctrl = 0

[State 890025, watersplashIdle]
type = Explod
trigger1 = NumExplod(890029) = 0
trigger1 = Pos Y = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80099
ID =890029
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890025, watersplashjumpLand]
type = Explod
trigger1 = time = 0
trigger1 = PrevStateNo = 890033
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80102
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 14
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890025, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = PrevStateNo = 890033
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,1

[State 890025, Stab]
type = ChangeState
triggerall = time >25
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[-20,20]
trigger2 = numhelper(890025)
value = 890032
ctrl = 0

[State 890025, JumpKickorSlideKnife]
type = ChangeState
triggerall = time >20
trigger1 = P2BodyDist X =[90,100]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[90,100]
trigger2 = numhelper(890025)
value = 890033 + random%2
ctrl = 0

[State 890025, stance]
type = ChangeState
trigger1 = (GameTime % 80) = random%27
trigger1 = numhelper(890025)
value = 890025 + random%4
ctrl = 0

;-------------------------------------
;NWsoldier chase opponent
[Statedef 890026]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890026, VarSet]
Type = VarSet
Trigger1 = 1
fvar(10) = (EnemyNear(0), Pos X - Pos X) * Facing

[State 890026, turn]
type = turn
trigger1 = P2Dist X < 0
trigger1 = Vel X < 2

[State 890026, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890025
;ignorehitpause = 1

[State 890026, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890027
;ignorehitpause = 1

[State 890026, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890028
;ignorehitpause = 1

[State 890026, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890030
;ignorehitpause = 1

[State 890026, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890032
;ignorehitpause = 1

[State 890026, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890034
;ignorehitpause = 1

[State 890026, Walk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(10)
anim = F80106
ID = 890026
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 190,190,190
ownpal = 1
removeongethit = 0
persistent = 0

[State 890026, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = P2BodyDist X != [-20,20]
x = 2

[State 890026, stop]
type = VelSet
trigger1 = P2BodyDist X = [-20,20];<= 170
x = 0

[State 890026, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890026, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890026, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890030
;ignorehitpause = 1

[State 890026, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890026, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890026, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890030
ctrl = 0

[State 890026, ChangeState]
type = ChangeState
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(890025)
value = 890032
ctrl = 0

[State 890026, JumpKickorSlideKnife]
type = ChangeState
trigger1 = P2BodyDist X =[90,100]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[90,100]
trigger2 = numhelper(890025)
value = 890033 + random%2
ctrl = 0

[State 890026, Stance]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(890025)
value = 890025
ctrl = 0

;-------------------------------------
;NWSoldier chase root
[Statedef 890027]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890027, VarSet]
Type = VarSet
Trigger1 = 1
fvar(11) = (root, Pos X - Pos X) * Facing

[State 890027, turn]
type = turn
trigger1 = RootDist X < 0
trigger1 = Vel X < 2

[State 890027, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890025
;ignorehitpause = 1

[State 890027, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890026
;ignorehitpause = 1

[State 890027, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890028
;ignorehitpause = 1

[State 890027, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890030
;ignorehitpause = 1

[State 890027, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890032
;ignorehitpause = 1

[State 890027, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890034
;ignorehitpause = 1

[State 890027, SoldierLeftWalk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(11)
anim = F80106
ID = 890027
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890027, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = RootDist X !=[-20,20]
x = 2

[State 890027, stop]
type = VelSet
trigger1 = RootDist X =[-20,20];<= 170
x = 0

[State 890027, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890027, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890027, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890030
;ignorehitpause = 1

[State 890027, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890027, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890027, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890030
ctrl = 0

[State 890027, Stab]
type = ChangeState
trigger1 = rootdist X =[-20,20]
trigger1 = life >= 1
trigger1 = numhelper(890025)
value = 890032
ctrl = 0

[State 890027, JumpKickorSlideKnife]
type = ChangeState
trigger1 = P2BodyDist X =[90,100]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[90,100]
trigger2 = numhelper(890025)
value = 890033 + random%2
ctrl = 0

[State 890027, Stance]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(890025)
value = 890025
ctrl = 0

;-------------------------------------
;NW Soldier walking
[Statedef 890028]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890028, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890025
;ignorehitpause = 1

[State 890028, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890026
;ignorehitpause = 1

[State 890028, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890027
;ignorehitpause = 1

[State 890028, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890030
;ignorehitpause = 1

[State 890028, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890032
;ignorehitpause = 1

[State 890028, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890034
;ignorehitpause = 1

[State 890028, NWSoldierWalk]
type = Explod
trigger1 = time = 0
anim = F80106
ID = 890028
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890028, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890028, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890028, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890030
;ignorehitpause = 1

[State 890028, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890028, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890028, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890030
ctrl = 0

[State 890028, velset]
type = VelSet
trigger1 = Time >= 0
x = -2

[State 890028, stance]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(890025)
value = 890025
ctrl = 0

;--------------------------------
;NW Soldier Hit react
[Statedef 890030]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890030, PosSet]
type = PosSet
trigger1 = time = 0
y = -3
ignorehitpause = 1
;persistent =

[State 890030, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890025
;ignorehitpause = 1

[State 890030, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890026
;ignorehitpause = 1

[State 890030, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890027
;ignorehitpause = 1

[State 890030, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890028
;ignorehitpause = 1

[State 890030, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890029
;ignorehitpause = 1

[State 890030, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890032
;ignorehitpause = 1

[State 890030, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890033
;ignorehitpause = 1

[State 890030, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890034
;ignorehitpause = 1

[State 890030, NWSoilderHitReact]
type = Explod
trigger1 = time = 0
anim = F80109
ID = 890030
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 890030, VelSet]
type = VelSet
trigger1 = 1
x = -3
ignorehitpause = 1
;;persistent =

[State 890030, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890030, watersplashjump]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80100
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 18
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890030, KnifeSpawn]
type = Helper
trigger1 = time = 5
trigger1 = numhelper(9100) <5
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size = 1,1
;ignorehitpause =
persistent = 0

[State 890030, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 890030, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 890030, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 890031
ctrl = 0
ignorehitpause = 1

;--------------------------------
;NW Soldier dead
[Statedef 890031]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;Invisible
velset = 0,0
juggle = 1

[State 890031, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890025
;ignorehitpause = 1

[State 889981, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890030
;ignorehitpause = 1

[State 890031, NWSoilderDead]
type = Explod
trigger1 = time = 0
anim = F80110
;ID = 889980
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 890031, watersplashfall]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80101
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 25
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890031, BigSplash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F93,random%2

[State 890031, DestroySelf]
type = DestroySelf
trigger1 = time >= 55
ignorehitpause = 1

;-------------------------------------------------------------
;Ninja Warrior Soldier Knife Attack
[Statedef 890032]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889381 ;hitbox

[State 890032, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890025
;ignorehitpause = 1

[State 890032, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890026
;ignorehitpause = 1

[State 890032, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890027
;ignorehitpause = 1

[State 890032, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890028
;ignorehitpause = 1

[State 890032, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890030
;ignorehitpause = 1

[State 890032, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890034
;ignorehitpause = 1

[State 890032, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890032, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890032, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890030
;ignorehitpause = 1

[State 890032, HitDef]
type = HitDef
trigger1 = animelem = 1
attr = S, NA
animtype = Medium
damage = 30,3
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89182
sparkxy = -10,-50
hitsound = F32,random%4
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 890032, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype = Medium
damage = 35,3
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89182
sparkxy = -10,-50
hitsound = F32,random%4
guardsound = F86,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 890032, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
animtype = Medium
damage = 55,5
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 13,13
sparkno = 89182
sparkxy = -10,-60
hitsound = F32,random%4
guardsound = F86,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 890032, NWSoilderStab]
type = Explod
trigger1 = time = 0
anim = F80107
ID = 890032
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 890032, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890032, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890032, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890030
ctrl = 0

[State 890032, Woosh]
type = PlaySnd
trigger1 = time = 0 || time = 20
value = F81,2

[State 890032, Stance]
type = ChangeState
Trigger1 = Time >= 41
value = 890025
ctrl = 0

;-------------------------------------------------------------
;Ninja Warrior Soldier Jump Kick
[Statedef 890033]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 889382 ;hitbox

[State 890033, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890025
;ignorehitpause = 1

[State 890033, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890026
;ignorehitpause = 1

[State 890033, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890027
;ignorehitpause = 1

[State 890033, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890028
;ignorehitpause = 1

[State 890033, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890029
;ignorehitpause = 1

[State 890033, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890030
;ignorehitpause = 1

[State 890033, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890034
;ignorehitpause = 1

[State 890033, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890033, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890033, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890030
;ignorehitpause = 1

[State 890033, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype = Medium
damage = 55,4
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89172
sparkxy = -10,-43
hitsound = F69,1
guardsound = F86,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -7
air.velocity = -3,-4

[State 890033, NWJumpKick]
type = Explod
trigger1 = time = 0
anim = F80111
ID = 890033
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 890033, watersplashjump]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80100
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 18
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890033, Woosh]
type = PlaySnd
trigger1 = time = 10
value = F81,2

[State 890033, VelSet]
type = VelSet
trigger1 = time = 0
x = 3
y = -7
ignorehitpause = 1
;;persistent =

[State 890033, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890033, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890033, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890033, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890030
ctrl = 0

[State 890033, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 890033, Stance]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 890025
ctrl = 0
ignorehitpause = 1

;-------------------------------------------------------------
;Ninja Warrior Soldier Slide Attack
[Statedef 890034]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889386 ;hitbox

[State 890034, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890025
;ignorehitpause = 1

[State 890034, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890026
;ignorehitpause = 1

[State 890034, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890027
;ignorehitpause = 1

[State 890034, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890028
;ignorehitpause = 1

[State 890034, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890029
;ignorehitpause = 1

[State 890034, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890030
;ignorehitpause = 1

[State 890034, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890034, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890034, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890030
;ignorehitpause = 1

[State 890034, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
animtype = Medium
damage = 30,3
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89182
sparkxy = -10,-50
hitsound = F32,random%4
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 890034, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
animtype = Medium
damage = 35,3
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89182
sparkxy = -10,-50
hitsound = F32,random%4
guardsound = F86,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 890034, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = C, NA
animtype = Medium
damage = 55,5
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 13,13
sparkno = 89182
sparkxy = -10,-60
hitsound = F32,random%4
guardsound = F86,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 890034, NWStab1]
type = Explod
trigger1 = time = 0
anim = F80124
ID = 890034
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 890034, watersplashSlide]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80101
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 25
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 1

[State 890034, WaterSlide]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F64,0

[State 890034, KnifeSlash]
type = PlaySnd
trigger1 = time = 0
value = F62,0

[State 890034, VelSet]
type = VelSet
trigger1 = time = 0
x = 11
ignorehitpause = 1
;;persistent =

[State 890034, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890034, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890034, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890030
ctrl = 0

[State 890034, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 890034, Stance]
type = ChangeState
trigger1 = time >=150
value = 890025
ctrl = 0
ignorehitpause = 1

;-------------------------------------
;NW Rifleman chase opponent
[Statedef 890035]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890035, VarSet]
Type = VarSet
Trigger1 = 1
fvar(8) = (EnemyNear(0), Pos X - Pos X) * Facing

[State 890035, turn]
type = turn
trigger1 = P2Dist X < 0
trigger1 = Vel X < 2

[State 890035, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890022
;ignorehitpause = 1

[State 890035, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890036
;ignorehitpause = 1

[State 890035, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890037
;ignorehitpause = 1

[State 890035, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890038
;ignorehitpause = 1

[State 890035, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890040
;ignorehitpause = 1

[State 890035, Walk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(8)
anim = F80114
ID = 890035
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 190,190,190
ownpal = 1
removeongethit = 0
persistent = 0

[State 890035, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = P2BodyDist X != [-20,20]
x = 2

[State 890035, stop]
type = VelSet
trigger1 = P2BodyDist X = [-20,20];<= 170
x = 0

[State 890035, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890035, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890035, HitOverride] ;light React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890038
;ignorehitpause = 1

[State 890035, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890035, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890035, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890038
ctrl = 0

[State 890035, WalkAway]
type = ChangeState
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(890025)
value = 890035 + random%3
ctrl = 0

[State 890035, ShootRifle]
type = ChangeState
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(889975)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(890025)
value = 890040 + random%2
ctrl = 0

[State 890035, Stance]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(890025)
value = 890022
ctrl = 0

;-------------------------------------
;NW Rifleman chase root
[Statedef 890036]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890036, VarSet]
Type = VarSet
Trigger1 = 1
fvar(9) = (root, Pos X - Pos X) * Facing

[State 890036, turn]
type = turn
trigger1 = RootDist X < 0
trigger1 = Vel X < 2

[State 890036, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890022
;ignorehitpause = 1

[State 890036, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890035
;ignorehitpause = 1

[State 890036, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890037
;ignorehitpause = 1

[State 890036, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890038
;ignorehitpause = 1

[State 890036, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890040
;ignorehitpause = 1

[State 890036, RiflemanLeftWalk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(9)
anim = F80114
ID = 890036
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890036, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = RootDist X !=[-20,20]
x = 2

[State 890036, stop]
type = VelSet
trigger1 = RootDist X =[-20,20];<= 170
x = 0

[State 890036, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890036, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890036, HitOverride] ;light React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890038
;ignorehitpause = 1

[State 890036, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890036, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890036, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890038 ;+ random%8
ctrl = 0

[State 890036, RunAway]
type = ChangeState
trigger1 = rootdist X =[-20,20]
trigger1 = life >= 1
trigger1 = numhelper(890025)
value = 890035 + random%3
ctrl = 0

[State 890036, ShootRifle]
type = ChangeState
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(890025)
value = 890040 + random%2
ctrl = 0

[State 890036, Stance]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(890025)
value = 890022
ctrl = 0

;-------------------------------------
;NW Rifleman walking
[Statedef 890037]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890037, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890022
;ignorehitpause = 1

[State 890037, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890035
;ignorehitpause = 1

[State 890037, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890036
;ignorehitpause = 1

[State 890037, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890038
;ignorehitpause = 1

[State 890037, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890040
;ignorehitpause = 1

[State 890037, RiflemanLeftWalk]
type = Explod
trigger1 = time = 0
anim = F80114
ID = 890037
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890037, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890037, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890037, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890038
;ignorehitpause = 1

[State 890037, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890037, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890037, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890038
ctrl = 0

[State 890037, velset]
type = VelSet
trigger1 = Time >= 0
x = -2

[State 890037, stance]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(890025)
value = 890022
ctrl = 0

;--------------------------------
;NW Rifleman Hit react
[Statedef 890038]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890038, PosSet]
type = PosSet
trigger1 = time = 0
y = -3
ignorehitpause = 1
;persistent =

[State 890038, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890022
;ignorehitpause = 1

[State 890038, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890029
;ignorehitpause = 1

[State 890038, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890035
;ignorehitpause = 1

[State 890038, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890036
;ignorehitpause = 1

[State 890038, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890037
;ignorehitpause = 1

[State 890038, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890040
;ignorehitpause = 1

[State 890038, NWRiflemanHitReact]
type = Explod
trigger1 = time = 0
anim = F80115
ID = 890038
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 890038, VelSet]
type = VelSet
trigger1 = 1
x = -3
ignorehitpause = 1
;;persistent =

[State 890038, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890038, watersplashjump]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80100
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 18
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890038, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 890038, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 890038, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 890039
ctrl = 0
ignorehitpause = 1

;--------------------------------
;NW Rifleman dead
[Statedef 890039]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;Invisible
velset = 0,0
juggle = 1

[State 890039, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890038
;ignorehitpause = 1

[State 890039, NWRiflemanDead]
type = Explod
trigger1 = time = 0
anim = F80116
;ID = 889980
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 890039, watersplashfall]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80101
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 25
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890039, BigSplash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F93,random%2

[State 890039, DestroySelf]
type = DestroySelf
trigger1 = time >= 55
ignorehitpause = 1

;-------------------------------------
;NW Rifleman shooting
[Statedef 890040]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
velset = 0,0
ctrl = 0

[State 890040, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890022
;ignorehitpause = 1

[State 890040, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890035
;ignorehitpause = 1

[State 890040, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890036
;ignorehitpause = 1

[State 890040, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890037
;ignorehitpause = 1

[State 890040, RiflemanShoot]
type = Explod
trigger1 = time = 0
anim = F80113
ID = 890040
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890040, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890040, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890040, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890038
;ignorehitpause = 1

[State 890040, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890040, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890040, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890038
ctrl = 0

[State 890040, RiflemanBullet]
type = Helper
trigger1 = NumHelper(890043) = 0
trigger1 = time = 37
;trigger1 = rootdist x = [25,550]
;trigger2 = NumHelper(889993) = 0
;trigger1 = time = 13
;trigger2 = P2dist x = [25,550]
helpertype = normal ;player
name = "RiflemanBullet1"
ID = 890043
stateno = 890043
pos = 35,-68
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 890040, Riflecock]
type = PlaySnd
trigger1 = time = 1
value = F94,0

[State 890040, stance]
type = ChangeState
trigger1 = time = 90 ;(GameTime % 300) = random%27
trigger1 = numhelper(890025)
value = 890022
ctrl = 0

;-------------------------------------
;NW Rifleman shooting Crouching
[Statedef 890041]
type = S
movetype = I
physics = N
anim = 889387 ;Hitbox
velset = 0,0
ctrl = 0

[State 890041, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890022
;ignorehitpause = 1

[State 890041, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890035
;ignorehitpause = 1

[State 890041, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890036
;ignorehitpause = 1

[State 890041, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890037
;ignorehitpause = 1

[State 890041, RiflemanShoot]
type = Explod
trigger1 = time = 0
anim = F80128
ID = 890040
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890041, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890041, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890041, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890038
;ignorehitpause = 1

[State 890041, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890041, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890041, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 889988
ctrl = 0

[State 890041, RiflemanBullet]
type = Helper
trigger1 = time = 52
helpertype = normal ;player
name = "RiflemanBullet1"
ID = 889993
stateno = 889993
pos = 36,-47
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 889991, Riflecock]
type = PlaySnd
trigger1 = time = 18
value = F94,0

[State 889991, stance]
type = ChangeState
trigger1 = time = 90
trigger1 = numhelper(890025)
value = 890022
ctrl = 0

;----------------------------------------
;Rifleman Bullet
[Statedef 890043]
type = A
movetype = A
physics = N
anim = 889355 ;hitbox
ctrl = 0
sprpriority = 19
juggle = 1

[State 890043, Bullet]
type = Explod
trigger1 = time = 0
anim = F80117
ID = 890043
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 60
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 890043, BulletFired]
type = PlaySnd
trigger1 = time = 0
value = F80,0

[State 890043, HitDef]
type = HitDef
trigger1 = !time
attr = S, NP
animtype  = light
damage    = 50,6
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MA
guardflag = M
pausetime = 5,5
sparkno = 89182
sparkxy = 0,0
hitsound   = F32,3
guardsound = F49,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,0
guard.slidetime = 11
guard.hittime = 11
;airguard.velocity = 0
guard.velocity = -2
air.velocity = -4,-5
;air.fall = 1
;p2stateno = 889167
;fall.recovertime = 8
;ID = 889169
;nochainID = 889169
;Attack.Dist = 0

[State 890043, velset]
type=velset
trigger1=!time
x=13
y=0

[State 890043, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890043, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,SP,HP
time = 1

[State 890043, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,SP,HP
stateno = 890044

[State 890043, RemoveBullet]
type = RemoveExplod
trigger1 = movecontact
trigger2 = movehit
trigger3 = moveguarded
trigger4 = time >= 60
id = 890043

[State 890043]
type = Destroyself
trigger1 = movecontact
trigger2 = movehit
trigger3 = moveguarded
trigger4 = time >= 60

;----------------------------------------
;Rifleman Bullet hit react
[Statedef 890044]
type = A
movetype = H
physics = N
anim = 889355 ;hitbox
ctrl = 0
sprpriority = 19
juggle = 1

[State 890044, Bullet]
type = Explod
trigger1 = time = 0
anim = F80117
ID = 890044
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 890044, deflected]
type = PlaySnd
trigger1 = time = 0
value = F42,0

[State 890044, velset]
type=velset
trigger1=!time
x=-4
y=-4

[State 890044, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
ignorehitpause = 1
;persistent =

[State 890044, RemoveKnife]
type = RemoveExplod
trigger1 = time >= 50
id = 890044

[State 890044]
type = Destroyself
trigger1 = time >= 50

;-------------------------------------
;NW Grenadier chase opponent
[Statedef 890050]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890050, VarSet]
Type = VarSet
Trigger1 = 1
fvar(20) = (EnemyNear(0), Pos X - Pos X) * Facing

[State 890050, turn]
type = turn
trigger1 = P2Dist X < 0
trigger1 = Vel X < 2

[State 890050, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890023
;ignorehitpause = 1

[State 890050, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890051
;ignorehitpause = 1

[State 890050, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890052
;ignorehitpause = 1

[State 890050, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890054
;ignorehitpause = 1

[State 890050, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890060
;ignorehitpause = 1

[State 890050, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890064
;ignorehitpause = 1

[State 890050, Walk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(20)
anim = F80120
ID = 890050
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 190,190,190
ownpal = 1
removeongethit = 0
persistent = 0

[State 890050, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = P2BodyDist X != [-20,20]
x = 2

[State 890050, stop]
type = VelSet
trigger1 = P2BodyDist X = [-20,20];<= 170
x = 0

[State 890050, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890050, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890050, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890054
;ignorehitpause = 1

[State 890050, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890050, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890050, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890054
ctrl = 0

[State 890050, StockSmash]
type = ChangeState
trigger1 = P2BodyDist X =[-20,20]
trigger1 = numhelper(890025)
value = 890064
ctrl = 0

[State 890050, ShootGrenade]
type = ChangeState
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(890025)
value = 890060
ctrl = 0

[State 890050, Stance]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(890025)
value = 890023
ctrl = 0

;-------------------------------------
;NW Grenadier chase root
[Statedef 890051]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890051, VarSet]
Type = VarSet
Trigger1 = 1
fvar(21) = (root, Pos X - Pos X) * Facing

[State 890051, turn]
type = turn
trigger1 = RootDist X < 0
trigger1 = Vel X < 2

[State 890051, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890023
;ignorehitpause = 1

[State 890051, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890050
;ignorehitpause = 1

[State 890051, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890052
;ignorehitpause = 1

[State 890051, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890054
;ignorehitpause = 1

[State 890051, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890060
;ignorehitpause = 1

[State 890051, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890064
;ignorehitpause = 1

[State 890051, GrenadierRightWalk]
type = Explod
trigger1 = time = 0
Trigger1 = fvar(21)
anim = F80120
ID = 890051
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890051, velset]
type = VelSet
;trigger1 = Time >= 0
trigger1 = RootDist X !=[-20,20]
x = 2

[State 890051, stop]
type = VelSet
trigger1 = RootDist X =[-20,20];<= 170
x = 0

[State 890051, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890051, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890051, HitOverride] ;light React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890054
;ignorehitpause = 1

[State 890051, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890051, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890051, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890054
ctrl = 0

[State 890051, StockSmash]
type = ChangeState
trigger1 = rootdist X =[-20,20]
trigger1 = life >= 1
trigger1 = numhelper(890025)
value = 890064
ctrl = 0

[State 890051, ShootGrenade]
type = ChangeState
trigger1 = P2BodyDist X =[130,200]
trigger1 = numhelper(890025)
trigger2 = rootdist X =[130,200]
trigger2 = numhelper(890025)
value =890060
ctrl = 0

[State 890051, Stance]
type = ChangeState
trigger1 = (GameTime % 300) = random%27
trigger1 = numhelper(890025)
value = 890023
ctrl = 0

;-------------------------------------
;NW Grenadier walking
[Statedef 890052]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
ctrl = 0

[State 890052, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890023
;ignorehitpause = 1

[State 890052, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890050
;ignorehitpause = 1

[State 890052, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890051
;ignorehitpause = 1

[State 890052, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890054
;ignorehitpause = 1

[State 890052, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890060
;ignorehitpause = 1

[State 890052, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890064
;ignorehitpause = 1

[State 890052, GrenadierRightWalk]
type = Explod
trigger1 = time = 0
anim = F80120
ID = 890052
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890052, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890052, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890052, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890054
;ignorehitpause = 1

[State 890052, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890052, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890052, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890054
ctrl = 0

[State 890025, velset]
type = VelSet
trigger1 = Time >= 0
x = -2

[State 890025, stance]
type = ChangeState
trigger1 = (GameTime % 100) = random%27
trigger1 = numhelper(890025)
value = 890023
ctrl = 0

;--------------------------------
;NW Grenadier Hit react
[Statedef 890054]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890054, PosSet]
type = PosSet
trigger1 = time = 0
y = -3
ignorehitpause = 1
;persistent =

[State 890054, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890023
;ignorehitpause = 1

[State 890054, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890029
;ignorehitpause = 1

[State 890054, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890050
;ignorehitpause = 1

[State 890054, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890051
;ignorehitpause = 1

[State 890054, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890052
;ignorehitpause = 1

[State 890054, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890060
;ignorehitpause = 1

[State 890054, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890064
;ignorehitpause = 1

[State 890054, NWGrenadierHitReact]
type = Explod
trigger1 = time = 0
anim = F80126
ID = 890054
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 890054, VelSet]
type = VelSet
trigger1 = 1
x = -3
ignorehitpause = 1
;;persistent =

[State 890054, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890004, watersplashjump]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80100
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 18
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890054, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 890054, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 890054, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 890055
ctrl = 0
ignorehitpause = 1

;--------------------------------
;NW Grenadier dead
[Statedef 890055]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;Invisible
velset = 0,0
juggle = 1

[State 890055, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890023
;ignorehitpause = 1

[State 890055, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890054
;ignorehitpause = 1

[State 890055, NWGrenadierDead]
type = Explod
trigger1 = time = 0
anim = F80127
;ID = 889980
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 890055, watersplashfall]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80101
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 25
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890055, BigSplash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F93,random%2

[State 890055, DestroySelf]
type = DestroySelf
trigger1 = time >= 55
ignorehitpause = 1

;-------------------------------------
;NW Grenadier shooting
[Statedef 890060]
type = S
movetype = I
physics = N
anim = 889383 ;Hitbox
velset = 0,0
ctrl = 0

[State 890060, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890023
;ignorehitpause = 1

[State 890060, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890050
;ignorehitpause = 1

[State 890060, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890051
;ignorehitpause = 1

[State 890060, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890052
;ignorehitpause = 1

[State 890060, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890064
;ignorehitpause = 1

[State 890060, RiflemanShoot]
type = Explod
trigger1 = time = 0
anim = F80119
ID = 890060
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -2
shadow = 90,90,90
ownpal = 1
removeongethit = 0
persistent = 0

[State 890060, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890060, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890060, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890054
;ignorehitpause = 1

[State 890060, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890060, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890060, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890054
ctrl = 0

[State 890060, GrenadierGrenade]
type = Helper
;trigger1 = NumHelper(890012) = 0
trigger1 = time = 70
helpertype = normal ;player
name = "GrenadierGrenade1"
ID = 890062
stateno = 890062
pos = 25,-73
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 890060, LauncherReload]
type = PlaySnd
trigger1 = time = 11
value = F91,1

[State 890060, stance]
type = ChangeState
trigger1 = time >= 100
trigger1 = numhelper(890025)
value = 890023
ctrl = 0

;----------------------------------------
;Grenadier Grenade
[Statedef 890062]
type = A
movetype = A
physics = N
anim = 889384 ;hitbox
ctrl = 0
sprpriority = 19
juggle = 1

[State 890062, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 889384

[State 890062, Grenade]
type = Explod
trigger1 = time = 0
anim = F80121
ID = 890062
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 890062, GrenadeFired]
type = PlaySnd
trigger1 = time = 0
value = F91,0

[State 890062, HitDef]
type = HitDef
trigger1 = !time
attr = S, NP
animtype  = light
damage    = 75,13
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MAF
guardflag = MA
;priority = 4, Miss
pausetime = 5,5
sparkno = 80118
sparkxy = 0,0
hitsound   = F37,0
guardsound = F86,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,0
guard.slidetime = 19
guard.hittime = 19
;airguard.velocity = 0
guard.velocity = -4
air.velocity = -4,-5
;air.fall = 1
p2stateno = 889300
;fall.recovertime = 8
;ID = 889169
;nochainID = 889169
;Attack.Dist = 0

[State 890062, velset]
type=velset
trigger1= time = 0
x=2.5
y=-5

[State 890062, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.17
;ignorehitpause =
;persistent =

[State 890062, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890062, RemoveGrenade]
type = RemoveExplod
trigger1 = movecontact
trigger2 = movehit
trigger3 = moveguarded
;trigger4 = time >= 0
id = 890062

[State 890062]
type = Destroyself
trigger1 = movecontact
trigger2 = movehit
trigger3 = moveguarded
;trigger4 = time >= 0

[State 890062, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
value = 890063
ctrl = 0

;----------------------------------------
;Grenadier Greande hit floor
[Statedef 890063]
type = S
movetype = A
physics = S
anim = 889389 ;hitbox
velset = 0,0
ctrl = 0
sprpriority = 19
juggle = 1

[State 890063, RemoveKnife]
type = RemoveExplod
trigger1 = time >= 0
id = 890062

[State 890063, Explode]
type = Explod
trigger1 = time = 0
anim = F80118
;ID = 889994
pos = 0,-13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 58
scale = 1.1,1.1
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 890063, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 75,13
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MAD
guardflag = ;Unblockable
pausetime = 5,5
sparkno = -1
sparkxy = 0,0
hitsound   = F31,random%3
;guardsound = S2, 6
;guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,-7
guard.slidetime = 11
guard.hittime = 11
airguard.velocity = 0
guard.velocity = 0
air.velocity = -4,-5
air.fall = 1
p2stateno = 889304
;ID = 889169
;nochainID = 889169
Attack.Dist = 0

[State 890063, explode]
type = PlaySnd
trigger1 = time = 0
value = F37,0

[State 890063]
type = Destroyself
trigger1 = time >= 60

;-------------------------------------------------------------
;NW Greandier Stock Smash
[Statedef 890064]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889385 ;hitbox

[State 890064, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890023
;ignorehitpause = 1

[State 890064, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890050
;ignorehitpause = 1

[State 890064, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890051
;ignorehitpause = 1

[State 890064, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890052
;ignorehitpause = 1

[State 890064, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890060
;ignorehitpause = 1

[State 890064, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890064, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
;ignorehitpause = 1

[State 890064, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890054
;ignorehitpause = 1

[State 890064, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
animtype = Medium
damage = 60,5
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89127
sparkxy = -10,-50
hitsound = F69,1
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -3
ground.cornerpush.veloff = -1

[State 890064, NWGreandierStockSmash]
type = Explod
trigger1 = time = 0
anim = F80122
ID = 890064
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 890014, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890014, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890014, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890025)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890025)
value = 890054
ctrl = 0

[State 890014, Woosh]
type = PlaySnd
trigger1 = time = 4
value = F81,2

[State 890014, Stance]
type = ChangeState
Trigger1 = Time >= 41
value = 890023
ctrl = 0

;--------------------------------
;NW Dog Hit react
[Statedef 890066]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890066, PosSet]
type = PosSet
trigger1 = time = 0
y = -3
ignorehitpause = 1
;persistent =

[State 890066, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890024
;ignorehitpause = 1

[State 890066, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890029
;ignorehitpause = 1

[State 890066, NWDogHitReact]
type = Explod
trigger1 = time = 0
anim = F80130
ID = 890066
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 90,90,90
ownpal = 1
removeongethit = 0

[State 890066, VelSet]
type = VelSet
trigger1 = 1
x = -3
ignorehitpause = 1
;;persistent =

[State 890066, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890066, watersplashjump]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80100
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 18
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890066, Hurt]
type = PlaySnd
trigger1 = time = 0
value = F95,1

[State 890066, Splash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F92,0

[State 890066, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 890067
ctrl = 0
ignorehitpause = 1

;--------------------------------
;NW Dog dead
[Statedef 890067]
type    = S
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800  ;Invisible
velset = 0,0
juggle = 1

[State 890067, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890066
;ignorehitpause = 1

[State 890067, NWDogDead]
type = Explod
trigger1 = time = 0
anim = F80131
;ID = 889980
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 890067, watersplashfall]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
anim = F80101
;ID = 7448
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = 25
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0

[State 890067, BigSplash]
type = PlaySnd
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ninja Warriors Stage 5"
value = F93,random%2

[State 890067, DestroySelf]
type = DestroySelf
trigger1 = time >= 55
ignorehitpause = 1

;-------------------------------------
;TMNT Surf Board Mysterious Ocean Teamside 1
[Statedef 890075]
type = S
movetype = I
physics = N
anim = 9800 ;Hitbox
ctrl = 0

[State 890075, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
persistent = 0

[State 890075, BindToRoot]
type = BindToRoot
trigger1 = 1
;time = 1
;facing = 0
;pos = 0,0
ignorehitpause = 1
;persistent =

[State 890075, SurfBoard]
type = Explod
trigger1 = root,Pos Y >= -1
trigger1 = time >= 0
trigger1 = numexplod(890070)=0
anim = F80140
ID = 890070
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = -10
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;trans =
persistent = 1
supermovetime = 9999
pausemovetime = 9999

[State 890075, SurfBoardReflection]
type = Explod
trigger1 = root,Pos Y >= -1
trigger1 = time >= 0
trigger1 = numexplod(890071)=0
anim = F80142
ID = 890071
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = -30
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;trans =
persistent = 1
supermovetime = 9999
pausemovetime = 9999

[State 890075, RemoveExplod]
type = RemoveExplod
trigger1 = root,Pos Y < -1
id = 890070
ignorehitpause = 1
;persistent =

[State 890075, RemoveExplod]
type = RemoveExplod
trigger1 = root,Pos Y < -1
id = 890071
ignorehitpause = 1
;persistent =


[State 890075, SurfBoardJump]
type = Explod
trigger1 = root,Pos Y < 0
trigger1 = time >= 0
trigger1 = numexplod(890072)=0
anim = F80141
ID = 890072
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = -10
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;trans =
persistent = 1
supermovetime = 9999
pausemovetime = 9999

[State 890075, RemoveExplod]
type = RemoveExplod
trigger1 = root,Pos Y >= -1
id = 890072
ignorehitpause = 1
;persistent =

;-------------------------------------
;TMNT Surf Board Mysterious Ocean Teamside 2
[Statedef 890080]
type = S
movetype = I
physics = N
anim = 9800 ;Hitbox
ctrl = 0

[State 890080, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
persistent = 0

[State 890080, BindToRoot]
type = BindToRoot
trigger1 = 1
;time = 1
;facing = 0
;pos = 0,0
ignorehitpause = 1
;persistent =

[State 890080, SurfBoard]
type = Explod
trigger1 = root,Pos Y >= -1
trigger1 = time >= 0
trigger1 = numexplod(890080)=0
anim = F80137
ID = 890080
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = -10
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;trans =
persistent = 1
supermovetime = 9999
pausemovetime = 9999

[State 890080, SurfBoardReflection]
type = Explod
trigger1 = root,Pos Y >= -1
trigger1 = time >= 0
trigger1 = numexplod(890081)=0
anim = F80139
ID = 890081
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = -30
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;trans =
persistent = 1
supermovetime = 9999
pausemovetime = 9999

[State 890080, RemoveExplod]
type = RemoveExplod
trigger1 = root,Pos Y < -1
id = 890080
ignorehitpause = 1
;persistent =

[State 890080, RemoveExplod]
type = RemoveExplod
trigger1 = root,Pos Y < -1
id = 890081
ignorehitpause = 1
;persistent =


[State 890080, SurfBoardJump]
type = Explod
trigger1 = root,Pos Y < 0
trigger1 = time >= 0
trigger1 = numexplod(890082)=0
anim = F80138
ID = 890082
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = -10
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;trans =
persistent = 1
supermovetime = 9999
pausemovetime = 9999

[State 890080, RemoveExplod]
type = RemoveExplod
trigger1 = root,Pos Y >= -1
id = 890082
ignorehitpause = 1
;persistent =

;--------------------------------------------------
;TMNT Mysterious Ocean Spawner
[Statedef 890085]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 0
sprpriority = -2

[State 890085, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890085, Goodies]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = (GameTime % 1600) = random%27
;trigger1 = time >=1
trigger1 = teamside = 2
trigger1 = Numhelper(890090) = 0 ;Numhelper and ID have to be the same
Pos = 0,0
facing = -1
name = "TMNTGoodies"
stateno = 890090 + random%2
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890090
;size.xscale = 2
;size.yscale = 2

[State 890085, Hazards]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = (GameTime % 700) = random%27
;trigger1 = time >=1
trigger1 = teamside = 2
trigger1 = Numhelper(890100) = 0 ;Numhelper and ID have to be the same
Pos = 0,0
facing = -1
name = "TMNTHazards"
stateno = 890100 + random%4
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890100
;size.xscale = 2
;size.yscale = 2

[State 890085, HandNinjas]
type = Helper
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = (GameTime % 500) = random%27
;trigger1 = time >=1
trigger1 = teamside = 2
trigger1 = Numhelper(890104) = 0 ;Numhelper and ID have to be the same
Pos = 0,0
facing = -1
name = "TMNTHandNinjas"
stateno = 890104 + random%5
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890104
;size.xscale = 2
;size.yscale = 2

[State 890085, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 890085
ctrl = 0

;----------------------------------------
;TMNT Question Energy Goodie
[Statedef 890090]
type = A
movetype = A
physics = N
anim = 889351 ;hitbox
ctrl = 0
sprpriority = 19

[State 890090, QuestionEnergy]
type = Explod
trigger1 = time = 0
anim = F80143
ID = 890090
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 1

[State 890090, QuestionEnergy]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 0,0
affectteam = B
getpower = 0,0
givepower = 0,0
hitflag = MA
guardflag = ;unblockable
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = F97,0
guardsound = -1
guard.sparkno = S711
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,0
air.fall = 0
p2stateno = 889146
p1facing = 1
fall.recovertime = 0
;Palfx.time      = 70
;Palfx.add       = -104,-104,7
;Palfx.sinadd   = 60,60,0,10
;Palfx.color     = 0
ID = 890090
nochainID = 890090
guard.Dist = 0

[State 890090, velset]
type=velset
trigger1=!time
x=-3
y=0

[State 890090, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
trigger2 = time >=800
id = 890090
;ignorehitpause =
;persistent =


[State 890090, DestroySelf]
type = DestroySelf
trigger1 = movecontact
trigger2 = time >=800
ignorehitpause = 1
;persistent =

;----------------------------------------
;TMNT Pizza Health Goodie
[Statedef 890091]
type = A
movetype = A
physics = N
anim = 889351 ;hitbox
ctrl = 0
sprpriority = 19

[State 890091, PizzaHealth]
type = Explod
trigger1 = time = 0
anim = F80144
ID = 890091
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 1

[State 890091, PizzaHealth]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 0,0
affectteam = B
getpower = 0,0
givepower = 0,0
hitflag = MA
guardflag = ;unblockable
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = F97,1
guardsound = -1
guard.sparkno = S711
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,0
air.fall = 0
p2stateno = 889136
p1facing = 1
fall.recovertime = 0
;palfx.time = 50
;palfx.add = 0,100,50
;palfx.mul = 20,120,24
;palfx.sinadd = 85,110,55,10
ID = 890091
nochainID = 890091
guard.Dist = 0

[State 890091, velset]
type=velset
trigger1=!time
x=-3
y=0

[State 890091, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
trigger2 = time >=800
id = 890091
;ignorehitpause =
;persistent =


[State 890091, DestroySelf]
type = DestroySelf
trigger1 = movecontact
trigger2 = time >=800
ignorehitpause = 1
;persistent =

;----------------------------------------
;TMNT Crate Mysterious ocean
[Statedef 890100]
type = A
movetype = A
physics = N
anim = 889392 ;hitbox
ctrl = 0
sprpriority = 19

[State 890100, TMNTCrate]
type = Explod
trigger1 = time = 0
anim = F80145
ID = 890100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 890100, CrateHit]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 50,5
affectteam = B
getpower = 0,0
givepower = 25,25
hitflag = MAFD
guardflag = ;unblockable
pausetime = 10,10
sparkno = -1
sparkxy = 0,0
hitsound   = F97,2
guardsound = -1
guard.sparkno = -1
ground.type = low
ground.slidetime = 0
ground.hittime  = 25
ground.velocity = 0,-10
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,-10
fall = 1
air.fall = 1
p1facing = 1
fall.recovertime = 25
ID = 890091
;nochainID = 890091
guard.Dist = 0

[State 890100, TMNTCrateHitFX]
type = Explod
trigger1 = movecontact
anim = F89172
;ID = 890100
pos = 10,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 9
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -19
ontop = 0
ownpal = 1
removeongethit = 0
persistent = 0
ignorehitpause = 1

[State 890100, velset]
type=velset
trigger1=!time
x=-3
y=0

[State 890100, RemoveExplod]
type = RemoveExplod
trigger1 = time >=800
id = 890100
ignorehitpause = 1
;persistent =

[State 890100, DestroySelf]
type = DestroySelf
trigger1 = time >=800
ignorehitpause = 1
;persistent =

;----------------------------------------
;TMNT Log Mysterious ocean
[Statedef 890101]
type = A
movetype = A
physics = N
anim = 889393 ;hitbox
ctrl = 0
sprpriority = 19

[State 890101, TMNTLog]
type = Explod
trigger1 = time = 0
anim = F80146
ID = 890101
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 890101, LogHit]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 50,5
affectteam = B
getpower = 0,0
givepower = 25,25
hitflag = MAFD
guardflag = ;unblockable
pausetime = 10,10
sparkno = -1
sparkxy = 0,0
hitsound   = F97,3
guardsound = -1
guard.sparkno = -1
ground.type = low
ground.slidetime = 0
ground.hittime  = 25
ground.velocity = 0,-10
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,-10
fall = 1
air.fall = 1
p1facing = 1
fall.recovertime = 25
ID = 890091
;nochainID = 890091
guard.Dist = 0

[State 890101, TMNTlogHitFX]
type = Explod
trigger1 = movecontact
anim = F89172
;ID = 890100
pos = 0,2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 9
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -19
ontop = 0
ownpal = 1
removeongethit = 0
persistent = 0
ignorehitpause = 1

[State 890101, velset]
type=velset
trigger1=!time
x=-3
y=0

[State 890101, RemoveExplod]
type = RemoveExplod
trigger1 = time >=800
id = 890101
ignorehitpause = 1
;persistent =

[State 890101, DestroySelf]
type = DestroySelf
trigger1 = time >=800
ignorehitpause = 1
;persistent =

;----------------------------------------
;TMNT Barrel Mysterious ocean
[Statedef 890102]
type = A
movetype = A
physics = N
anim = 889394 ;hitbox
ctrl = 0
sprpriority = 19

[State 890102, TMNTBarrel]
type = Explod
trigger1 = time = 0
anim = F80147
ID = 890102
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 890102, BarrelHit]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 50,5
affectteam = B
getpower = 0,0
givepower = 25,25
hitflag = MAFD
guardflag = ;unblockable
pausetime = 10,10
sparkno = -1
sparkxy = 0,0
hitsound   = F97,3
guardsound = -1
guard.sparkno = -1
ground.type = low
ground.slidetime = 0
ground.hittime  = 25
ground.velocity = 0,-10
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,-10
fall = 1
air.fall = 1
p1facing = 1
fall.recovertime = 25
ID = 890091
;nochainID = 890091
guard.Dist = 0

[State 890102, TMNTBarrelHitFX]
type = Explod
trigger1 = movecontact
anim = F89172
;ID = 890100
pos = 5,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 9
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -19
ontop = 0
ownpal = 1
removeongethit = 0
persistent = 0
ignorehitpause = 1

[State 890102, velset]
type=velset
trigger1=!time
x=-3
y=0

[State 890102, RemoveExplod]
type = RemoveExplod
trigger1 = time >=800
id = 890102
ignorehitpause = 1
;persistent =

[State 890102, DestroySelf]
type = DestroySelf
trigger1 = time >=800
ignorehitpause = 1
;persistent =

;----------------------------------------
;TMNT Spiked Log Mysterious ocean
[Statedef 890103]
type = A
movetype = A
physics = N
anim = 889393 ;hitbox
ctrl = 0
sprpriority = 19

[State 890103, TMNTSpikedLog]
type = Explod
trigger1 = time = 0
anim = F80148
ID = 890103
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 890103, SpikedLogHit]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 50,5
affectteam = B
getpower = 0,0
givepower = 25,25
hitflag = MAFD
guardflag = ;unblockable
pausetime = 10,10
sparkno = -1
sparkxy = 0,0
hitsound   = F97,4
guardsound = -1
guard.sparkno = -1
ground.type = low
ground.slidetime = 0
ground.hittime  = 25
ground.velocity = 0,-10
guard.slidetime = 0
guard.hittime = 0
airguard.velocity = 0
guard.velocity = 0
air.velocity = 0,-10
fall = 1
air.fall = 1
p1facing = 1
fall.recovertime = 25
ID = 890091
;nochainID = 890091
guard.Dist = 0

[State 890103, TMNTSpikedLogHitFX]
type = Explod
trigger1 = movecontact
anim = F89172
;ID = 890100
pos = 0,2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 9
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = -19
ontop = 0
ownpal = 1
removeongethit = 0
persistent = 0
ignorehitpause = 1

[State 890103, velset]
type=velset
trigger1=!time
x=-3
y=0

[State 890103, RemoveExplod]
type = RemoveExplod
trigger1 = time >=800
id = 890103
ignorehitpause = 1
;persistent =

[State 890103, DestroySelf]
type = DestroySelf
trigger1 = time >=800
ignorehitpause = 1
;persistent =

;-------------------------------------
;TMNT Blue Hand Stance & chase opponent
[Statedef 890104]
type = S
movetype = I
physics = N
anim = 889395 ;Hitbox
ctrl = 0

[State 890104, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
;persistent =

[State 890104, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 890130

[State 890104, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890131
ignorehitpause = 1

[State 890104, BlueHandStance]
type = Explod
trigger1 = time = 0
anim = F80149
ID = 890104
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890104, velset]
type = VelSet
trigger1 = Time >= 0
x = -3

[State 889571, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA
stateno = 890132

[State 889571, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1

[State 890104, HitFX]
type = Explod
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890104, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890104, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = 890132
ctrl = 0

[State 890104, JumpAttack]
type = ChangeState
trigger1 = P2BodyDist X = [-170,5]
trigger1 = P2Dist Y <= -1
value = 890130
ctrl = 0

[State 890104, Stab]
type = ChangeState
trigger1 = P2BodyDist X = [-60,20]
trigger1 = P2Dist Y = 0
value = 890131
ctrl = 0

[State 890104, DestroySelf]
type = DestroySelf
trigger1 = time >=800
ignorehitpause = 1
;persistent =

;-------------------------------------
;TMNT Blue Hand Stance & chase Root
[Statedef 890105]
type = S
movetype = I
physics = N
anim = 889395 ;Hitbox
ctrl = 0

[State 890105, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
;persistent =

[State 890105, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 890135

[State 890105, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890136
ignorehitpause = 1

[State 890105, BlueHandStance]
type = Explod
trigger1 = time = 0
anim = F80149
ID = 890105
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890105, velset]
type = VelSet
trigger1 = Time >= 0
x = -3

[State 890105, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA
stateno = 890137

[State 890105, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1

[State 890105, HitFX]
type = Explod
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890105, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890105, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = 890137
ctrl = 0

[State 890105, JumpAttack]
type = ChangeState
trigger1 = RootDist X = [-170,5]
trigger1 = RootDist Y <= -1
value = 890135
ctrl = 0

[State 890105, Stab]
type = ChangeState
trigger1 = RootDist X = [-60,20]
trigger1 = RootDist Y = 0
value = 890136
ctrl = 0

[State 890105, DestroySelf]
type = DestroySelf
trigger1 = time >=800
ignorehitpause = 1
;persistent =

;-------------------------------------
;TMNT Yellow Hand Stance & chase opponent
[Statedef 890106]
type = S
movetype = I
physics = N
anim = 889398 ;Hitbox
ctrl = 0

[State 890106, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
;persistent =

[State 890106, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 890140

[State 890106, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890141
ignorehitpause = 1

[State 890106, YellowHandStance]
type = Explod
trigger1 = time = 0
anim = F80155
ID = 890106
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890106, velset]
type = VelSet
trigger1 = Time >= 0
x = -3

[State 890106, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA
stateno = 890142

[State 890106, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1

[State 890106, HitFX]
type = Explod
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890106, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890106, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = 890142
ctrl = 0

[State 890106, JumpAttack]
type = ChangeState
trigger1 = P2BodyDist X = [-180,5]
trigger1 = time >=50  ;P2Dist Y <= -1
value = 890140
ctrl = 0

[State 890106, DestroySelf]
type = DestroySelf
trigger1 = time >=800
ignorehitpause = 1
;persistent =

;-------------------------------------
;TMNT Yellow Hand Stance & chase Root
[Statedef 890107]
type = S
movetype = I
physics = N
anim = 889398 ;Hitbox
ctrl = 0

[State 890107, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
;persistent =

[State 890107, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 890150

[State 890107, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890151
ignorehitpause = 1

[State 890107, YellowHandStance]
type = Explod
trigger1 = time = 0
anim = F80155
ID = 890107
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890107, velset]
type = VelSet
trigger1 = Time >= 0
x = -3

[State 890107, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA
stateno = 890152

[State 890107, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1

[State 890107, HitFX]
type = Explod
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890107, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890107, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = 890152
ctrl = 0

[State 890107, JumpAttack]
type = ChangeState
trigger1 = RootDist X = [-180,5]
trigger1 = time >=50
value = 890150
ctrl = 0

[State 890107, DestroySelf]
type = DestroySelf
trigger1 = time >=800
ignorehitpause = 1
;persistent =

;-------------------------------------
;TMNT Red Hand Stance & chase Opponent & Root
[Statedef 890108]
type = S
movetype = I
physics = N
anim = 889398 ;Hitbox
ctrl = 0

[State 890108, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
;persistent =

[State 890108, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 890155

[State 890108, YellowHandStance]
type = Explod
trigger1 = time = 0
anim = F80161
ID = 890108
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890108, velset]
type = VelSet
trigger1 = Time >= 0
x = -3

[State 890108, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA
stateno = 890156

[State 890108, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1

[State 890108, HitFX]
type = Explod
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890108, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890108, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = 890156
ctrl = 0

[State 890108, Stab]
type = ChangeState
trigger1 = P2BodyDist X = [-60,20]
;trigger1 = P2Dist Y = 0
trigger2 = RootDist X = [-60,20]
;trigger2 = P2Dist Y = 0
value = 890155
ctrl = 0

[State 890108, DestroySelf]
type = DestroySelf
trigger1 = time >=800
ignorehitpause = 1
;persistent =

;-------------------------------------------------------------
;TMNT Blue Hand Jump Attack
[Statedef 890130]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 889396 ;hitbox

[State 890130, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890104
ignorehitpause = 1

[State 890130, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890131
ignorehitpause = 1

[State 890130, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 890130, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890132
ignorehitpause = 1

[State 890130, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
animtype = Medium
damage = 55,7
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 3661
sparkxy = -10,-43
hitsound = F97,5
guardsound = F86,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -7
air.velocity = -3,-4

[State 890130, BlueHandJumpAttack]
type = Explod
trigger1 = time = 0
anim = F80151
ID = 890130
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1.5,1.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 890130, Jump]
type = PlaySnd
trigger1 = time = 0
value = F84,0

[State 890130, Woosh]
type = PlaySnd
trigger1 = time = 10
value = F97,6

[State 890130, VelSet]
type = VelSet
trigger1 = time = 0
x = -3
y = -7
ignorehitpause = 1
;;persistent =

[State 890130, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890130, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890130, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890130, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890104)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890104)
value = 890132
ctrl = 0

[State 890130, Splash]
type = PlaySnd
trigger1 = time = 0
value = F92,0 + random%2

[State 890130, VelAdd]
type = VelAdd
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
y = 0

[State 890130, Stance]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 890104
ctrl = 0
;ignorehitpause = 1

;-------------------------------------------------------------
;TMNT Blue Hand Sword Attack
[Statedef 890131]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889397 ;hitbox

[State 890131, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890104
ignorehitpause = 1

[State 890131, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890130
ignorehitpause = 1

[State 890131, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 890131, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890132
ignorehitpause = 1

[State 890131, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
animtype = Medium
damage = 54,7
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 3661
sparkxy = -10,-50
hitsound = F97,7
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 890131, TMNTBlueHandStab]
type = Explod
trigger1 = time = 0
anim = F80150
ID = 890131
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 300
scale = 1.5,1.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 890131, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890131, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890131, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890104)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890104)
value = 890132
ctrl = 0

[State 890131, VelSet]
type = VelSet
trigger1 = time>=0
x = -2.5
ignorehitpause = 1
;persistent =

[State 890131, Woosh]
type = PlaySnd
trigger1 = time = 6
value = F81,2

[State 890131, Stance]
type = ChangeState
Trigger1 = Time >= 35
value = 890104
ctrl = 0

;--------------------------------
;TMNT Blue Hand Hit React
[Statedef 890132]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890132, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 890132, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890104
ignorehitpause = 1

[State 890132, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890130
ignorehitpause = 1

[State 890132, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890131
ignorehitpause = 1

[State 890132, TMNTBlueHandHitReact]
type = Explod
trigger1 = time = 0
anim = F80152
ID = 890132
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890132, VelSet]
type = VelSet
trigger1 = 1
x = 3
ignorehitpause = 1
;;persistent =

[State 890132, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890132, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 890132, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= -6
trigger1 = time >=2
value = 890133
ctrl = 0
;ignorehitpause = 1

;--------------------------------
;TMNT Blue Hand Death
[Statedef 890133]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890133, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 890133, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890104
ignorehitpause = 1

[State 890133, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890130
ignorehitpause = 1

[State 890133, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890131
ignorehitpause = 1

[State 890133, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890132
ignorehitpause = 1

[State 890133, TMNTBlueHandDeath]
type = Explod
trigger1 = time = 0
anim = F80153
ID = 890133
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 4
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890133, TMNTBlueHandDeathExplode]
type = Explod
trigger1 = time = 4
anim = F80154
ID = 890133
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 8
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890133, VelSet]
type = VelSet
trigger1 = time >=0
y = 2.5
ignorehitpause = 1
;persistent =

[State 890133, Splash]
type = PlaySnd
trigger1 = time = 0
value = F92,0 + random%2

[State 890133, Explosion]
type = PlaySnd
trigger1 = time = 4
value = F97,8

[State 890133, RemoveExplod]
type = RemoveExplod
trigger1 = time >=12
id = 890133
ignorehitpause = 1

[State 890133, DestroySelf]
type = DestroySelf
trigger1 = time >=12
ignorehitpause = 1
;persistent =

;-------------------------------------------------------------
;TMNT Blue Hand Jump Attack
[Statedef 890135]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 889396 ;hitbox

[State 890135, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890105
ignorehitpause = 1

[State 890135, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890136
ignorehitpause = 1

[State 890135, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 890135, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890137
ignorehitpause = 1

[State 890135, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
animtype = Medium
damage = 55,7
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 3661
sparkxy = -10,-43
hitsound = F97,5
guardsound = F86,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -7
air.velocity = -3,-4

[State 890135, BlueHandJumpAttack]
type = Explod
trigger1 = time = 0
anim = F80151
ID = 890135
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1.5,1.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 890135, Jump]
type = PlaySnd
trigger1 = time = 0
value = F84,0

[State 890135, Woosh]
type = PlaySnd
trigger1 = time = 10
value = F97,6

[State 890135, VelSet]
type = VelSet
trigger1 = time = 0
x = -3
y = -7
ignorehitpause = 1
;;persistent =

[State 890135, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890135, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890135, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890135, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890104)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890104)
value = 890137
ctrl = 0

[State 890135, Splash]
type = PlaySnd
trigger1 = time = 0
value = F92,0 + random%2

[State 890135, VelAdd]
type = VelAdd
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
y = 0

[State 890135, Stance]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
;trigger1 = time >=2
value = 890105
ctrl = 0
;ignorehitpause = 1

;-------------------------------------------------------------
;TMNT Blue Hand Sword Attack
[Statedef 890136]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889397 ;hitbox

[State 890136, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890105
ignorehitpause = 1

[State 890136, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890135
ignorehitpause = 1

[State 890136, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 890136, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890137
ignorehitpause = 1

[State 890136, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
animtype = Medium
damage = 54,7
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 3661
sparkxy = -10,-50
hitsound = F97,7
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 890136, TMNTBlueHandStab]
type = Explod
trigger1 = time = 0
anim = F80150
ID = 890136
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 300
scale = 1.5,1.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 890136, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890136, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890136, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890104)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890104)
value = 890137
ctrl = 0

[State 890136, VelSet]
type = VelSet
trigger1 = time>=0
x = -2.5
ignorehitpause = 1
;persistent =

[State 890136, Woosh]
type = PlaySnd
trigger1 = time = 6
value = F81,2

[State 890136, Stance]
type = ChangeState
Trigger1 = Time >= 35
value = 890105
ctrl = 0

;--------------------------------
;TMNT Blue Hand Hit React
[Statedef 890137]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890137, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 890137, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890105
ignorehitpause = 1

[State 890137, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890135
ignorehitpause = 1

[State 890137, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890136
ignorehitpause = 1

[State 890137, TMNTBlueHandHitReact]
type = Explod
trigger1 = time = 0
anim = F80152
ID = 890137
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890137, VelSet]
type = VelSet
trigger1 = 1
x = 3
ignorehitpause = 1
;;persistent =

[State 890137, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890137, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 890137, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= -6
trigger1 = time >=2
value = 890138
ctrl = 0
;ignorehitpause = 1

;--------------------------------
;TMNT Blue Hand Death
[Statedef 890138]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890138, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 890138, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890105
ignorehitpause = 1

[State 890138, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890135
ignorehitpause = 1

[State 890138, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890136
ignorehitpause = 1

[State 890138, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890137
ignorehitpause = 1

[State 890138, TMNTBlueHandDeath]
type = Explod
trigger1 = time = 0
anim = F80153
ID = 890138
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 4
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890138, TMNTBlueHandDeathExplode]
type = Explod
trigger1 = time = 4
anim = F80154
ID = 890138
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 8
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890138, VelSet]
type = VelSet
trigger1 = time >=0
y = 2.5
ignorehitpause = 1
;persistent =

[State 890138, Splash]
type = PlaySnd
trigger1 = time = 0
value = F92,0 + random%2

[State 890138, Explosion]
type = PlaySnd
trigger1 = time = 4
value = F97,8

[State 890138, RemoveExplod]
type = RemoveExplod
trigger1 = time >=12
id = 890138
ignorehitpause = 1

[State 890138, DestroySelf]
type = DestroySelf
trigger1 = time >=12
ignorehitpause = 1
;persistent =

;-------------------------------------
;TMNT Yellow Hand Jump Attack
[Statedef 890140]
type = S
movetype = I
physics = N
anim = 889398 ;Hitbox
ctrl = 0

[State 890140, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890106
ignorehitpause = 1

[State 890140, YellowHandJumpStart]
type = Explod
trigger1 = time = 0
anim = F80156
ID = 890140
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 6
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890140, YellowHandJumpAttack]
type = Explod
trigger1 = time = 6
anim = F80157
ID = 890140
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890140, VelSet]
type = VelSet
trigger1 = time <=6
x = -3
y = 0
ignorehitpause = 1
;;persistent =

[State 890140, VelSet]
type = VelSet
trigger1 = time =7
x = 0
y = -9
ignorehitpause = 1
;;persistent =

[State 890140, VelAdd]
type = VelAdd
trigger1 = time >=7
y = .23

[State 890140, VelAdd]
type = VelAdd
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=10
y = 0

[State 890140, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 890140, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890142
ignorehitpause = 1

[State 890140, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890140, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890140, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890104)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890104)
value = 890142
ctrl = 0

[State 890140, TMNTDartDown1]
type = Helper
trigger1 = time = 26
trigger1 = Numhelper(890144) = 0 ;Numhelper and ID have to be the same
Pos = -20,-50
facing = 1
name = "TMNTDartDown1"
stateno = 890144
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890144
;size.xscale = 2
;size.yscale = 2

[State 890140, TMNTDartDown1]
type = Helper
trigger1 = time = 26
trigger1 = Numhelper(890145) = 0 ;Numhelper and ID have to be the same
Pos = -20,-50
facing = 1
name = "TMNTDartDown2"
stateno = 890145
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890145
;size.xscale = 2
;size.yscale = 2

[State 890140, TMNTDartDown1]
type = Helper
trigger1 = time = 26
trigger1 = Numhelper(890146) = 0 ;Numhelper and ID have to be the same
Pos = -20,-50
facing = 1
name = "TMNTDartDown3"
stateno = 890146
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890146
;size.xscale = 2
;size.yscale = 2

[State 890140, Stance]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=10
value = 890141
ctrl = 0
;ignorehitpause = 1

;-------------------------------------
;TMNT Yellow Hand Jump Land
[Statedef 890141]
type = S
movetype = I
physics = N
anim = 889398 ;Hitbox
ctrl = 0

[State 890141, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890140
ignorehitpause = 1

[State 890141, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
;persistent =

[State 890141, YellowHandJumpLand]
type = Explod
trigger1 = time = 0
anim = F80156
ID = 890141
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 300
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890141, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 890141, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890142
ignorehitpause = 1

[State 890141, HitFX]
type = Explod
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890141, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890141, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = 890142
ctrl = 0

[State 890141, VelSet]
type = VelSet
trigger1 = time >=0
x = -2.5
y = 0
ignorehitpause = 1
;;persistent =

[State 890141, Splash]
type = PlaySnd
trigger1 = time = 0
value = F92,0 + random%2

[State 890141, Stance]
type = ChangeState
trigger1 = time >=7
value = 890106
ctrl = 0
;ignorehitpause = 1

;--------------------------------
;TMNT Yellow Hand Hit React
[Statedef 890142]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890142, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 890142, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890106
ignorehitpause = 1

[State 890142, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890140
ignorehitpause = 1

[State 890142, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890141
ignorehitpause = 1

[State 890142, TMNTBlueHandHitReact]
type = Explod
trigger1 = time = 0
anim = F80158
ID = 890142
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890142, VelSet]
type = VelSet
trigger1 = 1
x = 3
ignorehitpause = 1
;;persistent =

[State 890142, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890142, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 890142, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= -6
trigger1 = time >=2
value = 890143
ctrl = 0
;ignorehitpause = 1

;--------------------------------
;TMNT Yellow Hand Death
[Statedef 890143]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890143, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 890143, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890106
ignorehitpause = 1

[State 890143, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890140
ignorehitpause = 1

[State 890143, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890141
ignorehitpause = 1

[State 890143, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890142
ignorehitpause = 1

[State 890143, TMNTBlueHandDeath]
type = Explod
trigger1 = time = 0
anim = F80159
ID = 890143
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 4
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890143, TMNTBlueHandDeathExplode]
type = Explod
trigger1 = time = 4
anim = F80154
ID = 890143
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 8
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890143, VelSet]
type = VelSet
trigger1 = time >=0
y = 2.5
ignorehitpause = 1
;persistent =

[State 890143, Splash]
type = PlaySnd
trigger1 = time = 0
value = F92,0 + random%2

[State 890143, Explosion]
type = PlaySnd
trigger1 = time = 4
value = F97,8

[State 890143, RemoveExplod]
type = RemoveExplod
trigger1 = time >=12
id = 890143
ignorehitpause = 1

[State 890143, DestroySelf]
type = DestroySelf
trigger1 = time >=12
ignorehitpause = 1
;persistent =

;----------------------------------------
;TMNT Hand Dart 1 diagonal/down
[Statedef 890144]
type = A
movetype = A
physics = N
anim = 889355 ;hitbox
ctrl = 0
sprpriority = 19
juggle = 1

[State 890144, TMNTDart]
type = Explod
trigger1 = time = 0
anim = F80160
ID = 890144
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 0
pausemove = 0
scale = 1.5,1.5
sprpriority = 10
ontop = 0
ownpal = 1
removeongethit = 1

[State 890144, DartToss]
type = PlaySnd
trigger1 = time = 0
value = F63,0

[State 890144, HitDef]
type = HitDef
trigger1 = !time
attr = S, NP
animtype  = light
damage    = 30,4
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MA
guardflag = M
pausetime = 5,5
sparkno = 89182
sparkxy = 0,0
hitsound   = F32,3
guardsound = F49,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,0
guard.slidetime = 11
guard.hittime = 11
airguard.velocity = 0
guard.velocity = 0
air.velocity = -4,-5
air.fall = 1
;p2stateno = 889167
fall.recovertime = 8
;ID = 889169
;nochainID = 889169
;Attack.Dist = 0

[State 890144, velset]
type=velset
trigger1=!time
x=-11
y=6

[State 890144, RemoveKnife]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger2 = movecontact
trigger3 = movehit
trigger4 = moveguarded
trigger5 = time >= 300
id = 890144

[State 889144]
type = Destroyself
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger2 = movecontact
trigger3 = movehit
trigger4 = moveguarded
trigger5 = time >= 300

;----------------------------------------
;TMNT Hand Dart 2 diagonal/down
[Statedef 890145]
type = A
movetype = A
physics = N
anim = 889355 ;hitbox
ctrl = 0
sprpriority = 19
juggle = 1

[State 890145, TMNTDart]
type = Explod
trigger1 = time = 0
anim = F80160
ID = 890145
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 0
pausemove = 0
scale = 1.5,1.5
sprpriority = 10
ontop = 0
ownpal = 1
removeongethit = 1

[State 890145, DartToss]
type = PlaySnd
trigger1 = time = 0
value = F63,0

[State 890145, HitDef]
type = HitDef
trigger1 = !time
attr = S, NP
animtype  = light
damage    = 30,4
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MA
guardflag = M
pausetime = 5,5
sparkno = 89182
sparkxy = 0,0
hitsound   = F32,3
guardsound = F49,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,0
guard.slidetime = 11
guard.hittime = 11
airguard.velocity = 0
guard.velocity = 0
air.velocity = -4,-5
air.fall = 1
;p2stateno = 889167
fall.recovertime = 8
;ID = 889169
;nochainID = 889169
;Attack.Dist = 0

[State 890145, velset]
type=velset
trigger1=!time
x=-10
y=6

;[State 889610, HitOverride]
;type = HitOverride
;trigger1 = 1
;attr = SCA,NA,SA,HA,SP,HP
;stateno = 889609

;[State 889610, HitBy]
;type = HitBy
;trigger1 = 1
;value = SCA,NA,SA,HA,SP,HP
;time = 1

[State 890145, RemoveKnife]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger2 = movecontact
trigger3 = movehit
trigger4 = moveguarded
trigger5 = time >= 300
id = 890145

[State 889145]
type = Destroyself
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger2 = movecontact
trigger3 = movehit
trigger4 = moveguarded
trigger5 = time >= 300

;----------------------------------------
;TMNT Hand Dart 3 diagonal/down
[Statedef 890146]
type = A
movetype = A
physics = N
anim = 889355 ;hitbox
ctrl = 0
sprpriority = 19
juggle = 1

[State 890146, TMNTDart]
type = Explod
trigger1 = time = 0
anim = F80160
ID = 890146
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove = 0
pausemove = 0
scale = 1.5,1.5
sprpriority = 10
ontop = 0
ownpal = 1
removeongethit = 1

[State 890146, DartToss]
type = PlaySnd
trigger1 = time = 0
value = F63,0

[State 890146, HitDef]
type = HitDef
trigger1 = !time
attr = S, NP
animtype  = light
damage    = 30,4
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MA
guardflag = M
pausetime = 5,5
sparkno = 89182
sparkxy = 0,0
hitsound   = F32,3
guardsound = F49,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,0
guard.slidetime = 11
guard.hittime = 11
airguard.velocity = 0
guard.velocity = 0
air.velocity = -4,-5
air.fall = 1
;p2stateno = 889167
fall.recovertime = 8
;ID = 889169
;nochainID = 889169
;Attack.Dist = 0

[State 890146, velset]
type=velset
trigger1=!time
x=-9
y=7

[State 890146, RemoveKnife]
type = RemoveExplod
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger2 = movecontact
trigger3 = movehit
trigger4 = moveguarded
trigger5 = time >= 300
id = 890146

[State 889146]
type = Destroyself
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger2 = movecontact
trigger3 = movehit
trigger4 = moveguarded
trigger5 = time >= 300

;-------------------------------------
;TMNT Yellow Hand Jump Attack
[Statedef 890150]
type = S
movetype = I
physics = N
anim = 889398 ;Hitbox
ctrl = 0

[State 890150, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890107
ignorehitpause = 1

[State 890150, YellowHandJumpStart]
type = Explod
trigger1 = time = 0
anim = F80156
ID = 890150
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 6
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890150, YellowHandJumpAttack]
type = Explod
trigger1 = time = 6
anim = F80157
ID = 890150
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890150, VelSet]
type = VelSet
trigger1 = time <=6
x = -3
y = 0
ignorehitpause = 1
;;persistent =

[State 890150, VelSet]
type = VelSet
trigger1 = time =7
x = 0
y = -9
ignorehitpause = 1
;;persistent =

[State 890150, VelAdd]
type = VelAdd
trigger1 = time >=7
y = .23

[State 890150, VelAdd]
type = VelAdd
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=10
y = 0

[State 890150, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 890150, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890152
ignorehitpause = 1

[State 890150, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890150, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890150, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890104)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890104)
value = 890152
ctrl = 0

[State 890150, TMNTDartDown1]
type = Helper
trigger1 = time = 26
trigger1 = Numhelper(890144) = 0 ;Numhelper and ID have to be the same
Pos = -20,-50
facing = 1
name = "TMNTDartDown1"
stateno = 890144
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890144
;size.xscale = 2
;size.yscale = 2

[State 890150, TMNTDartDown1]
type = Helper
trigger1 = time = 26
trigger1 = Numhelper(890145) = 0 ;Numhelper and ID have to be the same
Pos = -20,-50
facing = 1
name = "TMNTDartDown2"
stateno = 890145
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890145
;size.xscale = 2
;size.yscale = 2

[State 890150, TMNTDartDown1]
type = Helper
trigger1 = time = 26
trigger1 = Numhelper(890146) = 0 ;Numhelper and ID have to be the same
Pos = -20,-50
facing = 1
name = "TMNTDartDown3"
stateno = 890146
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890146
;size.xscale = 2
;size.yscale = 2

[State 890150, Stance]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=10
value = 890151
ctrl = 0
;ignorehitpause = 1

;-------------------------------------
;TMNT Yellow Hand Jump Land
[Statedef 890151]
type = S
movetype = I
physics = N
anim = 889398 ;Hitbox
ctrl = 0

[State 890151, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890150
ignorehitpause = 1

[State 890151, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
;persistent =

[State 890151, YellowHandJumpLand]
type = Explod
trigger1 = time = 0
anim = F80156
ID = 890151
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 300
supermovetime = 999999
pausemovetime = 999999
scale = 1.5,1.5
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0

[State 890151, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 890151, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890152
ignorehitpause = 1

[State 890151, HitFX]
type = Explod
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890151, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890151, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-70,40] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger1 = 1
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-40,70] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = abs(RootDist Y)>-100 && abs(RootDist Y)<1
trigger2 = 1
trigger2 = root,Facing = -1 ;facing Left
value = 890152
ctrl = 0

[State 890151, VelSet]
type = VelSet
trigger1 = time >=0
x = -2.5
y = 0
ignorehitpause = 1
;;persistent =

[State 890151, Splash]
type = PlaySnd
trigger1 = time = 0
value = F92,0 + random%2

[State 890151, Stance]
type = ChangeState
trigger1 = time >=7
value = 890107
ctrl = 0
;ignorehitpause = 1

;--------------------------------
;TMNT Yellow Hand Hit React
[Statedef 890152]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890152, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 890152, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890107
ignorehitpause = 1

[State 890152, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890150
ignorehitpause = 1

[State 890152, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890151
ignorehitpause = 1

[State 890152, TMNTBlueHandHitReact]
type = Explod
trigger1 = time = 0
anim = F80158
ID = 890152
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890152, VelSet]
type = VelSet
trigger1 = 1
x = 3
ignorehitpause = 1
;;persistent =

[State 890152, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890152, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 890152, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= -6
trigger1 = time >=2
value = 890153
ctrl = 0
;ignorehitpause = 1

;--------------------------------
;TMNT Yellow Hand Death
[Statedef 890153]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890153, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 890153, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890107
ignorehitpause = 1

[State 890153, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890150
ignorehitpause = 1

[State 890153, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890151
ignorehitpause = 1

[State 890153, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890152
ignorehitpause = 1

[State 890153, TMNTBlueHandDeath]
type = Explod
trigger1 = time = 0
anim = F80159
ID = 890153
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 4
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890153, TMNTBlueHandDeathExplode]
type = Explod
trigger1 = time = 4
anim = F80154
ID = 890153
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 8
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890153, VelSet]
type = VelSet
trigger1 = time >=0
y = 2.5
ignorehitpause = 1
;persistent =

[State 890153, Splash]
type = PlaySnd
trigger1 = time = 0
value = F92,0 + random%2

[State 890153, Explosion]
type = PlaySnd
trigger1 = time = 4
value = F97,8

[State 890153, RemoveExplod]
type = RemoveExplod
trigger1 = time >=12
id = 890153
ignorehitpause = 1

[State 890153, DestroySelf]
type = DestroySelf
trigger1 = time >=12
ignorehitpause = 1
;persistent =

;-------------------------------------------------------------
;TMNT Red Hand Punch
[Statedef 890155]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 889399 ;hitbox

[State 890155, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890108
ignorehitpause = 1

[State 890155, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA
time = 1
ignorehitpause = 1

[State 890155, HitOverride] ;Hit React
type = HitOverride
trigger1 = 1
;trigger1 = GetHitVar(yvel) = 0
;Trigger1 = GetHitVar(animtype) = 0
;trigger1 = life >= 1
attr = SCA,NA,SA,HA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 890156
ignorehitpause = 1

[State 890155, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
animtype = Medium
damage = 45,5
hitflag = MAF
guardflag = MA
affectteam = B
priority = 4, Miss
pausetime = 12,12
sparkno = 89172
sparkxy = -10,-53
hitsound = F69,1
guardsound = F86,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -5
air.velocity = -2.5,-3.5
guard.velocity = -.8
ground.cornerpush.veloff = -1

[State 890155, TMNTRedHandPunch]
type = Explod
trigger1 = time = 0
anim = F80162
ID = 890155
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 300
scale = 1.5,1.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0
supermovetime = 99999
pausemovetime = 99999

[State 890155, Explod]
type = Explod
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0

[State 890155, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-50,10] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890155, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,50] ;Between these two numbers
trigger1 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger1 = root,movetype = A
;trigger1 = life >= 1
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger1 = numhelper(890104)
trigger2 = rootdist x = [-10,50] ;Between these two numbers
trigger2 = abs(RootDist Y)>-50 && abs(RootDist Y)<1
trigger2 = root,movetype = A
;trigger2 = life >= 1
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
trigger2 = numhelper(890104)
value = 890156
ctrl = 0

[State 890155, VelSet]
type = VelSet
trigger1 = time>=0
x = -2.5
ignorehitpause = 1
;persistent =

[State 890155, Woosh]
type = PlaySnd
trigger1 = time = 6
value = F81,2

[State 890155, Stance]
type = ChangeState
Trigger1 = Time >= 35
value = 890108
ctrl = 0

;--------------------------------
;TMNT Red Hand Hit React
[Statedef 890156]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890156, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 890156, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890108
ignorehitpause = 1

[State 890156, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890155
ignorehitpause = 1

[State 890156, TMNTBlueHandHitReact]
type = Explod
trigger1 = time = 0
anim = F80163
ID = 890156
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890156, VelSet]
type = VelSet
trigger1 = 1
x = 3
ignorehitpause = 1
;;persistent =

[State 890156, VelAdd]
type = VelAdd
trigger1 = 1
y = .23

[State 890156, Yell]
type = PlaySnd
trigger1 = time = 7
value = F96,random%2

[State 890156, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= -6
trigger1 = time >=2
value = 890157
ctrl = 0
;ignorehitpause = 1

;--------------------------------
;TMNT Red Hand Death
[Statedef 890157]
type    = S
movetype= H                     ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,-6
juggle = 1

[State 890157, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
;persistent =

[State 890157, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890108
ignorehitpause = 1

[State 890157, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890155
ignorehitpause = 1

[State 890157, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890156
ignorehitpause = 1

[State 890157, TMNTBlueHandDeath]
type = Explod
trigger1 = time = 0
anim = F80164
ID = 890157
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 4
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890157, TMNTRedHandDeathExplode]
type = Explod
trigger1 = time = 4
anim = F80154
ID = 890157
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = 8
scale = 1.5,1.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890157, VelSet]
type = VelSet
trigger1 = time >=0
y = 2.5
ignorehitpause = 1
;persistent =

[State 890157, Splash]
type = PlaySnd
trigger1 = time = 0
value = F92,0 + random%2

[State 890157, Explosion]
type = PlaySnd
trigger1 = time = 4
value = F97,8

[State 890157, RemoveExplod]
type = RemoveExplod
trigger1 = time >=12
id = 890157
ignorehitpause = 1

[State 890157, DestroySelf]
type = DestroySelf
trigger1 = time >=12
ignorehitpause = 1
;persistent =

;--------------------------------
;Factory Final Fight Marker for Player1
[Statedef 890160]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 1
ctrl = 0

[State 890160, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890163, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 890160
ctrl = 0
ignorehitpause = 1

;--------------------------------
;Factory Final Fight Marker for Player2
[Statedef 890161]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 1
ctrl = 0

[State 890161, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890161, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 890161
ctrl = 0
ignorehitpause = 1

;-------------------------
;Factory stage Finisher Final Fight enemy react
[Statedef 890165]
type    = S
movetype= H
physics = S
juggle  = 1
velset = 0,0
anim = 5030
ctrl = 0

[State 890165, FFFactory]
type = AssertSpecial
trigger1 = time >=0
flag = nokoslow
flag2 = noshadow
ignorehitpause = 1

[State 890165, 2]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 890165, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 5930
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 5930
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, PrettyBoy25]
type = ChangeAnim
triggerall = Var(40) = 3
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 5730
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, PrettyBoy50]
type = ChangeAnim
triggerall = Var(40) = 2
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 5830
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, PrettyBoy75]
type = ChangeAnim
triggerall = Var(40) = 1
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 5930
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, FlameGolem]
type = ChangeAnim
triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
trigger1 = time = 0
value = 5930
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, 3]
type =  ChangeAnim
trigger1 = time = 30
value = 5050

[State 890165, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 30
value = 5950
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 30
value = 5950
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, PrettyBoy25]
type = ChangeAnim
triggerall = Var(40) = 3
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 30
value = 5750
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, PrettyBoy50]
type = ChangeAnim
triggerall = Var(40) = 2
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 30
value = 5850
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, PrettyBoy75]
type = ChangeAnim
triggerall = Var(40) = 1
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 30
value = 5950
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, FlameGolem]
type = ChangeAnim
triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
trigger1 = time = 30
value = 5950
;elem = 1
ignorehitpause = 1
;persistent =

[State 890165, 4]
type = Velset
trigger1 = time = [0,30]
x = -.5
y = -5.8

[State 890165, 5]
type = VelAdd
trigger1 = time = [20,158]
x = 0
y = 0.2

[State 890165, 5]
type = VelAdd
trigger1 = time >= 158
x = 0
y = 0.2

[State 890165, 6]
type = Velset
trigger1 = time >= 158
x = 0
y = 0

;[State 890165, 3]
;type =  ChangeAnim
;trigger1 = time = 158
;value = 5080

[State 890165, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 250
value = 890166
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;------------------------------------------------------------------------------------------------------------
;Enemy Splash into Molten metal "Factory Final Fight stage finisher"
[Statedef 890166]
type = A
movetype = I
physics = N
anim = 9800 ;invisible
ctrl = 0
sprpriority = 55

[State 890166]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 890166, VelAdd]
type = VelAdd
trigger1 = Time >= 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 890166, MoltenRing] ;Player1
type = Explod
trigger1 = teamside = 1
trigger1 = time = 0
anim = F21312
pos = 0,-43
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = 32
scale = 1,1
sprpriority = 53
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, MoltenRing];Player2
type = Explod
trigger1 = teamside = 2
trigger1 = time = 0
anim = F21312
pos = 0,-43
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = 32
scale = 1,1
sprpriority = 53
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, MoltenBlast1];player1
type = Explod
trigger1 = teamside = 1
trigger1 = time = 0
anim = F21272
pos = 0,-48
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = 31
scale = 1,1
sprpriority = 54
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, MoltenBlast1];player2
type = Explod
trigger1 = teamside = 2
trigger1 = time = 0
anim = F21272
pos = 0,-48
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = 31
scale = 1,1
sprpriority = 54
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, MoltenHit]
type = PlaySnd
trigger1 = time = 0
value = F31,2

[State 890166, Moltensplash]
type = PlaySnd
trigger1 = time = 0
value = F34,0

[State 890166, MoltenBlast2];player1
type = Explod
trigger1 = teamside = 1
trigger1 = time = 63
anim = F7423
;ID = 889765
pos = -6,-56
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = 35
scale = 1,1
sprpriority = 58
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, MoltenBlast2];player2
type = Explod
trigger1 = teamside = 2
trigger1 = time = 63
anim = F7423
;ID = 889765
pos = -6,-56
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = 35
scale = 1,1
sprpriority = 58
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, Moltenblast2]
type = PlaySnd
trigger1 = time = 66
value = F31,1

[State 890166, Moltenblast2]
type = PlaySnd
trigger1 = time = 63
value = F31,0

[State 890166, Moltenblast2]
type = PlaySnd
trigger1 = time = 66
value = F38,0

[State 890166, MKBurnbody];player1
type = Explod
trigger1 = teamside = 1
trigger1 = time = 68
anim = F80053
;ID = 889765
pos = 0,30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 57
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, MKBurnbody];player2
type = Explod
trigger1 = teamside = 2
trigger1 = time = 68
anim = F80053
;ID = 889765
pos = 0,30
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 57
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, Smoke];player1
type = Explod
trigger1 = teamside = 1
trigger1 = time = 73
anim = F21313
;ID = 889765
pos = 0,-52
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 56
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, Smoke];player2
type = Explod
trigger1 = teamside = 2
trigger1 = time = 73
anim = F21313
;ID = 889765
pos = 0,-52
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 56
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, Moltensplash];player1
type = Explod
trigger1 = teamside = 1
trigger1 = time = 68
anim = F60344
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 59
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, Moltensplash];player2
type = Explod
trigger1 = teamside = 2
trigger1 = time = 68
anim = F60344
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 59
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890166, ScreenBound]
type = ScreenBound
trigger1 = time >=227
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

;[State 890166, PosSet]
;type = PosSet
;trigger1 = time = 229
;x = 0
;y = 9000
;ignorehitpause = 1

[State 890166, SelfState]
type = SelfState
trigger1 = time >= 230   ;148
value = 5150
ctrl = 1

;------------------------------------------
;Factory finisher Final Fight for Player 1
[Statedef 890170]
type = S
ctrl = 0
anim = 0
velset = 0,0
sprpriority = 2

[State 890170, FFFactory]
type = AssertSpecial
trigger1 = time >=0
flag = nokoslow

[State 890170, ChangeAnim]
type = ChangeAnim
trigger1 = time = 25
value = 9800 ;Invisible

[State 890170, PosSet]
type = PosSet
trigger1 = Time = 53
y = 1000

[state 890170, AssertSpecial]
type = AssertSpecial
trigger1 = Time >= 53
flag = noshadow

[State 890170, Helper]
type = Helper
trigger1 = Time = 25
ID = 180
pos = 0,0
postype = P1
stateno = 180
helpertype = normal
name = "Winning"
keyctrl = 0
sprpriority = -2

[State 890170, Helper]
type = Helper
trigger1 = NumHelper(890173) = 0 ;It cannot have Helper as this in the screen.
trigger1 = Time >= 55
ID = 890173
pos = 160,-120
postype = left
stateno = 890173
helpertype = normal
name = "Screen"
keyctrl = 0
sprpriority = -2

[State 890170, ChangeState]
type = ChangeState
trigger1 = time = 200
value = 0
ctrl = 1

;-----------------------------------
;Zone Factory
[Statedef 890173]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 9800
ctrl = 0

[State 890173, Helper]
type = Helper
trigger1 = NumHelper(890173) = 0
ID = 890173
pos = 160,-120
postype = left
stateno = 890173
helpertype = normal
name = "Zone"
keyctrl = 0
sprpriority = -2

[State 890173, Destroyself]
type = Destroyself
trigger1 = time = 200

;----------------------------------
;Extra Metal Barrel O goodies for "Belger's Mansion FF" stage + Health
[Statedef 890175]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = -19

[State 890175, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 890175, Barrel]
type = Explod
trigger1 = time = 0
anim = F89125
ID = 890175
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -19
ownpal = 1
removeongethit = 0

[State 890175, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890175, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 890175, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 890176

[State 890175, Explod]
type = Explod
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0
persistent = 0

[State 890175, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890175, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 890176
ctrl = 0

;----------------------------------
;Extra Barrel O goodies for "Belger's Mansion FF" stage + Health Cont...
[Statedef 890176]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = 20

[State 890176, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 890176, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890176, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 890176, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 890177

[State 890176, Explod]
type = Explod
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0
persistent = 0

[State 890176, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890176, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 890177
ctrl = 0
;----------------------------------
;Extra Barrel O goodies for "Belger's Mansion FF" stage + Health Cont...
[Statedef 890177]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889345 ;hitbox
velset = 0,0
juggle = 25
sprpriority = 20

[State 890177, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 890177, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = ,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =

[State 890177, HitBy]
type = HitBy
trigger1 = 1
value = SC,NA,SA,HA
time = 1

[State 890177, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 890178

[State 890177, Explod]
type = Explod
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
anim = F89172
;ID =
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 9
scale = 1,1
sprpriority = 21
ontop = 1
ownpal = 1
removeongethit = 0
persistent = 0

[State 890177, PlaySnd]
type = PlaySnd
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = F61,0

[State 890177, ChangeState]
type = ChangeState
trigger1 = rootdist x = [-10,70] ;Between these two numbers
trigger1 = root,movetype = A
trigger1 = root,StateType = S || root,StateType = C
trigger1 = time >=25
trigger1 = root,Facing = 1 ;facing Right
trigger2 = rootdist x = [-70,10] ;Between these two numbers
trigger2 = root,movetype = A
trigger2 = root,StateType = S || root,StateType = C
trigger2 = time >=25
trigger2 = root,Facing = -1 ;facing Left
value = 890178
ctrl = 0

;------------------------------
;Extra broken barrel + health Broken
[Statedef 890178]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 15
sprpriority = 20

[State 890178, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = noshadow

[State 890178, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 1
id = 890175

[State 890178, BarrelBottom]
type = Helper
trigger1 = Time = 0
;trigger1 = stateno = 889933
helpertype = Normal
ID = 889941
name = "wood piece 1"
postype = p1
pos = 0,-40
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 890178, BarrelTop]
type = Helper
trigger1 = Time = 0
;trigger1 = stateno = 889933
helpertype = Normal
ID = 889943
name = "wood piece 1"
postype = p1
pos = 0,-42
stateno = 889943
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 890178, goodie]
type = Helper
trigger1 = Time = 0
;trigger1 = stateno = 889443
helpertype = Normal
ID = 890178
name = "GoodieHealth1"
postype = P1
pos = 0,0
stateno = 889160+random%3
ownpal = 1
size.xscale = 1.0
size.yscale = 1.0

[State 890178, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 890175
ctrl = 0

;--------------------------------
;Factory Final Fight Fire Flair Stage Marker 1 Left for Player1
[Statedef 890180]
type    = S
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889400 ;HitBox
velset = 0,0
juggle = 1
ctrl = 0

[State 890180, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890180, Fire Flair]
type = Explod
trigger1 = time = 0
anim = F80167
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 300
scale = 1,1
sprpriority = -10
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890180, Fire Flair]
type = Explod
trigger1 = time = 0
anim = F80168
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 300
scale = 1,1
sprpriority = 10
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890180, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 85,10
getpower = 0,0
givepower = 0,0
hitflag = MAFD
affectteam = B
guardflag = ;unblockable
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = 31,random%3
guardsound = S2, 6
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,-7
guard.slidetime = 11
guard.hittime = 11
airguard.velocity = 0
guard.velocity = 0
air.velocity = -4,-5
air.fall = 1
p2stateno = 889298
;fall.recovertime = 28
fall = 1
;ID = 889759
;nochainID = 889759
guard.Dist = 0

[State 890180, ChangeState];Perpetual Loop
type = ChangeState
trigger1 = time >= 300
value = 890180
ctrl = 0
ignorehitpause = 1

;--------------------------------
;Factory Final Fight Fire Flair Stage Marker 1 Right for Player1
[Statedef 890181]
type    = S
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889400 ;HitBox
velset = 0,0
juggle = 1
ctrl = 0

[State 890181, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890181, Fire Flair]
type = Explod
trigger1 = time = 0
anim = F80167
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 300
scale = 1,1
sprpriority = -10
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 890181, Fire Flair]
type = Explod
trigger1 = time = 0
anim = F80168
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 300
scale = 1,1
sprpriority = 10
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
supermove = 99999
pausemove = 99999

[State 890181, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 85,10
getpower = 0,0
givepower = 0,0
hitflag = MAFD
affectteam = B
guardflag = ;unblockable
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = 31,random%3
guardsound = S2, 6
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,-7
guard.slidetime = 11
guard.hittime = 11
airguard.velocity = 0
guard.velocity = 0
air.velocity = -4,-5
air.fall = 1
p2stateno = 889298
;fall.recovertime = 28
fall = 1
;ID = 889759
;nochainID = 889759
guard.Dist = 0

[State 890181, ChangeState];Perpetual Loop
type = ChangeState
trigger1 = time >= 300
value = 890181
ctrl = 0
ignorehitpause = 1

;--------------------------------
;Violent Voyage SoR2 Marker for Player1
[Statedef 890280]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 4881 ;Invisible
velset = 0,0
ctrl = 0

[State 890280, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890280, OceanEC1]
type = Helper
;trigger1 = time = 0
trigger1 = Numhelper(890283) = 1  ;P2stateno = 890285
;trigger1 = Numhelper(890290) = 0
;trigger1 = stagevar(info.name) = "Ultimate_Off_The_Barbary_Coast_ECCftDS"
helpertype = normal ;player
name = "ViolentVoyage1"
ID = 890290
stateno = 890290
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;ignorehitpause =
persistent = 0

[State 890280, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 890280
ctrl = 0
ignorehitpause = 1

;--------------------------------
;Violent Voyage SoR2 Marker for Player2
[Statedef 890281]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 4882 ;Invisible
velset = 0,0
ctrl = 0

[State 890281, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890281, OceanEC1]
type = Helper
;trigger1 = time = 0
trigger1 =  Numhelper(890283) = 1 ;P2stateno = 890285
;trigger1 = Numhelper(890290) = 0
;trigger1 = stagevar(info.name) = "Ultimate_Off_The_Barbary_Coast_ECCftDS"
helpertype = normal ;player
name = "ViolentVoyage2"
ID = 890230
stateno = 890290
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;ignorehitpause =
persistent = 0

[State 890281, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 890281
ctrl = 0
ignorehitpause = 1

;------------------------------
;end round faster "Violent Voyage stage finisher"
[Statedef 890282]
type    = S
movetype= H
physics = N
anim = 9800 ;invisible
velset = 0,0
sprpriority = 2

[State 890282, PrettyBoy]
type = SelfState
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 5030
ctrl = 0
;anim =
ignorehitpause = 1
;persistent =

[State 890282, FlameGolem]
type = SelfState
Triggerall = Var(50) = 1
triggerall = name = "Ultimate_Blob"
trigger1 = time = 0
value = 5030
ctrl = 0
;anim =
ignorehitpause = 1
;persistent =

[State 890282, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = nokoslow
;flag2 = invisible
;flag3 = roundnotover
ignorehitpause = 1
persistent = 1
;-----------------------
;flag = nobardisplay
;flag = noBG
;flag = noFG
;flag = nostandguard
;flag = nocrouchguard
;flag = noairguard
;flag = noautoturn
;flag = nojugglecheck
;flag = nokosnd
;flag = nokoslow
;flag = noshadow
;flag = globalnoshadow
;flag = nomusic
;flag = nowalk
;flag = timerfreeze
;flag = unguardable

[State 890282, FallToShark]
type = Helper
Triggerall = Var(50) !=1
triggerall = name != "Ultimate_Pretty_Boy"
triggerall = name != "Ultimate_Haggar"
triggerall = name != "Ultimate_Cody"
trigger1 = time = 0
stateno = 890283
id = 890283
ownpal = 0
pos = 0,0
postype = p1
supermove = 99999
pausemove = 99999

[State 890282, FallToShark]
type = Helper
Triggerall = Var(50) !=1
triggerall = name != "Ultimate_Pretty_Boy"
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 1 || PalNo = 2 || PalNo = 3
trigger1 = time = 0
stateno = 890283
id = 890283
ownpal = 0
pos = 0,0
postype = p1
supermove = 99999
pausemove = 99999

[State 890282, FallToShark]
type = Helper
Triggerall = Var(50) !=1
triggerall = name != "Ultimate_Pretty_Boy"
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
stateno = 890785
id = 890283
ownpal = 0
pos = 0,0
postype = p1
supermove = 99999
pausemove = 99999

[State 890282, FallToShark]
type = Helper
Triggerall = Var(50) !=1
triggerall = name != "Ultimate_Pretty_Boy"
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 1 || PalNo = 2 || PalNo = 3
trigger1 = time = 0
stateno = 890283
id = 890283
ownpal = 0
pos = 0,0
postype = p1
supermove = 99999
pausemove = 99999

[State 890282, FallToShark]
type = Helper
Triggerall = Var(50) !=1
triggerall = name != "Ultimate_Pretty_Boy"
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
stateno = 890785
id = 890283
ownpal = 0
pos = 0,0
postype = p1
supermove = 99999
pausemove = 99999
size.xscale = 1.3
size.yscale = 1

[State 890282]
type = VelAdd
trigger1 = 1
y = 0.3

[State 890282, PosSet]
type = PosSet
trigger1 = time = 309
x = 0
y = 300
ignorehitpause = 1

[State 890282, playwinposefaster]
type = SelfState
trigger1 = Time >= 1400
trigger1 = !Ishelper
value = 5150

;------------------------------------------------------------------------------------------------------------
;Enemy falling to Ocean "Violent Voyage finisher stage"
[Statedef 890283]
type = A
movetype = H
physics = N
anim = 9800 ;invisible
ctrl = 0
sprpriority = 3

[State 890283, NotHitBy]
type = NotHitBy
trigger1 = time >=0
value = SCA
time = 1
ignorehitpause = 1

[State 890283, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

;[State 890283, PosAdd]
;type = PosAdd
;trigger1 = Cond(Facing = 1, ScreenPos X < 160, ScreenPos X > 160)
;x = 25 =(160 - ScreenPos X)*Facing/25

[State 890283]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 890283, SprPriority]
type = SprPriority
trigger1 = time >=33
value = -7

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=10 && time <=11
scale = .99, .99

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=12 && time <=13
scale = .98, .98

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=14 && time <=15
scale = .97, .97

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=16 && time <=17
scale = .96, .96

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=18 && time <=19
scale = .95, .95

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=20 && time <=21
scale = .94, .94

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=22 && time <=23
scale = .93, .93

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=24 && time <=25
scale = .92, .92

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=26 && time <=27
scale = .91, .91

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=28 && time <=29
scale = .90, .90

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=30 && time <=31
scale = .89, .89

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=32 && time <=33
scale = .88, .88

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=34 && time <=35
scale = .87, .87

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=36 && time <=37
scale = .86, .86

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=38 && time <=39
scale = .85, .85

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=40 && time <=41
scale = .84, .84

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=42 && time <=43
scale = .83, .83

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=44 && time <=45
scale = .82, .82

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=46 && time <=47
scale = .81, .81

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=48 && time <=49
scale = .80, .80

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=50 && time <=51
scale = .79, .79

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=52 && time <=53
scale = .78, .78

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=54 && time <=55
scale = .77, .77

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=56 && time <=57
scale = .76, .76

[State 890283, AngleDraw]
type = AngleDraw
trigger1 = time >=58
scale = .75, .75

[State 890283]
type = VelSet
trigger1 = Time = 0
x = 0
y = -13

[State 890283, yell]
type = PlaySnd
trigger1 = time = 0
value = S11,0

[State 890283]
type = VelAdd
trigger1 = 1
y = 0.3

[State 890283]
type = ChangeState
trigger1 = Pos Y >= -65
trigger1 = Vel Y > 0
trigger1 = time >= 40
value = 890285

;-----------------------------------------
;Violent Voyage SoR2 Pause Before Shark hit react
[Statedef 890285]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0,0
anim = 5100
ctrl = 0

[State 890285, Turn]
type = Turn
trigger1 = time = 0
trigger1 = Facing = -1
;ignorehitpause =
persistent = 0

[State 890285, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 890285, ChangeState]
type = ChangeState
trigger1 = time >=1
;trigger1 = Pos Y >= 200
;trigger1 = Vel Y > 0
value = 890286
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;-----------------------------------------
;Violent Voyage Fall In Ocean & Eaten by Shark
[Statedef 890286]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0,0
anim = 5100
ctrl = 0
SprPriority = 110

[State 890286, PosSet]
type = PosSet
trigger1 = time = 0
x = 200
y = -400
;ignorehitpause =
;persistent =

[State 890286, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 890286, VelSet]
type = VelSet
trigger1 = time >=1
trigger1 = time <=100
x = -2.8
;ignorehitpause =
;persistent =

[State 890286, VelSet]
type = VelSet
trigger1 = time = 1
trigger1 = time <=100
y = -3.5
;ignorehitpause =
;persistent =

[State 890286, VelAdd]
type = VelAdd
trigger1 = time >=1
trigger1 = time <=100
y = 0.22
;ignorehitpause =
;persistent =

[State 890286, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y >= -40
trigger1 = Vel Y > 0
trigger1 = time <=100
value = 9800
;elem = 1
;ignorehitpause =
persistent = 0

[State 890286, VelSet]
type = VelSet
trigger1 = Pos Y >= -40
trigger1 = Vel Y > 0
trigger1 = time <=100
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 890286, VelAdd]
type = VelAdd
trigger1 = Pos Y >= -40
trigger1 = Vel Y > 0
trigger1 = time <=100
y = 0
;ignorehitpause =
;persistent =

[State 890286, ChangeAnim]
type = ChangeAnim
trigger1 = time = 190
value = 889401
;elem = 1
;ignorehitpause =
persistent = 0

[State 890286, VelSet]
type = VelSet
;trigger1 = Pos Y >= -60
;trigger1 = Vel Y > 0
trigger1 = time =190 ;&& time <=260
y = -2
;ignorehitpause =
;persistent =

[State 890286, VelSet]
type = VelSet
;trigger1 = Pos Y >= -60
;trigger1 = Vel Y > 0
trigger1 = time >=210 ;&& time <=170
y = 0
;ignorehitpause =
;persistent =

[State 890286, PosSet]
type = PosSet
trigger1 = time = 100
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 890286, ChangeAnim]
type = ChangeAnim
trigger1 = time = 570
value = 9800
;elem = 1
;ignorehitpause =
persistent = 0

[State 890286, ChangeAnim]
type = ChangeAnim
trigger1 = time = 715
value = 889401
;elem = 1
;ignorehitpause =
persistent = 0

[State 890286, ChangeAnim]
type = ChangeAnim
trigger1 = time = 880
value = 9800
;elem = 1
;ignorehitpause =
persistent = 0

[State 890286, SprPriority]
type = SprPriority
trigger1 = time >=4
value = 110
ignorehitpause = 1
;persistent =

[State 890286, SelfState]
type = SelfState
trigger1 = time >=1400
value = 5150
ctrl = 1
;ignorehitpause = 0
;persistent = 1

;-----------------------------------------
;Violent Voyage Win Pose Indicator
[Statedef 890287]
type    = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
anim = 9800  ;Invisible
ctrl = 0
SprPriority = 150

[State 890287, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = noautoturn
ignorehitpause = 1
;persistent =

[State 890287, ScreenBound]
type = ScreenBound
trigger1 = time >=0
value = 0
movecamera = 0,0
ignorehitpause = 1
;persistent =

[State 890287, neverending]
type = DestroySelf
trigger1 = movecontact
;ignorehitpause =
;persistent =

;-----------------------------------------
;Violent Voyage Invisible Win Pose
[Statedef 890288]
type    = S
movetype= I
physics = N
juggle  = 1
velset = 0,0
anim = 9800  ;Invisible
ctrl = 0
SprPriority = 0

[State 890288, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = noautoturn
ignorehitpause = 1
;persistent =

[State 890288, ScreenBound]
type = ScreenBound
trigger1 = time >=0
value = 0
movecamera = 0,0
ignorehitpause = 1
;persistent =

[State 890288]
type = AssertSpecial
trigger1 = Time < 30
flag = roundnotover

;--------------------------------
;Barbary Coast Ocean
[Statedef 890290]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
ctrl = 0

[State 890290, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = globalnoshadow
flag2 = noautoturn
flag3 = noFG

[State 890290, AssertSpecial]
type = AssertSpecial
trigger1 = time >=60
flag = noBG

[State 890290, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0 && time <=1400
flag = roundnotover

[State 890290, Blackness]
type = Explod
trigger1 = time = 40
anim = F89138
;ID = 889220
pos = 240,270
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 45
supermovetime = 99999
pausemovetime = 99999
scale = 2,2
sprpriority = 120
ontop = 0
ownpal = 1
removeongethit = 0

[State 890290, Water]
type = Explod
trigger1 = time = 60
anim = F80196
;ID = 889220
pos = 200,260
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
scale = 1.3,1.3
sprpriority = 97
ontop = 0
ownpal = 1
removeongethit = 0
trans = none

[State 890290, SharkSwim]
type = Explod
trigger1 = time = 340
anim = F80197
;ID = 889220
pos = 150,200
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 188
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = 98
ontop = 0
ownpal = 1
removeongethit = 0
persistent = 0

[State 890290, Splash]
type = PlaySnd
trigger1 = time = 140
value = F100,2
persistent = 0

[State 890290, SplashShark]
type = Explod
trigger1 = time = 150
;trigger1 = NumExplod(890290) = 0
anim = F80195
ID = 890290
pos = 150,200
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = 113
ontop = 0
ownpal = 1
removeongethit = 0
persistent = 0

[State 890290, WaterFront]
type = Explod
trigger1 = time = 60
anim = F80198
;ID = 889220
pos = 200,260
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
scale = 1.3,1.3
sprpriority = 112
ontop = 0
ownpal = 1
removeongethit = 0

[State 890290, WaterRipples]
type = Explod
trigger1 = time = 270 ;120
anim = F80199
;ID = 889220
pos = 150,150
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 370
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = 114
ontop = 0
ownpal = 1
removeongethit = 0
persistent = 0

[State 890290, WaterRipples2]
type = Explod
trigger1 = time = 800 ;650
anim = F80199
;ID = 889220
pos = 150,150
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 170
supermovetime = 99999
pausemovetime = 99999
scale = 1,1
sprpriority = 114
ontop = 0
ownpal = 1
removeongethit = 0
persistent = 0

[State 890290, DestroySelf]
type = DestroySelf
trigger1 = movecontact
;ignorehitpause =
;persistent =

;--------------------------------
;Syrian Desert Refinery Eternal Champions Marker for Player1
[Statedef 890300]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 4881 ;Invisible
velset = 0,0
ctrl = 0

[State 890300, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890300, FanRed]
type = Explod
trigger1 = P2stateno = 890304
trigger1 = NumExplod(890298) = 0
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
anim = F80201
ID = 890298
pos = -494,15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
;pausemovetime = 0
scale = 1,1
sprpriority = -51
;ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;trans =
persistent = 0
supermovetime = 99999
pausemovetime = 99999

[State 890300, FanChurn]
type = Explod
trigger1 = P2stateno = 890304
trigger1 = NumExplod(890299) = 0
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
anim = F80200
ID = 890299
pos = -492,13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
;pausemovetime = 0
scale = 1,1
sprpriority = -50
;ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;trans =
persistent = 0
supermovetime = 99999
pausemovetime = 99999

[State 890300, Fan]
type = PlaySnd
trigger1 = P2stateno = 890304
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
value = F101,0
persistent = 0

[State 890300, FanGuncked]
type = PlaySnd
trigger1 = P2stateno = 890304
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
value = F101,5
persistent = 0

;----Acid Finisher

[State 890300, Acid]
type = Explod
trigger1 = P2stateno = 890306
trigger1 = NumExplod(890298) = 0
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
anim = F80202
ID = 890298
pos = -185,13
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
;pausemovetime = 0
scale = 1,1
sprpriority = 50
;ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;trans =
persistent = 0
supermovetime = 99999
pausemovetime = 99999

[State 890300, AcidSpurt]
type = PlaySnd
trigger1 = P2stateno = 890306
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
value = F101,1
persistent = 0

[State 890300, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 890300
ctrl = 0
ignorehitpause = 1

;--------------------------------
;Syrian Desert Refinery Eternal Champions Marker for Player2
[Statedef 890301]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 4882 ;Invisible
velset = 0,0
ctrl = 0

[State 890301, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890301, FanRed]
type = Explod
trigger1 = P2stateno = 890304
trigger1 = NumExplod(890300) = 0
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
anim = F80201
ID = 890300
pos = -494,15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
;pausemovetime = 0
scale = 1,1
sprpriority = -51
;ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;trans =
persistent = 0
supermovetime = 99999
pausemovetime = 99999

[State 890301, FanChurn]
type = Explod
trigger1 = P2stateno = 890304
trigger1 = NumExplod(890301) = 0
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
anim = F80200
ID = 890301
pos = -492,13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
;pausemovetime = 0
scale = 1,1
sprpriority = -50
;ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;trans =
persistent = 0
supermovetime = 99999
pausemovetime = 99999

[State 890301, Fan]
type = PlaySnd
trigger1 = P2stateno = 890304
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
value = F101,0
persistent = 0

[State 890301, FanGuncked]
type = PlaySnd
trigger1 = P2stateno = 890304
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
value = F101,5
persistent = 0

;----Acid Finisher

[State 890301, Acid]
type = Explod
trigger1 = P2stateno = 890306
trigger1 = NumExplod(890300) = 0
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
anim = F80202
ID = 890300
pos = -185,13
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
;pausemovetime = 0
scale = 1,1
sprpriority = 50
;ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;trans =
persistent = 0
supermovetime = 99999
pausemovetime = 99999

[State 890301, AcidSpurt]
type = PlaySnd
trigger1 = P2stateno = 890306
trigger1 = stagevar(info.name) = "Ultimate_Syrian_Desert_Refinery_ECCftDS"
value = F101,1
persistent = 0

[State 890301, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 890301
ctrl = 0
ignorehitpause = 1

;----------------------------------------------
;Hit react EC Syrian Oil Refinery Stage finisher #1
[Statedef 890302]
type    = A
movetype= I
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 5030
sprpriority = 6

[State 890302, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 890302, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

[State 890302, Width]
type = Width
trigger1 = 1
edge = 100,100
;value = 0,0
;ignorehitpause =
;persistent =

[State 890302, VelSet]
type = VelSet
trigger1 = time >=0
trigger1 = facing = -1
trigger1 = teamside = 1
trigger1=abs(Rootdist X-Helper(890300),Rootdist X) = [505,850]
x = -5.5
ignorehitpause = 1

[State 890302, VelSet]
type = VelSet
trigger1 = time >=0
trigger1 = facing = 1
trigger1 = teamside = 1
trigger1=abs(Rootdist X-Helper(890300),Rootdist X) = [505,850]
x = 5.5
ignorehitpause = 1

[State 890302, VelSet] ;Stop
type = VelSet
trigger1 = 1
;trigger1 = facing = -1
trigger1 = teamside = 1
trigger1=abs(Rootdist X-Helper(890300),Rootdist X) = [494,504]
x = 0
ignorehitpause = 1

;---Teamside 2 VVVVVVV

[State 890302, VelSet]
type = VelSet
trigger1 = time >=0
trigger1 = facing = -1
trigger1 = teamside = 2
trigger1=abs(Rootdist X-Helper(890301),Rootdist X) = [505,850]
x = -5.5
ignorehitpause = 1

[State 890302, VelSet]
type = VelSet
trigger1 = time >=0
trigger1 = facing = 1
trigger1 = teamside = 2
trigger1=abs(Rootdist X-Helper(890301),Rootdist X) = [505,850]
x = 5.5
ignorehitpause = 1

[State 890302, VelSet] ;Stop
type = VelSet
trigger1 = 1
;trigger1 = facing = -1
trigger1 = teamside = 2
trigger1=abs(Rootdist X-Helper(890301),Rootdist X) = [494,504]
x = 0
ignorehitpause = 1

[State 890302, VelSet]
type = VelSet
trigger1 = time = 0
y = -11
ignorehitpause = 1

[State 890302, VelAdd]
type = VelAdd
trigger1 = 1
y = .34
ignorehitpause = 1

[State 890302, ChangeState]
type = ChangeState
triggerall = time >=10
trigger1 = Pos Y >= -25
trigger1 = Vel Y > 0
value = 890304
ctrl = 0

;----------------------------------------------
;Hit react EC Syrian Oil Refinery Stage finisher End
[Statedef 890304]
type    = A
movetype= I
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 9800
sprpriority = 6

[State 890303, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0
ignorehitpause = 1

[State 890303, VelAdd]
type = VelAdd
trigger1 = 1
y = 0
ignorehitpause = 1

[State 890303, PosSet]
type = PosSet
trigger1 = time = 30
x = 0
y = 700
;ignorehitpause =
;persistent =

[State 890303, ChangeState]
type = ChangeState
trigger1 = time >= 350
value = 5150
ctrl = 1
;anim =
;ignorehitpause =
;persistent =

;----------------------------------------------
;Hit react EC Syrian Oil Refinery Stage finisher #2
[Statedef 890305]
type    = A
movetype= I
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 5030
sprpriority = 6

[State 890305, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 890305, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

[State 890305, Width]
type = Width
trigger1 = 1
edge = 100,100
;value = 0,0
;ignorehitpause =
;persistent =

[State 890305, VelSet]
type = VelSet
trigger1 = time >=0
trigger1 = facing = -1
trigger1 = teamside = 1
trigger1=abs(Rootdist X-Helper(890300),Rootdist X) = [210,480]
x = -5.5
ignorehitpause = 1

[State 890305, VelSet]
type = VelSet
trigger1 = time >=0
trigger1 = facing = 1
trigger1 = teamside = 1
trigger1=abs(Rootdist X-Helper(890300),Rootdist X) = [210,480]
x = 5.5
ignorehitpause = 1

[State 890305, VelSet] ;Stop
type = VelSet
trigger1 = 1
;trigger1 = facing = -1
trigger1 = teamside = 1
trigger1=abs(Rootdist X-Helper(890300),Rootdist X) = [199,209]
x = 0
ignorehitpause = 1

;---Teamside 2 VVVVVVV

[State 890305, VelSet]
type = VelSet
trigger1 = time >=0
trigger1 = facing = -1
trigger1 = teamside = 2
trigger1=abs(Rootdist X-Helper(890301),Rootdist X) = [210,480]
x = -5.5
ignorehitpause = 1

[State 890305, VelSet]
type = VelSet
trigger1 = time >=0
trigger1 = facing = 1
trigger1 = teamside = 2
trigger1=abs(Rootdist X-Helper(890301),Rootdist X) = [210,480]
x = 5.5
ignorehitpause = 1

[State 890305, VelSet] ;Stop
type = VelSet
trigger1 = 1
;trigger1 = facing = -1
trigger1 = teamside = 2
trigger1=abs(Rootdist X-Helper(890301),Rootdist X) = [199,209]
x = 0
ignorehitpause = 1

[State 890305, VelSet]
type = VelSet
trigger1 = time = 0
y = -11
ignorehitpause = 1

[State 890305, VelAdd]
type = VelAdd
trigger1 = 1
y = .34
ignorehitpause = 1

[State 890305, ChangeState]
type = ChangeState
triggerall = time >=10
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 890306
ctrl = 0

;----------------------------------------------
;Hit react EC Syrian Oil Refinery Stage finisher End
[Statedef 890306]
type    = A
movetype= I
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 5080
sprpriority = 6

[State 890306, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0
ignorehitpause = 1

[State 890306, VelAdd]
type = VelAdd
trigger1 = 1
y = 0
ignorehitpause = 1

[State 890306, ChangeAnim]
type = ChangeAnim
trigger1 = time = 48
value = 9800
;elem = 1
;ignorehitpause =
;persistent =

[State 890306, AcidCrackle]
type = PlaySnd
trigger1 = time = 46
value = F101,3
persistent = 0

[State 890306, AcidGurgle]
type = PlaySnd
trigger1 = time = 100
value = F101,4
persistent = 0

[State 890306, AcidScream]
type = PlaySnd
trigger1 = time = 630
value = F101,2
persistent = 0

[State 890306, PosSet]
type = PosSet
trigger1 = time = 150
x = 0
y = 700
;ignorehitpause =
;persistent =

[State 890306, ChangeState]
type = ChangeState
trigger1 = time >= 890
value = 5150
ctrl = 1
;anim =
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
;Amazon Stage RocksLeft
[Statedef 890700]
anim = 889500
type = C
movetype= I
physics = S

[State 890700, Stand]
type = HitDef
triggerall = P2dist x <=50
triggerall = P2dist x >=-50
triggerall = NumEnemy > 0
triggerall = RoundState >= 1
triggerall = P2StateType != S
triggerall = P2StateType != C
triggerall = enemy,StateType != S
triggerall = enemy,StateType != C
triggerall = p2stateno != [5000,5011]
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, Vel Y >= 0
trigger1 = EnemyNear, Pos Y <=-84
attr = C,NT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = A-        ;HLAFD+-
;guardflag = MA         ;HLA
affectteam = B          ;B,E,F
;animtype = light          ;light,medium,hard,back,up,diagup
;air.animtype = light
;fall.animtype = Back
;priority = 4,Hit
;damage = 0,0
;pausetime = 0 ,0
;guard.pausetime = 0,0
sparkno = -1
;guard.sparkno = S3100
;sparkxy = 0,0
;hitsound = S1,0
;guardsound = S2,0
;ground.type = High      ;Low,Trip,None
;air.type = High
;ground.slidetime = 0
;guard.slidetime = 0
;ground.hittime = 0
;guard.hittime = 0
;air.hittime = 20
;guard.ctrltime = 0
guard.dist = 0
forcestand = 1
;yaccel = 0.5
;ground.velocity = 0,0
;guard.velocity = 0
;air.velocity = 0,0
;airguard.velocity = 0,0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;airguard.ctrltime = 0
;air.juggle = 0
;mindist = 0,0
;maxdist = 0,0
;snap = 0,0
;sprpriority = 1
;p1facing =
;p1getp2facing = 0
;p2facing =
;p1stateno =
p2stateno = 890701
;p2getp1state = 1
;forcestand = 0
;fall = 0
;fall.xvelocity = 0
;fall.yvelocity = -4.5
;fall.recover = 1
;fall.recovertime = 4
;fall.damage = 0
;air.fall = 0
;down.velocity = 0,0
;down.hittime = 0
;down.bounce = 0
;id = 0
;chainID = -1
;nochainID = -1
;hitonce = 1
;kill = 1
;guard.kill = 1
;fall.kill = 1
numhits = 0
;getpower = 0,0
;givepower = 0,0
;ignorehitpause =
;persistent =

;[State 890700, StateTypeSet]
;type = StateTypeSet
;triggerall = NumEnemy > 0
;triggerall = RoundState >= 1
;trigger1 = EnemyNear, StateType != A
;trigger1 = EnemyNear, Pos Y >-0;84
;movetype = I

[State 890700, StateTypeSet]
type = StateTypeSet
triggerall = NumEnemy > 0
triggerall = RoundState >= 1
;triggerall = P2stateno != [0,40]
;triggerall = P2stateno != [100,175]
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, Vel Y >= 0
trigger1 = EnemyNear, Pos Y <=-84
movetype = A

[State 890700, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 890700, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
flag2 = NoShadow
ignorehitpause = 1

[State 890700, DestroySelf]
type = DestroySelf
trigger1 = roundstate !=2

;-------------------------------------------------------------------------
;Amazon Stage RocksLeft hit react 1
[Statedef 890701]
type    = S
movetype= H
physics = N
ctrl = 0
SprPriority = 1
anim = 47

[State 890701, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 4004

[State 890701, PosSet]
type = PosSet
trigger1 = 1
Y = -87

[State 890701, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890701, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 890701, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 890701, SelfState]
type = SelfState
trigger1 = time >=1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Amazon Stage - Downed get-hit (lying down)
[Statedef 890702]
type    = L
movetype= H
physics = N

[State 890702, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 890702, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 890702, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 890702, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 890702, 4]
type = HitFallDamage
trigger1 = Time = 0

;[State 890702, 5]
;type = PosSet
;trigger1 = Time = 0
;y = 0

[State 890702, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 890702, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 890702, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
postype = p1
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 890702, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 890702, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 890702, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 890702, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 890702, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 890702, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 890702, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 890702, 15]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 890702, 16]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 890702, PosSet]
type = PosSet
trigger1 = 1
Y = -88

[State 8890702, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890702, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 890702, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 890702, SelfState]
type = SelfState
trigger1 = time >=10
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Amazon Stage Rocks Left 2
[Statedef 890703]
anim = 889500
type = C
movetype= I
physics = S

[State 890703, Stand]
type = HitDef
triggerall = P2dist x <=50
triggerall = P2dist x >=-50
triggerall = NumEnemy > 0
triggerall = RoundState >= 1
triggerall = P2StateType != S
triggerall = P2StateType != C
triggerall = enemy,StateType != S
triggerall = enemy,StateType != C
triggerall = p2stateno != [5000,5011]
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, Vel Y >= 0
trigger1 = EnemyNear, Pos Y <=-84
attr = C,NT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = A-        ;HLAFD+-
;guardflag = MA         ;HLA
affectteam = B          ;B,E,F
;animtype = light          ;light,medium,hard,back,up,diagup
;air.animtype = light
;fall.animtype = Back
;priority = 4,Hit
;damage = 0,0
;pausetime = 0 ,0
;guard.pausetime = 0,0
sparkno = -1
;guard.sparkno = S3100
;sparkxy = 0,0
;hitsound = S1,0
;guardsound = S2,0
;ground.type = High      ;Low,Trip,None
;air.type = High
;ground.slidetime = 0
;guard.slidetime = 0
;ground.hittime = 0
;guard.hittime = 0
;air.hittime = 20
;guard.ctrltime = 0
guard.dist = 0
forcestand = 1
;yaccel = 0.5
;ground.velocity = 0,0
;guard.velocity = 0
;air.velocity = 0,0
;airguard.velocity = 0,0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;airguard.ctrltime = 0
;air.juggle = 0
;mindist = 0,0
;maxdist = 0,0
;snap = 0,0
;sprpriority = 1
;p1facing =
;p1getp2facing = 0
;p2facing =
;p1stateno =
p2stateno = 890704
;p2getp1state = 1
;forcestand = 0
;fall = 0
;fall.xvelocity = 0
;fall.yvelocity = -4.5
;fall.recover = 1
;fall.recovertime = 4
;fall.damage = 0
;air.fall = 0
;down.velocity = 0,0
;down.hittime = 0
;down.bounce = 0
;id = 0
;chainID = -1
;nochainID = -1
;hitonce = 1
;kill = 1
;guard.kill = 1
;fall.kill = 1
numhits = 0
;getpower = 0,0
;givepower = 0,0
;ignorehitpause =
;persistent =

;[State 890700, StateTypeSet]
;type = StateTypeSet
;triggerall = NumEnemy > 0
;triggerall = RoundState >= 1
;trigger1 = EnemyNear, StateType != A
;trigger1 = EnemyNear, Pos Y >-0;84
;movetype = I

[State 890703, StateTypeSet]
type = StateTypeSet
triggerall = NumEnemy > 0
triggerall = RoundState >= 1
;triggerall = P2stateno != [0,40]
;triggerall = P2stateno != [100,175]
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, Vel Y >= 0
trigger1 = EnemyNear, Pos Y <=-84
movetype = A

[State 890703, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 890703, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
flag2 = NoShadow
ignorehitpause = 1

[State 890703, DestroySelf]
type = DestroySelf
trigger1 = roundstate !=2

;-------------------------------------------------------------------------
;Amazon Stage Rocks Left hit react 2
[Statedef 890704]
type    = S
movetype= H
physics = N
ctrl = 0
SprPriority = 1
anim = 47

[State 890704, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 4004

[State 890704, PosSet]
type = PosSet
trigger1 = 1
Y = -95

[State 890704, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890704, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 890704, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 890704, SelfState]
type = SelfState
trigger1 = time >=1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Amazon Stage - Downed get-hit (lying down)
[Statedef 890705]
type    = L
movetype= H
physics = N

[State 890705, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 890705, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 890705, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 890705, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 890705, 4]
type = HitFallDamage
trigger1 = Time = 0

;[State 890705, 5]
;type = PosSet
;trigger1 = Time = 0
;y = 0

[State 890705, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 890705, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 890705, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
postype = p1
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 890705, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 890705, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 890705, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 890705, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 890705, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 890705, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 890705, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 890705, 15]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 890705, 16]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 890705, PosSet]
type = PosSet
trigger1 = 1
Y = -95

[State 8890705, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890705, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 890705, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 890705, SelfState]
type = SelfState
trigger1 = time >=10
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Amazon Stage Rocks Right 3
[Statedef 890706]
anim = 889500
type = C
movetype= I
physics = S

[State 890706, Stand]
type = HitDef
triggerall = P2dist x <=50
triggerall = P2dist x >=-50
triggerall = NumEnemy > 0
triggerall = RoundState >= 1
triggerall = P2StateType != S
triggerall = P2StateType != C
triggerall = enemy,StateType != S
triggerall = enemy,StateType != C
triggerall = p2stateno != [5000,5011]
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, Vel Y >= 0
trigger1 = EnemyNear, Pos Y <=-84
attr = C,NT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = A-        ;HLAFD+-
;guardflag = MA         ;HLA
affectteam = B          ;B,E,F
;animtype = light          ;light,medium,hard,back,up,diagup
;air.animtype = light
;fall.animtype = Back
;priority = 4,Hit
;damage = 0,0
;pausetime = 0 ,0
;guard.pausetime = 0,0
sparkno = -1
;guard.sparkno = S3100
;sparkxy = 0,0
;hitsound = S1,0
;guardsound = S2,0
;ground.type = High      ;Low,Trip,None
;air.type = High
;ground.slidetime = 0
;guard.slidetime = 0
;ground.hittime = 0
;guard.hittime = 0
;air.hittime = 20
;guard.ctrltime = 0
guard.dist = 0
forcestand = 1
;yaccel = 0.5
;ground.velocity = 0,0
;guard.velocity = 0
;air.velocity = 0,0
;airguard.velocity = 0,0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;airguard.ctrltime = 0
;air.juggle = 0
;mindist = 0,0
;maxdist = 0,0
;snap = 0,0
;sprpriority = 1
;p1facing =
;p1getp2facing = 0
;p2facing =
;p1stateno =
p2stateno = 890704
;p2getp1state = 1
;forcestand = 0
;fall = 0
;fall.xvelocity = 0
;fall.yvelocity = -4.5
;fall.recover = 1
;fall.recovertime = 4
;fall.damage = 0
;air.fall = 0
;down.velocity = 0,0
;down.hittime = 0
;down.bounce = 0
;id = 0
;chainID = -1
;nochainID = -1
;hitonce = 1
;kill = 1
;guard.kill = 1
;fall.kill = 1
numhits = 0
;getpower = 0,0
;givepower = 0,0
;ignorehitpause =
;persistent =

;[State 890700, StateTypeSet]
;type = StateTypeSet
;triggerall = NumEnemy > 0
;triggerall = RoundState >= 1
;trigger1 = EnemyNear, StateType != A
;trigger1 = EnemyNear, Pos Y >-0;84
;movetype = I

[State 890706, StateTypeSet]
type = StateTypeSet
triggerall = NumEnemy > 0
triggerall = RoundState >= 1
;triggerall = P2stateno != [0,40]
;triggerall = P2stateno != [100,175]
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, Vel Y >= 0
trigger1 = EnemyNear, Pos Y <=-84
movetype = A

[State 890706, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 890706, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
flag2 = NoShadow
ignorehitpause = 1

[State 890706, DestroySelf]
type = DestroySelf
trigger1 = roundstate !=2

;---------------------------------------------------------------------------
;Amazon Stage Rocks Right 4
[Statedef 890707]
anim = 889500
type = C
movetype= I
physics = S

[State 890707, Stand]
type = HitDef
triggerall = P2dist x <=50
triggerall = P2dist x >=-50
triggerall = NumEnemy > 0
triggerall = RoundState >= 1
triggerall = P2StateType != S
triggerall = P2StateType != C
triggerall = enemy,StateType != S
triggerall = enemy,StateType != C
triggerall = p2stateno != [5000,5011]
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, Vel Y >= 0
trigger1 = EnemyNear, Pos Y <=-84
attr = C,NT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = A-        ;HLAFD+-
;guardflag = MA         ;HLA
affectteam = B          ;B,E,F
;animtype = light          ;light,medium,hard,back,up,diagup
;air.animtype = light
;fall.animtype = Back
;priority = 4,Hit
;damage = 0,0
;pausetime = 0 ,0
;guard.pausetime = 0,0
sparkno = -1
;guard.sparkno = S3100
;sparkxy = 0,0
;hitsound = S1,0
;guardsound = S2,0
;ground.type = High      ;Low,Trip,None
;air.type = High
;ground.slidetime = 0
;guard.slidetime = 0
;ground.hittime = 0
;guard.hittime = 0
;air.hittime = 20
;guard.ctrltime = 0
guard.dist = 0
forcestand = 1
;yaccel = 0.5
;ground.velocity = 0,0
;guard.velocity = 0
;air.velocity = 0,0
;airguard.velocity = 0,0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;airguard.ctrltime = 0
;air.juggle = 0
;mindist = 0,0
;maxdist = 0,0
;snap = 0,0
;sprpriority = 1
;p1facing =
;p1getp2facing = 0
;p2facing =
;p1stateno =
p2stateno = 890701
;p2getp1state = 1
;forcestand = 0
;fall = 0
;fall.xvelocity = 0
;fall.yvelocity = -4.5
;fall.recover = 1
;fall.recovertime = 4
;fall.damage = 0
;air.fall = 0
;down.velocity = 0,0
;down.hittime = 0
;down.bounce = 0
;id = 0
;chainID = -1
;nochainID = -1
;hitonce = 1
;kill = 1
;guard.kill = 1
;fall.kill = 1
numhits = 0
;getpower = 0,0
;givepower = 0,0
;ignorehitpause =
;persistent =

;[State 890700, StateTypeSet]
;type = StateTypeSet
;triggerall = NumEnemy > 0
;triggerall = RoundState >= 1
;trigger1 = EnemyNear, StateType != A
;trigger1 = EnemyNear, Pos Y >-0;84
;movetype = I

[State 890707, StateTypeSet]
type = StateTypeSet
triggerall = NumEnemy > 0
triggerall = RoundState >= 1
;triggerall = P2stateno != [0,40]
;triggerall = P2stateno != [100,175]
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, Vel Y > 0  ;= 0
trigger1 = EnemyNear, Pos Y <=-84
movetype = A

[State 890707, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 890707, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
flag2 = NoShadow
ignorehitpause = 1

[State 890707, DestroySelf]
type = DestroySelf
trigger1 = roundstate !=2

;---------------------------------------------------------------------------
;Amazon Stage Rocks Right 5
[Statedef 890708]
anim = 889500
type = C
movetype= I
physics = S

[State 890708, Stand]
type = HitDef
triggerall = P2dist x <=50
triggerall = P2dist x >=-50
triggerall = NumEnemy > 0
triggerall = RoundState >= 1
triggerall = P2StateType != S
triggerall = P2StateType != C
triggerall = enemy,StateType != S
triggerall = enemy,StateType != C
triggerall = p2stateno != [5000,5011]
;triggerall = p2stateno != 55
;triggerall = root,stateno != 55
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, Vel Y >= 0
trigger1 = EnemyNear, Pos Y <=-84
attr = C,NT    ;NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = A-        ;HLAFD+-
;guardflag = MA         ;HLA
affectteam = B          ;B,E,F
;animtype = light          ;light,medium,hard,back,up,diagup
;air.animtype = light
;fall.animtype = Back
;priority = 4,Hit
;damage = 0,0
;pausetime = 0 ,0
;guard.pausetime = 0,0
sparkno = -1
;guard.sparkno = S3100
;sparkxy = 0,0
;hitsound = S1,0
;guardsound = S2,0
;ground.type = High      ;Low,Trip,None
;air.type = High
;ground.slidetime = 0
;guard.slidetime = 0
;ground.hittime = 0
;guard.hittime = 0
;air.hittime = 20
;guard.ctrltime = 0
guard.dist = 0
forcestand = 1
;yaccel = 0.5
;ground.velocity = 0,0
;guard.velocity = 0
;air.velocity = 0,0
;airguard.velocity = 0,0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;airguard.ctrltime = 0
;air.juggle = 0
;mindist = 0,0
;maxdist = 0,0
;snap = 0,0
;sprpriority = 1
;p1facing =
;p1getp2facing = 0
;p2facing =
;p1stateno =
p2stateno = 890704
;p2getp1state = 1
;forcestand = 0
;fall = 0
;fall.xvelocity = 0
;fall.yvelocity = -4.5
;fall.recover = 1
;fall.recovertime = 4
;fall.damage = 0
;air.fall = 0
;down.velocity = 0,0
;down.hittime = 0
;down.bounce = 0
;id = 0
;chainID = -1
;nochainID = -1
;hitonce = 1
;kill = 1
;guard.kill = 1
;fall.kill = 1
numhits = 0
;getpower = 0,0
;givepower = 0,0
;ignorehitpause =
;persistent =

;[State 890700, StateTypeSet]
;type = StateTypeSet
;triggerall = NumEnemy > 0
;triggerall = RoundState >= 1
;trigger1 = EnemyNear, StateType != A
;trigger1 = EnemyNear, Pos Y >-0;84
;movetype = I

[State 890708, StateTypeSet]
type = StateTypeSet
triggerall = NumEnemy > 0
triggerall = RoundState >= 1
;triggerall = enemy,stateno != [0,40]
;triggerall = enemy,stateno != [100,175]
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, Vel Y > 0 ;= 0
trigger1 = EnemyNear, Pos Y <=-84
movetype = A

[State 890708, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 890708, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
flag2 = NoShadow
ignorehitpause = 1

[State 890708, DestroySelf]
type = DestroySelf
trigger1 = roundstate !=2

;---------------------------------------------------------------------------
;Amazon Stage Marker 1
[Statedef 890710]
anim = 9800   ;7111
type = S
movetype= I
physics = S

[State 890710, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = noautoturn
;flag2 = invisible
;flag3 = roundnotover
;ignorehitpause =
;persistent =

[State 890710, Neverending]
type = ChangeState
trigger1 = movecontact
value = 890725
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
;Amazon Stage Marker 2
[Statedef 890711]
anim = 9800  ;7111
type = S
movetype= I
physics = S

[State 890711, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = noautoturn
;flag2 = invisible
;flag3 = roundnotover
;ignorehitpause =
;persistent =

[State 890711, Neverending]
type = ChangeState
trigger1 = movecontact
value = 890725
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;-------------------------
;Waterfront stage Finisher Vendetta enemy react
[Statedef 890720]
type    = S
movetype= H
physics = S
juggle  = 1
velset = 0,0
anim = 9800   ;Invisible
ctrl = 0

[state 890720, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = noshadow
flag2 = roundnotover
ignorehitpause = 1

[State 890720, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = nokoslow
ignorehitpause = 1

[State 890720, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 890720, 4]
type = Velset
trigger1 = time = 0
x = -.5
y = -7.8

[State 890720, 5]
type = VelAdd
trigger1 = time >= 0
x = 0
y = 0.2

[State 890720, Player]
type = Explod
trigger1 = time = 0
anim = 5030
;ID =
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
removetime = 30
scale = 1,1
sprpriority = 14
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0

[State 890720, Player]
type = Explod
trigger1 = time = 30
anim = 5050
ID = 890720
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
removetime = -1
scale = 1,1
sprpriority = 14
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0

[State 890720, ChangeState]
type = ChangeState
triggerall = Vel y > 0
trigger1 = Pos Y >= 60
value = 890721
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;-------------------------
;Waterfront stage Finisher Vendetta enemy react ending
[Statedef 890721]
type    = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
anim = 9800   ;Invisible
ctrl = 0

[State 890721, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890720
;ignorehitpause =
;persistent =

[state 890721, AssertSpecial]
type = AssertSpecial
trigger1 = time <=80
flag = roundnotover
ignorehitpause = 1

[State 890721, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = nokoslow
flag2 = noshadow
ignorehitpause = 1

[State 890721, WaterSplash]
type = Explod
trigger1 = time = 0
anim = F89124
;ID =
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = -1
scale = 1.2,1
sprpriority = 14
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0

[State 890721, WaterSplash]
type = PlaySnd
trigger1 = time = 0
value = F100,0
;ignorehitpause =
;persistent =

[State 890721, WaterSplash2]
type = PlaySnd
trigger1 = time = 0
value = F93,random%2
;ignorehitpause =
;persistent =

[State 890721, WaterSplash3]
type = PlaySnd
trigger1 = time = 20
value = F92,random%5
;ignorehitpause =
;persistent =

[State 890721, SelfState]
type = SelfState
trigger1 = time >=90
value = 5150
ctrl = 1
;anim =
;ignorehitpause =
;persistent =

;-------------------------------------------------------------
;Ninja Warriors Glass
[Statedef 890730]
type    = A
movetype= H
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 890730, varrandom]
type = VarRandom
trigger1 = 1
v = 20
range = -3,-8

[State 890730, varrandom]
type = VarRandom
trigger1 = 1
v = 21
range = 3,9

[State 890730, velset]
type = velset
trigger1 = time = 1
y = var(20)
x = var(21)

[State 890730, veladd]
type = veladd
trigger1 = time >= 1
y = .28

[State 890730, Glass]
type = Explod
trigger1 = time = 0
anim = F145+random%4
ID = 890730
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
random = 20,10
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 35
ontop = 0
ownpal = 1
removeongethit = 0

[State 890730, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
id = 890730
ignorehitpause = 1
;persistent =

[State 890730, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
ignorehitpause = 1

;-------------------------------------------------------------
;Ninja Warriors Glass 2
[Statedef 890731]
type    = A
movetype= H
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 890731, varrandom]
type = VarRandom
trigger1 = 1
v = 22
range = -3,-8

[State 890731, varrandom]
type = VarRandom
trigger1 = 1
v = 23
range = 3,9

[State 890731, velset]
type = velset
trigger1 = time = 1
y = var(22)
x = var(23)

[State 890731, veladd]
type = veladd
trigger1 = time >= 1
y = .28

[State 890731, Glass]
type = Explod
trigger1 = time = 0
anim = F145+random%4
ID = 890731
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
random = 20,10
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 35
ontop = 0
ownpal = 1
removeongethit = 0

[State 890731, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
id = 890731
ignorehitpause = 1
;persistent =

[State 890731, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
ignorehitpause = 1

;-------------------------------------------------------------
;Ninja Warriors Glass 3
[Statedef 890732]
type    = A
movetype= H
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 890732, varrandom]
type = VarRandom
trigger1 = 1
v = 24
range = -3,-8

[State 890732, varrandom]
type = VarRandom
trigger1 = 1
v = 25
range = 3,9

[State 890732, velset]
type = velset
trigger1 = time = 1
y = var(24)
x = var(25)

[State 890732, veladd]
type = veladd
trigger1 = time >= 1
y = .28

[State 890732, Glass]
type = Explod
trigger1 = time = 0
anim = F145+random%4
ID = 890732
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
random = 20,10
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 35
ontop = 0
ownpal = 1
removeongethit = 0

[State 890732, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
id = 890732
ignorehitpause = 1
;persistent =

[State 890732, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
ignorehitpause = 1

;-------------------------------------------------------------
;Ninja Warriors Glass 4
[Statedef 890733]
type    = A
movetype= H
physics = N
anim = 9800  ;invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 890733, varrandom]
type = VarRandom
trigger1 = 1
v = 26
range = -3,-8

[State 890733, varrandom]
type = VarRandom
trigger1 = 1
v = 27
range = 3,9

[State 890733, velset]
type = velset
trigger1 = time = 1
y = var(26)
x = var(27)

[State 890733, veladd]
type = veladd
trigger1 = time >= 1
y = .28

[State 890733, Glass]
type = Explod
trigger1 = time = 0
anim = F145+random%4
ID = 890733
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
random = 20,10
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 35
ontop = 0
ownpal = 1
removeongethit = 0

[State 890733, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
id = 890733
ignorehitpause = 1
;persistent =

[State 890733, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
ignorehitpause = 1

;-------------------------------------------------------------
;Ninja Warriors Glass 5
[Statedef 890734]
type    = A
movetype= H
physics = N
anim = 9800  ;invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 890734, varrandom]
type = VarRandom
trigger1 = 1
v = 28
range = -3,-8

[State 890734, varrandom]
type = VarRandom
trigger1 = 1
v = 29
range = 3,9

[State 890734, velset]
type = velset
trigger1 = time = 1
y = var(28)
x = var(29)

[State 890734, veladd]
type = veladd
trigger1 = time >= 1
y = .28

[State 890734, Glass]
type = Explod
trigger1 = time = 0
anim = F145+random%4
ID = 890734
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
random = 20,10
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 35
ontop = 0
ownpal = 1
removeongethit = 0

[State 890734, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
id = 890734
ignorehitpause = 1
;persistent =

[State 890734, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
ignorehitpause = 1

;----------------------------------
;Ninja Warriors Dystopia Transformer 1
[Statedef 890740]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 890740, Transformer]
type = Explod
trigger1 = time = 0
anim = F156
ID = 890740
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 890740, Width]
type = Width
trigger1 = 1
edge = 0,0
player = 1,0

[State 890740, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890740, Transformer2]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "NWTransformer2"
ID = 890750
stateno = 890750
pos = 64,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
scale = 1,1
;ignorehitpause =
;persistent =

[State 890740, Transformer3]
type = Helper
trigger1 = time = 1
helpertype = normal ;player
name = "NWTransformer3"
ID = 890760
stateno = 890760
pos = 288,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
scale = 1,1
;ignorehitpause =
;persistent =

[State 890740, Transformer4]
type = Helper
trigger1 = time = 2
helpertype = normal ;player
name = "NWTransformer4"
ID = 890770
stateno = 890770
pos = 352,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
scale = 1,1
;ignorehitpause =
;persistent =

[State 890740, ChangeState]
type = ChangeState
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]        ;>= -103
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890741 + (random % 5)
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 1 Cont..
[Statedef 890741]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890741, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890741, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890742
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 1 Cont..
[Statedef 890742]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890742, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890742, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890743
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 1 Cont..
[Statedef 890743]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890743, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890743, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890744
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 1 Cont..
[Statedef 890744]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890744, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890744, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890745
ctrl = 0

;------------------------------
;Destroyed Ninja Warriors Dystopia Transformer 1 end
[Statedef 890745]
type    = S
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 889363 ;Hitbox
velset = 0,0
persistent = 1
juggle = 1
sprpriority = -2

[State 890745, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890740

[State 890745, Explosion]
type = Explod
trigger1 = time = 0
anim = F89164
ID = 889216
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0

[State 890745, Explosion]
type = PlaySnd
trigger1 = time = 0
value = F85,1
ignorehitpause = 1

[State 890745, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage  =  80,10
hitflag = MAF
guardflag =
affectteam = B
pausetime = 0,0
sparkno = 89127
getpower = 25,10
givepower = 30,5
priority = 5, Hit
guard.sparkno = S6868
sparkxy = 0,-10
hitsound   = F31,random%3
guardsound = S1,1
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
guard.ctrltime =13
ground.velocity = -6.7
air.velocity = -2.5,-4
guard.kill = 1
p2stateno = 889298

[State 890745, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 60
ampl = 5
phase = 60
;ignorehitpause =
;persistent =

[State 890745, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890745, Smoke1]
type = Explod
trigger1 = time = 20
trigger2 = time = 44
trigger3 = time = 68
trigger4 = time = 92
anim = F153
;ID = 889216
pos = -17,-18
vel = .7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890745, Smoke1a]
type = Explod
trigger1 = time = 32
trigger2 = time = 56
trigger3 = time = 80
trigger4 = time = 104
anim = F153
;ID = 889216
pos = -17,-18
vel = -.7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890745, Smoke2]
type = Explod
trigger1 = time = 19
trigger2 = time = 43
trigger3 = time = 67
trigger4 = time = 91
anim = F153
;ID = 889216
pos = 17,-18
vel = .7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890745, Smoke2a]
type = Explod
trigger1 = time = 31
trigger2 = time = 55
trigger3 = time = 79
trigger4 = time = 103
anim = F153
;ID = 889216
pos = 17,-18
vel = -.7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890745, NeverEnding]
type = DestroySelf
trigger1 = Vel Y > 50
ignorehitpause = 0
;persistent =

;----------------------------------
;Ninja Warriors Dystopia Transformer 2
[Statedef 890750]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 890750, Transformer]
type = Explod
trigger1 = time = 0
anim = F156
ID = 890750
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 890750, Width]
type = Width
trigger1 = 1
edge = 0,0
player = 1,0

[State 890750, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890750, ChangeState]
type = ChangeState
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890751 + (random % 5)
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 2 Cont..
[Statedef 890751]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890751, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890751, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890752
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 2 Cont..
[Statedef 890752]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890752, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890752, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890753
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 2 Cont..
[Statedef 890753]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890753, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890753, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890754
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 2 Cont..
[Statedef 890754]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890754, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890754, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890755
ctrl = 0

;------------------------------
;Destroyed Ninja Warriors Dystopia Transformer 2 end
[Statedef 890755]
type    = S
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 889363 ;Hitbox
velset = 0,0
persistent = 1
juggle = 1
sprpriority = -2

[State 890755, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890750

[State 890755, Explosion]
type = Explod
trigger1 = time = 0
anim = F89164
ID = 889216
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0

[State 890755, Explosion]
type = PlaySnd
trigger1 = time = 0
value = F85,1
ignorehitpause = 1

[State 890755, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage  =  80,10
hitflag = MAF
guardflag =
affectteam = B
pausetime = 0,0
sparkno = 89127
getpower = 25,10
givepower = 30,5
priority = 5, Hit
guard.sparkno = S6868
sparkxy = 0,-10
hitsound   = F31,random%3
guardsound = S1,1
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
guard.ctrltime =13
ground.velocity = -6.7
air.velocity = -2.5,-4
guard.kill = 1
p2stateno = 889298

[State 890755, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 60
ampl = 5
phase = 60
;ignorehitpause =
;persistent =

[State 890755, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890755, Smoke1]
type = Explod
trigger1 = time = 20
trigger2 = time = 44
trigger3 = time = 68
trigger4 = time = 92
anim = F153
;ID = 889216
pos = -17,-18
vel = .7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890755, Smoke1a]
type = Explod
trigger1 = time = 32
trigger2 = time = 56
trigger3 = time = 80
trigger4 = time = 104
anim = F153
;ID = 889216
pos = -17,-18
vel = -.7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890755, Smoke2]
type = Explod
trigger1 = time = 19
trigger2 = time = 43
trigger3 = time = 67
trigger4 = time = 91
anim = F153
;ID = 889216
pos = 17,-18
vel = .7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890755, Smoke2a]
type = Explod
trigger1 = time = 31
trigger2 = time = 55
trigger3 = time = 79
trigger4 = time = 103
anim = F153
;ID = 889216
pos = 17,-18
vel = -.7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890755, DestroySelf]
type = DestroySelf
trigger1 = time >=200
ignorehitpause = 0
;persistent =

;----------------------------------
;Ninja Warriors Dystopia Transformer 3
[Statedef 890760]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 890760, Transformer]
type = Explod
trigger1 = time = 0
anim = F156
ID = 890760
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 890760, Width]
type = Width
trigger1 = 1
edge = 0,0
player = 1,0

[State 890760, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890760, ChangeState]
type = ChangeState
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890761 + (random % 5)
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 3 Cont..
[Statedef 890761]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890761, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890761, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890762
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 3 Cont..
[Statedef 890762]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890762, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890762, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890763
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 3 Cont..
[Statedef 890763]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890763, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890763, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890764
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 3 Cont..
[Statedef 890764]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890764, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890764, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890765
ctrl = 0

;------------------------------
;Destroyed Ninja Warriors Dystopia Transformer 3 end
[Statedef 890765]
type    = S
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 889363 ;Hitbox
velset = 0,0
persistent = 1
juggle = 1
sprpriority = -2

[State 890765, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890760

[State 890765, Explosion]
type = Explod
trigger1 = time = 0
anim = F89164
ID = 889216
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0

[State 890765, Explosion]
type = PlaySnd
trigger1 = time = 0
value = F85,1
ignorehitpause = 1

[State 890765, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage  =  80,10
hitflag = MAF
guardflag =
affectteam = B
pausetime = 0,0
sparkno = 89127
getpower = 25,10
givepower = 30,5
priority = 5, Hit
guard.sparkno = S6868
sparkxy = 0,-10
hitsound   = F31,random%3
guardsound = S1,1
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
guard.ctrltime =13
ground.velocity = -6.7
air.velocity = -2.5,-4
guard.kill = 1
p2stateno = 889298

[State 890765, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 60
ampl = 5
phase = 60
;ignorehitpause =
;persistent =

[State 890765, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890765, Smoke1]
type = Explod
trigger1 = time = 20
trigger2 = time = 44
trigger3 = time = 68
trigger4 = time = 92
anim = F153
;ID = 889216
pos = -17,-18
vel = .7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890765, Smoke1a]
type = Explod
trigger1 = time = 32
trigger2 = time = 56
trigger3 = time = 80
trigger4 = time = 104
anim = F153
;ID = 889216
pos = -17,-18
vel = -.7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890765, Smoke2]
type = Explod
trigger1 = time = 19
trigger2 = time = 43
trigger3 = time = 67
trigger4 = time = 91
anim = F153
;ID = 889216
pos = 17,-18
vel = .7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890765, Smoke2a]
type = Explod
trigger1 = time = 31
trigger2 = time = 55
trigger3 = time = 79
trigger4 = time = 103
anim = F153
;ID = 889216
pos = 17,-18
vel = -.7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890765, DestroySelf]
type = DestroySelf
trigger1 = time >=200
ignorehitpause = 0
;persistent =

;----------------------------------
;Ninja Warriors Dystopia Transformer 4
[Statedef 890770]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
juggle = 25
sprpriority = -2

[State 890770, Transformer]
type = Explod
trigger1 = time = 0
anim = F156
ID = 890770
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = -20
ontop = 0
ownpal = 1
removeongethit = 0

[State 890770, Width]
type = Width
trigger1 = 1
edge = 0,0
player = 1,0

[State 890770, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890770, ChangeState]
type = ChangeState
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890771 + (random % 5)
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 4 Cont..
[Statedef 890771]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890771, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890771, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890772
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 4 Cont..
[Statedef 890772]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890772, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890772, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890773
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 4 Cont..
[Statedef 890773]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890773, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890773, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890774
ctrl = 0

;----------------------------------
;Ninja Warriors Dystopia Transformer 4 Cont..
[Statedef 890774]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
persistent = 1
juggle = 25
sprpriority = -2

[State 890774, No Shadows!]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890774, ChangeState]
type = ChangeState
trigger1 = time >=40
trigger1 = p2movetype = H
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-10,10]
trigger1 = P2BodyDist Y = [-60,10]
trigger2 = time >=40
trigger2 = root,movetype = H
trigger2 = root,statetype = A
trigger2 = RootDist X = [-10,10]
trigger2 = RootDist Y = [-60,10]
value = 890775
ctrl = 0

;------------------------------
;Destroyed Ninja Warriors Dystopia Transformer 4 end
[Statedef 890775]
type    = S
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 889363 ;Hitbox
velset = 0,0
persistent = 1
juggle = 1
sprpriority = -2

[State 890775, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890770

[State 890775, Explosion]
type = Explod
trigger1 = time = 0
anim = F89164
ID = 889216
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0

[State 890775, Explosion]
type = PlaySnd
trigger1 = time = 0
value = F85,1
ignorehitpause = 1

[State 890775, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage  =  80,10
hitflag = MAF
guardflag =
affectteam = B
pausetime = 0,0
sparkno = 89127
getpower = 25,10
givepower = 30,5
priority = 5, Hit
guard.sparkno = S6868
sparkxy = 0,-10
hitsound   = F31,random%3
guardsound = S1,1
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
guard.ctrltime =13
ground.velocity = -6.7
air.velocity = -2.5,-4
guard.kill = 1
p2stateno = 889298

[State 890775, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 60
ampl = 5
phase = 60
;ignorehitpause =
;persistent =

[State 890775, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890775, Smoke1]
type = Explod
trigger1 = time = 20
trigger2 = time = 44
trigger3 = time = 68
trigger4 = time = 92
anim = F153
;ID = 889216
pos = -17,-18
vel = .7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890775, Smoke1a]
type = Explod
trigger1 = time = 32
trigger2 = time = 56
trigger3 = time = 80
trigger4 = time = 104
anim = F153
;ID = 889216
pos = -17,-18
vel = -.7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890775, Smoke2]
type = Explod
trigger1 = time = 19
trigger2 = time = 43
trigger3 = time = 67
trigger4 = time = 91
anim = F153
;ID = 889216
pos = 17,-18
vel = .7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890775, Smoke2a]
type = Explod
trigger1 = time = 31
trigger2 = time = 55
trigger3 = time = 79
trigger4 = time = 103
anim = F153
;ID = 889216
pos = 17,-18
vel = -.7,-2
accel = 0,-.02
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
removeongethit = 0
shadow = 0,0,0
persistent = 1

[State 890775, DestroySelf]
type = DestroySelf
trigger1 = time >=200
ignorehitpause = 0
;persistent =

;--------------------------------
;Sentinel Factory Xmen Fire Flair Stage Marker 1 Left for Player 1
[Statedef 890780]
type    = S
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889505 ;HitBox
velset = 0,0
juggle = 1
ctrl = 0

[State 890780, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890780, Fire Flair]
type = Explod
trigger1 = time = 0
anim = F80254
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 300
scale = 1,1
sprpriority = -10
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;supermovetime = 99999
;pausemovetime = 99999

[State 890780, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 85,10
getpower = 0,0
givepower = 0,0
hitflag = MAFD
affectteam = B
guardflag = ;unblockable
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = 31,random%3
guardsound = S2, 6
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,-7
guard.slidetime = 11
guard.hittime = 11
airguard.velocity = 0
guard.velocity = 0
air.velocity = -4,-5
air.fall = 1
p2stateno = 889298
fall.recover = 0
fall = 1
;ID = 889759
;nochainID = 889759
guard.Dist = 0

[State 890780, ChangeState];Perpetual Loop
type = ChangeState
trigger1 = time >= 400
value = 890780
ctrl = 0
;ignorehitpause = 1

;--------------------------------
;Sentinel Factory Xmen Fire Flair Stage Marker 2 Left for Player 1
[Statedef 890781]
type    = S
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 889506 ;HitBox
velset = 0,0
juggle = 1
ctrl = 0

[State 890781, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890781, Fire Flair]
type = Explod
trigger1 = time = 0
anim = F80255
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 300
scale = 1,1
sprpriority = -10
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;supermovetime = 99999
;pausemovetime = 99999

[State 890781, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 85,10
getpower = 0,0
givepower = 0,0
hitflag = MAFD
affectteam = B
guardflag = ;unblockable
pausetime = 0,0
sparkno = -1
sparkxy = 0,0
hitsound   = 31,random%3
guardsound = S2, 6
guard.sparkno = -1
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,-7
guard.slidetime = 11
guard.hittime = 11
airguard.velocity = 0
guard.velocity = 0
air.velocity = -4,-5
air.fall = 1
p2stateno = 889298
fall.recover = 0
fall = 1
;ID = 889759
;nochainID = 889759
guard.Dist = 0

[State 890781, ChangeState];Perpetual Loop
type = ChangeState
trigger1 = time >= 400
value = 890781
ctrl = 0
ignorehitpause = 1

;------------------------------------------------------------------------------------------------------------
;Enemy falling to Ocean "Violent Voyage finisher stage" Cody & Haggar Alternate
[Statedef 890785]
type = A
movetype = H
physics = N
anim = 9800 ;invisible
ctrl = 0
sprpriority = 3

[State 890785, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890785, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

;[State 890785, PosAdd]
;type = PosAdd
;trigger1 = Cond(Facing = 1, ScreenPos X < 160, ScreenPos X > 160)
;x = 25 =(160 - ScreenPos X)*Facing/25

[State 890785]
type = ChangeAnim
trigger1 = Time = 0
value = 5930

[State 890785, SprPriority]
type = SprPriority
trigger1 = time >=33
value = -7

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=10 && time <=11
scale = .99, .99

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=12 && time <=13
scale = .98, .98

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=14 && time <=15
scale = .97, .97

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=16 && time <=17
scale = .96, .96

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=18 && time <=19
scale = .95, .95

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=20 && time <=21
scale = .94, .94

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=22 && time <=23
scale = .93, .93

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=24 && time <=25
scale = .92, .92

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=26 && time <=27
scale = .91, .91

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=28 && time <=29
scale = .90, .90

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=30 && time <=31
scale = .89, .89

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=32 && time <=33
scale = .88, .88

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=34 && time <=35
scale = .87, .87

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=36 && time <=37
scale = .86, .86

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=38 && time <=39
scale = .85, .85

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=40 && time <=41
scale = .84, .84

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=42 && time <=43
scale = .83, .83

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=44 && time <=45
scale = .82, .82

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=46 && time <=47
scale = .81, .81

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=48 && time <=49
scale = .80, .80

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=50 && time <=51
scale = .79, .79

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=52 && time <=53
scale = .78, .78

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=54 && time <=55
scale = .77, .77

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=56 && time <=57
scale = .76, .76

[State 890785, AngleDraw]
type = AngleDraw
trigger1 = time >=58
scale = .75, .75

[State 890785]
type = VelSet
trigger1 = Time = 0
x = 0
y = -13

[State 890785, yell]
type = PlaySnd
trigger1 = time = 0
value = S11,0

[State 890785]
type = VelAdd
trigger1 = 1
y = 0.3

[State 890785]
type = ChangeState
trigger1 = Pos Y >= -65
trigger1 = Vel Y > 0
trigger1 = time >= 40
value = 890786

;-----------------------------------------
;Violent Voyage SoR2 Pause Before Shark hit react Cody & Haggar Alternate
[Statedef 890786]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0,0
anim = 5991
ctrl = 0

[State 1890786, Turn]
type = Turn
trigger1 = time = 0
trigger1 = Facing = -1
;ignorehitpause =
persistent = 0

[State 890786, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 890786, ChangeState]
type = ChangeState
trigger1 = time >=1
;trigger1 = Pos Y >= 200
;trigger1 = Vel Y > 0
value = 890787
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;-----------------------------------------
;Violent Voyage Fall In Ocean & Eaten by Shark Cody & Haggar Alternate
[Statedef 890787]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0,0
anim = 5991
ctrl = 0
SprPriority = 110

[State 890787, PosSet]
type = PosSet
trigger1 = time = 0
x = 200
y = -400
;ignorehitpause =
;persistent =

[State 890787, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 890787, VelSet]
type = VelSet
trigger1 = time >=1
trigger1 = time <=100
x = -2.8
;ignorehitpause =
;persistent =

[State 890787, VelSet]
type = VelSet
trigger1 = time = 1
trigger1 = time <=100
y = -3.5
;ignorehitpause =
;persistent =

[State 890787, VelAdd]
type = VelAdd
trigger1 = time >=1
trigger1 = time <=100
y = 0.22
;ignorehitpause =
;persistent =

[State 890787, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y >= -40
trigger1 = Vel Y > 0
trigger1 = time <=100
value = 9800
;elem = 1
;ignorehitpause =
persistent = 0

[State 890787, VelSet]
type = VelSet
trigger1 = Pos Y >= -40
trigger1 = Vel Y > 0
trigger1 = time <=100
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 890787, VelAdd]
type = VelAdd
trigger1 = Pos Y >= -40
trigger1 = Vel Y > 0
trigger1 = time <=100
y = 0
;ignorehitpause =
;persistent =

[State 890787, ChangeAnim]
type = ChangeAnim
trigger1 = time = 190
value = 1330
;elem = 1
;ignorehitpause =
persistent = 0

[State 890787, VelSet]
type = VelSet
;trigger1 = Pos Y >= -60
;trigger1 = Vel Y > 0
trigger1 = time =190 ;&& time <=260
y = -2
;ignorehitpause =
;persistent =

[State 890787, VelSet]
type = VelSet
;trigger1 = Pos Y >= -60
;trigger1 = Vel Y > 0
trigger1 = time >=210 ;&& time <=170
y = 0
;ignorehitpause =
;persistent =

[State 890787, PosSet]
type = PosSet
trigger1 = time = 100
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 890787, ChangeAnim]
type = ChangeAnim
trigger1 = time = 570
value = 9800
;elem = 1
;ignorehitpause =
persistent = 0

[State 890787, ChangeAnim]
type = ChangeAnim
trigger1 = time = 715
value = 1330
;elem = 1
;ignorehitpause =
persistent = 0

[State 890787, ChangeAnim]
type = ChangeAnim
trigger1 = time = 880
value = 9800
;elem = 1
;ignorehitpause =
persistent = 0

[State 890787, SprPriority]
type = SprPriority
trigger1 = time >=4
value = 110
ignorehitpause = 1
;persistent =

[State 890787, SelfState]
type = SelfState
trigger1 = time >=1400
value = 5150
ctrl = 1
;ignorehitpause = 0
;persistent = 1

;--------------------------------------------------
;Top Of Elevator Dynamite Spawner
[Statedef 890790]
type    = S
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S
anim = 9800 ;Invisible
velset = 0,0
juggle = 0
sprpriority = -2

[State 890790, Assertspecial]
type = Assertspecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn

[State 890790, Dynamite]
type = Helper
triggerall = RoundState = 2
trigger1 = stagevar(info.name) = "Ultimate_Punisher_Atop_The_Elevador"
trigger1 = (GameTime % 400) = random%27 ;(GameTime % 1600) = random%27
;trigger1 = time >=1
;trigger1 = teamside = 2
trigger1 = Numhelper(890791) = 0 ;Numhelper and ID have to be the same
Pos = 0,-400
facing = -1
name = "PunisherDynamite"
stateno = 890791
helpertype = normal
postype = p1    ;p2,front,back,left,right
ownpal = 1
ID = 890791
size.xscale = 1
size.yscale = 1

[State 890790, ChangeState] ;Neverending
type = ChangeState
trigger1 = movecontact
value = 890085
ctrl = 0

;--------------------------------------------------
;Dynamite Drop
[Statedef 890791]
type    = A
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
juggle = 0
sprpriority = -2

[State 890791, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = noautoturn
flag2 = noshadow
;flag3 = roundnotover
ignorehitpause = 1
;persistent =

[State 890791, PosSet] ;random position for barrel spawn
type = PosSet
trigger1 = time = 0
X = -320 + random%641  ;-640 + random%1282  ;-320 + random%641

[State 890791, Dynamite]
type = Explod
trigger1 = time = 1
anim = F80256
ID = 890791
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 890791, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0.1
;ignorehitpause =
;persistent =

[State 890791, VelAdd]
type = VelAdd
trigger1 = time >=0
y = 0.1
;ignorehitpause =
;persistent =

[State 890791, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >=-17
trigger1 = time >=5
value = 890792
ctrl = 0
;anim =
ignorehitpause = 1
;persistent =

;--------------------------------------------------
;Dynamite on Ground
[Statedef 890792]
type    = A
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 9800 ;Invisible
velset = 0,0
juggle = 0
sprpriority = -2

[State 890792, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = noautoturn
flag2 = noshadow
;flag3 = roundnotover
ignorehitpause = 1
;persistent =

[State 890792, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890791
;ignorehitpause =
;persistent =

[State 890792, Dynamite]
type = Explod
trigger1 = time = 0
anim = F80256
;ID = 890792
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 100
scale = 1,1
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 890792, Dynamite]
type = Explod
trigger1 = time = 100
anim = F80257
ID = 890792
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 50
scale = 1,1
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 890792, ChangeState]
type = ChangeState
trigger1 = time >=140
value = 890793
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;-------------------------------
;Dynamite explode
[Statedef 890793]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 88003 ;hitbox

[State 890793, RemoveExplod]
type = RemoveExplod
trigger1 = time >=0
id = 890792

[State 890793, Explode]
type = Explod
trigger1 = time = 0
anim = F88987
ID = 889169
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 20
ontop = 0
ownpal = 1
removeongethit = 0

[State 890793, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = light
damage    = 1,10
getpower = 0,0
givepower = 0,0
affectteam = B
hitflag = MA
guardflag = ;unblockable
pausetime = 5,5
sparkno = -1
sparkxy = 0,0
hitsound   = F31,random%3
guardsound = S2, 6
guard.sparkno = S711
ground.type = high
ground.slidetime = 21
ground.hittime  = 24
ground.velocity = -3,-7
guard.slidetime = 11
guard.hittime = 11
airguard.velocity = 0
guard.velocity = 0
air.velocity = -4,-5
air.fall = 1
p2stateno = 890794
;fall.recovertime = 28
;ID = 889169
;nochainID = 889169
Attack.Dist = 0

[State 890793, BombExplode]
type = PlaySnd
trigger1 = time = 0
value = F37,0
volume = 250

[State 890793, DestroySelf]
type = DestroySelf
trigger1 = time >=39

;-------------------------
;Dynamite React
[Statedef 890794]
type = A
movetype= H
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 0
anim = 88912 ;Burn

[State 890794, AssertSpecial]
type = AssertSpecial
triggerall = Var(58) = 1
triggerall = RoundNo != 1
trigger1 = time >=0
flag = nokoslow
flag2 = nokosnd
;flag3 = roundnotover
ignorehitpause = 1
;persistent =

[State 890794, AngleDraw]
type = AngleDraw
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time >=0
trigger2 = Name = "Ultimate_Ninja"
trigger2 = time >=0
value = 0
scale = .75
ignorehitpause = 1
persistent = 1

[State 890794, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -100
kill = 1
;absolute = 0
ignorehitpause = 1
;persistent =

[State 890794, ChangeState]
type = ChangeState
triggerall = stagevar(info.name) != "Shinobi_Distruction_Surfing"
triggerall = stagevar(info.name) != "Ultimate_Mysterious_Ocean_TMNT"
triggerall = Name != "Ultimate_Blob"
triggerall = Name != "SoR2"
triggerall = Name != "Ultimate_Pretty_Boy"
triggerall = roundno >1 ;matchover
triggerall = Var(58) = 1
trigger1 = life <= 0
trigger1 = 1
value = 88260
ctrl = 0
;anim =
ignorehitpause = 1
;persistent =

[State 890794, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 890794, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F31,random%3

[State 890794, KnifeSpawn]
type = Helper
triggerall = Var(2) = 1
trigger1 = time = 0
helpertype = normal ;player
name = "FFKnifeSpawn1"
ID = 9100
stateno = 9100
pos = 0,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size = 1,1
;ignorehitpause =
persistent = 0

[State 890794, VarSet] ;Change to Normal
type = VarSet
triggerall = Var(2) = 1
trigger1 = time = 0
v = 2   ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State 890794, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = -10

[State 890794, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 890794, SelfState]
type = SelfState
triggerall = Vel y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=5
value=5100
ignorehitpause=1

