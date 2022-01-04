; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   beam
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
poweradd = 60
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0
channel = 0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 8
helpertype = normal
name = "web-ball"
ID = 1005
pos = 70,-70
postype = p1
facing = 1
stateno = 1005
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1005]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1005
velset = 5,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = 1
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = VelSet
trigger1 = 1
x = 4
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = light
ground.type = low
air.type = low
guard.dist = 85
priority = 5,Hit
damage = 30,15
pausetime = 0,0
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
air.hittime = 12
ground.velocity = 0,-8
guard.velocity = 0
air.velocity = 0,-8
getpower  = 40
givepower = 20
fall.recover = 0
fall = 1

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1001
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

[Statedef 1006]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1006
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 12

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1007]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1007
sprpriority = 5

[State 0, Explod]
type = Explod
trigger1 = numtarget != 0 && time = 0
trigger1 = (target,const(size.head.pos.y) <= -70)
anim = 1007
ID = 1007
pos = 0,0
bindtime = -1
removetime = -1
scale = ifelse((target,const(size.ground.back)+target,const(size.ground.back))>80,1.5,1.25),1.25
sprpriority = 8
shadow = -1,-1,-1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = pos y >= 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = BindToTarget
trigger1 = time >= 0
time = 2
pos = 0,0,foot

[State 0, Gravity]
type = Gravity
trigger1 = target,stateno = 1002
trigger2 = target,stateno = 1012
trigger3 = target,stateno = 1022
ignorehitpause = 1
persistent = 1

[State 0, ]
type = ChangeState
trigger1 = prevstateno = 1005 && p2stateno != [1001,1002]
trigger2 = prevstateno = 1015 && p2stateno != [1011,1012]
trigger3 = prevstateno = 1025 && p2stateno != [1021,1022]
trigger4 = prevstateno = 1105 && p2stateno != [1001,1002]
trigger5 = prevstateno = 1115 && p2stateno != [1011,1012]
trigger6 = prevstateno = 1125 && p2stateno != [1021,1022]
trigger7 = prevstateno = 1206 && p2stateno != [1001,1002]
value = 1008

[Statedef 1008]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1008
sprpriority = 5

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 1007
ignorehitpause = 1
persistent = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1001]
type = U
movetype = H
physics = U
ctrl = 0
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = statetype != A
x = 0
y = -0

[State 0, PosSet]
type = PosSet
trigger1 = statetype != A
trigger2 = pos y >= -5
y = -0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ChangeState]
type = ChangeState
trigger1 = statetype = A
value = 1002
ctrl = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 60 && Life <= 0
value = 5000
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = Life > 0
trigger1 = Time >= 60
trigger1 = Pos Y = 0
value = 1004

[Statedef 1002]
type = S
movetype = H
physics = A
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1004

[State 0, ]
type = changestate
trigger1 = Time >= 60 && pos y < 0
value = 1003
ctrl = 0

[Statedef 1003]
type = A
movetype = H
physics = A
velset = 0,0

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = 5035

[State 0, SelfState]
type = SelfState
trigger1 = animtime = 0
value = 5030
ctrl = 0

[Statedef 1004]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 10
value = 5005
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 10
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 10
trigger2 = pos y >= 0
y = 0

[State 0, ChangeState]
type = SelfState
trigger1 = time = 10
value = 0
ctrl = 1

;-----------------------------------
;Standinig Web-Shot (medium)
[statedef 1010]
type = S
movetype = A
physics = S
anim = 1000
poweradd = 60
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0
channel = 0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 8
helpertype = normal
name = "web-ball"
ID = 1005
pos = 70,-70
postype = p1
facing = 1
stateno = 1005
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1015]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1005
velset = 7,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = 1
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = VelSet
trigger1 = 1
x = 5.5
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = light
ground.type = low
air.type = low
guard.dist = 85
priority = 5,Hit
damage = 30,15
pausetime = 0,0
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
air.hittime = 12
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20
fall = 1

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1011
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

[Statedef 1011]
type = U
movetype = H
physics = U
ctrl = 0
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = statetype != A
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = statetype != A
y = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ChangeState]
type = ChangeState
trigger1 = statetype = A
value = 1012
ctrl = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 120 && Life <= 0
value = 5000
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = Life > 0
trigger1 = Time >= 120
trigger1 = Pos Y >= 0
value = 1004

[Statedef 1012]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1004

[State 0, ]
type = changestate
trigger1 = Time >= 120 && pos y < 0
value = 1003
ctrl = 0

;Standinig Web-Shot (fierce)
[statedef 1020]
type = S
movetype = A
physics = S
anim = 1000
poweradd = 60
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0
channel = 0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 8
helpertype = normal
name = "web-ball"
ID = 1005
pos = 70,-70
postype = p1
facing = 1
stateno = 1005
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1025]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1005
velset = 8,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 2

[State 0, ]
type = VelSet
trigger1 = 1
x = 7.5
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
guard.dist = 85
damage = 30,15
pausetime = 0,8
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
air.hittime = 12
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20
fall = 1
fall.recover = 0

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1021
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = HitOverride
trigger1 = 1
slot = 1
time = 2
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit = 1
value = 1007

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

[Statedef 1021]
type = U
movetype = H
physics = U
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = statetype != A
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = statetype != A
y = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ChangeState]
type = ChangeState
trigger1 = statetype = A
value = 1022
ctrl = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 180 && Life <= 0
value = 5000
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = Life > 0
trigger1 = Time >= 180
trigger1 = Pos Y = 0
value = 1004

[Statedef 1022]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1001

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1004

[State 0, ]
type = changestate
trigger1 = Time >= 180 && pos y < 0
value = 1003
ctrl = 0
;-----------------------------------
;Jumping Web-Shot (light)
[statedef 1100]
type = A
movetype = A
physics = A
anim = 1100
poweradd = 60
velset = -1,-3
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0
channel = 0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1105
ownpal = 1

[State 1100, 5]
type = Changestate
trigger1 = animtime = 0
value = 107
ctrl = 1

[Statedef 1105]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 4,4
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1105
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1105
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1105
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1105
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1105
x = 2
y = 2

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 1105
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = light
ground.type = low
air.type = low
guard.dist = 85
priority = 5,Hit
damage = 30,15
pausetime = 0,8
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
air.hittime = 12
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20
fall.recover = 0
fall = 1

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1001
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

[Statedef 1106]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1106
velset = 0,0
sprpriority = 5

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S6,1

[State 0, ]
type = PosSet
trigger1 = time >= 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 12

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;Jumping Web-Shot (medium)
[statedef 1110]
type = A
movetype = A
physics = A
anim = 1100
poweradd = 60
velset = -1,-4
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0
channel = 0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1115
ownpal = 1

[State 1110, 5]
type = Changestate
trigger1 = animtime = 0
value = 107
ctrl = 1

[Statedef 1115]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 5,5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1115
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1115
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1115
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1115
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1115
x = 3.5
y = 3.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 1115
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
guard.dist = 85
damage = 30,15
pausetime = 0,8
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
air.hittime = 12
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
getpower  = 40
givepower = 20
fall = 1
fall.recover = 0

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1011
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

;Jumping Web-Shot (Heavy)
[statedef 1120]
type = A
movetype = A
physics = A
anim = 1100
poweradd = 60
velset = -1,-5
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0
channel = 0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1125
ownpal = 1

[State 1120, 5]
type = Changestate
trigger1 = animtime = 0
value = 107
ctrl = 1

[Statedef 1125]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 7,7
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1125
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1125
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1125
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1125
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1125
x = 5.5
y = 5.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 1125
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = light
ground.type = low
air.type = low
guard.dist = 85
priority = 5,Hit
damage = 30,15
pausetime = 0,8
guard.pausetime = 4,3
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
air.hittime = 12
ground.velocity = -1
guard.velocity = -3
air.velocity = -1,0
getpower  = 40
givepower = 20
fall = 1
fall.recover = 0

[State 0, ]
type = TargetState
trigger1 = movehit
value = 1021
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = movehit
value = 1007
ignorehitpause = 1

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = frontedgedist <= -25
trigger2 = moveguarded = 1
value = 1006

;-------------------------------------------------------------------------------
[statedef 1200]
type = A
movetype = I
physics = A
anim = 1200
velset = 0,0
ctrl = 0

[State 0, Snd]
type = playsnd
trigger1 = !time
value = 5, 10

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 27
value = 1

[State 0, ]
type = PosFreeze
triggerall = Stateno = 1200
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1200
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1200
trigger1 = Pos Y > -80
movecamera = 1,0

[State 0, ]
type = ChangeState
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 120
value = 1201

[Statedef 1201]
type    = A
movetype= I
physics = A
anim = 1201
velset = 5,-10
ctrl = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 27
value = 1

[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 1201, 4]
type = ChangeState
;triggerall = !AILevel
trigger1 = animelemtime(1)>=0
trigger1 = command = "FF"
value = 102
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[Statedef 1210]
type = A
movetype = I
physics = N
anim = 1200
velset = 0,0
ctrl = 0

[State 0, Snd]
type = playsnd
trigger1 = !time
value = 5, 10

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 27
value = 1

[State 0, ]
type = Turn
trigger1 = time = 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 1210
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1210
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1210
trigger1 = Pos Y > -80
movecamera = 1,0

[State 0, ]
type = ChangeState
triggerall = time >= 1
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 120
value = 1201



;-------------------------------------------------------------------------------
;Web-Swing (light)
[statedef 1300]
type = A
movetype = A
physics = A
anim = 1300
poweradd = 70
juggle = 0
facep2 = 1
velset = 1,-5
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [0,10]
edge = 50,10
player = 10,0

[State 0, VarSet]
type = VarSet
trigger1 = time
var(46) = 1

[State 0, Explod]
type = Explod
triggerall = pos y >= -2
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 54
value = 1

;[State 0, ]
;type = PlayerPush
;trigger1 = time <= 54
;value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S6,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = S7,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = 10,4
;channel = 0

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 8
x = 3

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 10
trigger3 = animelem = 11
x = 5

[State 0, ]
type = PosAdd
trigger1 = animelem = 12
trigger2 = animelem = 20
trigger3 = animelem = 21
trigger4 = animelem = 24
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 13
trigger2 = animelem = 26
x = 8

[State 0, ]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 16
trigger2 = animelem = 17
trigger3 = animelem = 18
trigger4 = animelem = 19
trigger5 = animelem = 22
trigger6 = animelem = 23
trigger7 = animelem = 25
x = 12

[State 0, ]
type = HitDef
trigger1 = !Time
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = medium
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 70,35
pausetime = 10,10
guard.pausetime = 10,10
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-30
hitsound = S2,1
guardsound = S5,8
ground.slidetime = 28
ground.hittime = 28
guard.hittime = 17
air.hittime = 28
ground.velocity = -2,-5.3
guard.velocity = -8
air.velocity = -2,-5.3
airguard.velocity = -3,-3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
airguard.cornerpush.veloff = -0
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
fall.envshake.time = 18
fall.envshake.ampl = -10
;p2stateno = 1350
getpower  = 40
givepower = 20

[State 0, ]
type = Explod
trigger1 = animelem = 28
anim = 1301
scale = const(size.xscale),1

[State 0, ]
type = VelSet
trigger1 = animelem = 28
x = 3
y = -3

[State 0, VarAdd]
type = VarAdd
triggerall = var(0) && var(25) !=0
trigger1 = movehit
v = 34     ;fv =
value = 3
ignorehitpause = 1
persistent = 0


[State 650, end]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = AnimTime = 0
value = 1305;ifelse(var(25),701,1305)
ctrl = 1;ifelse((!var(20)||var(25)),1,0)

[Statedef 1302]
type = A
movetype = H
physics = A
ctrl = 0
sprpriority = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 0
x = -4
y = -6

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = 5030
ignorehitpause = 1

[State 0, SelfState]
type = SelfState
trigger1 = time = 2
value = 5030

[statedef 1305]
type = A
movetype = I
physics = A
anim = 1305
velset = 3,-8
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 34     ;fv =
value = 1
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(25) = 1 && (var(34)= [1,2])
triggerall = vel y > 0
trigger1 = command = "qcb_a"
trigger2 = var(0) && (pos y = [(enemynear,pos y),((enemynear,pos y)-(enemynear,const(size.mid.pos.y)))]) && (p2dist x = [-50,50])
value = 1300
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(25) = 1 && (var(34)= [1,2])
triggerall = vel y > 0
trigger1 = command = "qcb_b"
trigger2 = var(0) && (pos y = [(enemynear,pos y),((enemynear,pos y)-(enemynear,const(size.mid.pos.y)))]) && (p2dist x = [-75,75])
value = 1310
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(25) = 1 && (var(34)= [1,2])
triggerall = vel y > 0
trigger1 = command = "qcb_c"
trigger2 = var(0) && (pos y = [(enemynear,pos y),((enemynear,pos y)-(enemynear,const(size.mid.pos.y)))]) && (p2dist x = [-125,125])
value = 1320
ctrl = 0

[State 0, ]
type = CtrlSet
trigger1 = animelem = 1
trigger2 = vel y >0 && pos y >= 0
value = 50
ctrl = 1

;[State 0, ]
;type = statetypeSet
;trigger1 = animelemtime(4) >= 0
;movetype = I

;[State 0, ]
;type = Changestate
;trigger1 = Time >=15
;trigger2 = vel y >0 && pos y >= 0
;value = 50
;ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 52

;Web-Swing (medium)
[statedef 1310]
type = A
movetype = A
physics = A
anim = 1310
poweradd = 70
juggle = 0
facep2 = 1
velset = 2,-10
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [0,10]
edge = 50,10
player = 10,0

[State 0, Explod]
type = Explod
triggerall = pos y >= -2
trigger1 = time = 0
anim = 790
ID = 790
pos =floor(10*const(size.xscale)) ,0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 60
value = 1

;[State 0, ]
;type = PlayerPush
;trigger1 = time <= 60
;value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S6,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S7,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 11
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 14
trigger4 = animelem = 29
x = 4

[State 0, ]
type = PosAdd
trigger1 = animelem = 10
x = 3

[State 0, ]
type = PosAdd
trigger1 = animelem = 11
trigger2 = animelem = 12
x = 5

[State 0, ]
type = PosAdd
trigger1 = animelem = 15
trigger2 = animelem = 16
x = 7

[State 0, ]
type = PosAdd
trigger1 = animelem = 17
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 18
x = 24

[State 0, ]
type = PosAdd
trigger1 = animelem = 19
x = 16

[State 0, ]
type = PosAdd
trigger1 = animelem = 20
trigger2 = animelem = 22
trigger3 = animelem = 24
trigger4 = animelem = 25
x = 12

[State 0, ]
type = PosAdd
trigger1 = animelem = 21
x = 14

[State 0, ]
type = PosAdd
trigger1 = animelem = 23
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 26
x = 35

[State 0, ]
type = PosAdd
trigger1 = animelem = 27
x = 6

[State 0, ]
type = PosAdd
trigger1 = animelem = 28
x = 8

[State 0, ]
type = HitDef
trigger1 = !Time
attr = A,SA
hitflag = MAF
guardflag =MA
animtype = medium
air.animtype = medium
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 80,35
pausetime = 10,10
guard.pausetime = 10,10
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-30
hitsound = S2,1
guardsound = S5,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = 10
air.hittime = 20
ground.velocity = -2,-5.5
guard.velocity = -8
air.velocity = -2,-5.5
airguard.velocity = -3,-3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
airguard.cornerpush.veloff = -0
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
fall.envshake.time = 18
fall.envshake.ampl = -10
;p2stateno = 1350
getpower  = 40
givepower = 20

[State 0, ]
type = Explod
trigger1 = animelem = 31
anim = 1311
scale = const(size.xscale),1

[State 0, ]
type = VelSet
trigger1 = animelem = 31
x = 3
y = -7

[State 0, VarAdd]
type = VarAdd
triggerall = var(0) && var(25) !=0
trigger1 = movehit
v = 34     ;fv =
value = 3
ignorehitpause = 1
persistent = 0

[State 0, VarSet]
type = VarSet
trigger1 = time
var(46) = 1

[State 650, end]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = AnimTime = 0
value = 1305;ifelse(var(25),701,1305)
ctrl = 1;ifelse((!var(20)||var(25)),1,0)

;Web-Swing (fierce)
[statedef 1320]
type = A
movetype = A
physics = A
anim = 1320
poweradd = 70
juggle = 0
facep2 = 1
velset = 3,-15
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [0,10]
edge = 50,10
player = 10,0

[State 0, Explod]
type = Explod
triggerall = pos y >= -2
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 62
value = 1

;[State 0, ]
;type = PlayerPush
;trigger1 = time <= 62
;value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S6,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S7,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 9
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 8
trigger2 = animelem = 13
trigger3 = animelem = 28
trigger4 = animelem = 30
x = 6

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 10
trigger2 = animelem = 11
x = 4

[State 0, ]
type = PosAdd
trigger1 = animelem = 12
x = 7

[State 0, ]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
trigger3 = animelem = 20
trigger4 = animelem = 21
trigger5 = animelem = 23
trigger6 = animelem = 26
x = 12

[State 0, ]
type = PosAdd
trigger1 = animelem = 16
x = 11

[State 0, ]
type = PosAdd
trigger1 = animelem = 17
trigger2 = animelem = 18
x = 16

[State 0, ]
type = PosAdd
trigger1 = animelem = 19
trigger2 = animelem = 22
x = 14

[State 0, ]
type = PosAdd
trigger1 = animelem = 24
x = 18

[State 0, ]
type = PosAdd
trigger1 = animelem = 25
trigger2 = animelem = 27
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 29
x = 8

[State 0, ]
type = HitDef
trigger1 = !Time
attr = A,SA
hitflag = MAF
guardflag =MA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 90,35
pausetime = 10,10
guard.pausetime = 10,10
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-35
hitsound = S2,1
guardsound = S5,8
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 6
air.hittime = 23
ground.velocity = -2,-5.8
guard.velocity = -8
air.velocity = -2,-5.8
airguard.velocity = -3,-3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
airguard.cornerpush.veloff = -0
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
fall.envshake.time = 18
fall.envshake.ampl = -10
;p2stateno = 1350
getpower  = 40
givepower = 20

[State 0, ]
type = Explod
trigger1 = animelem = 32
anim = 1321
scale = const(size.xscale),1

[State 0, ]
type = VelSet
trigger1 = animelem = 32
x = 3
y = -9

[State 0, VarAdd]
type = VarAdd
triggerall = var(0) && var(25) !=0
trigger1 = movehit
v = 34     ;fv =
value = 3
ignorehitpause = 1
persistent = 0

[State 0, VarSet]
type = VarSet
trigger1 = time
var(46) = 1

[State 650, end]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = AnimTime = 0
value = 1305;ifelse(var(25),701,1305)
ctrl = 1;ifelse((!var(20)||var(25)),1,0)

;-----------------------------------
;Web-Swing Air (light)
[statedef 1325]
type = A
movetype = A
physics = A
anim = 1300
poweradd = 70
juggle = 0
facep2 = 1
velset = 1,-5
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [0,10]
edge = 50,10
player = 10,0

[State 0, VarSet]
type = VarSet
trigger1 = time
var(47) = 1

[State 0, Explod]
type = Explod
triggerall = pos y >= -2
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 54
value = 1

;[State 0, ]
;type = PlayerPush
;trigger1 = time <= 54
;value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S6,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = S7,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 8
x = 3

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 10
trigger3 = animelem = 11
x = 5

[State 0, ]
type = PosAdd
trigger1 = animelem = 12
trigger2 = animelem = 20
trigger3 = animelem = 21
trigger4 = animelem = 24
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 13
trigger2 = animelem = 26
x = 8

[State 0, ]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 16
trigger2 = animelem = 17
trigger3 = animelem = 18
trigger4 = animelem = 19
trigger5 = animelem = 22
trigger6 = animelem = 23
trigger7 = animelem = 25
x = 12

[State 0, ]
type = HitDef
trigger1 = !Time
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = medium
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 70,35
pausetime = 10,10
guard.pausetime = 10,10
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-30
hitsound = S2,1
guardsound = S5,8
ground.slidetime = 28
ground.hittime = 28
guard.hittime = 17
air.hittime = 28
ground.velocity = -2,-5.2
guard.velocity = -8
air.velocity = -2,-5
airguard.velocity = -3,-3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
airguard.cornerpush.veloff = -0
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
fall.envshake.time = 18
fall.envshake.ampl = -10
;p2stateno = 1350
getpower  = 40
givepower = 20

[State 0, ]
type = Explod
trigger1 = animelem = 28
anim = 1301
scale = const(size.xscale),1

[State 0, ]
type = VelSet
trigger1 = animelem = 28
x = 3
y = -3

[State 0, VarAdd]
type = VarAdd
triggerall = var(0) && var(25) !=0
trigger1 = movehit
v = 34     ;fv =
value = 3
ignorehitpause = 1
persistent = 0


[State 650, end]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = AnimTime = 0
value = 1306;ifelse(var(25),701,1305)
ctrl = 1;ifelse((!var(20)||var(25)),1,0)

;Web-Swing Air (medium)
[statedef 1330]
type = A
movetype = A
physics = A
anim = 1310
poweradd = 70
juggle = 0
facep2 = 1
velset = 2,-10
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [0,10]
edge = 50,10
player = 10,0

[State 0, Explod]
type = Explod
triggerall = pos y >= -2
trigger1 = time = 0
anim = 790
ID = 790
pos =floor(10*const(size.xscale)) ,0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 60
value = 1

;[State 0, ]
;type = PlayerPush
;trigger1 = time <= 60
;value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S6,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S7,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 11
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 14
trigger4 = animelem = 29
x = 4

[State 0, ]
type = PosAdd
trigger1 = animelem = 10
x = 3

[State 0, ]
type = PosAdd
trigger1 = animelem = 11
trigger2 = animelem = 12
x = 5

[State 0, ]
type = PosAdd
trigger1 = animelem = 15
trigger2 = animelem = 16
x = 7

[State 0, ]
type = PosAdd
trigger1 = animelem = 17
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 18
x = 24

[State 0, ]
type = PosAdd
trigger1 = animelem = 19
x = 16

[State 0, ]
type = PosAdd
trigger1 = animelem = 20
trigger2 = animelem = 22
trigger3 = animelem = 24
trigger4 = animelem = 25
x = 12

[State 0, ]
type = PosAdd
trigger1 = animelem = 21
x = 14

[State 0, ]
type = PosAdd
trigger1 = animelem = 23
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 26
x = 35

[State 0, ]
type = PosAdd
trigger1 = animelem = 27
x = 6

[State 0, ]
type = PosAdd
trigger1 = animelem = 28
x = 8

[State 0, ]
type = HitDef
trigger1 = !Time
attr = A,SA
hitflag = MAF
guardflag =MA
animtype = medium
air.animtype = medium
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 80,35
pausetime = 10,10
guard.pausetime = 10,10
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-30
hitsound = S2,1
guardsound = S5,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = 10
air.hittime = 20
ground.velocity = -2,-5.5
guard.velocity = -8
air.velocity = -2,-5.2
airguard.velocity = -3,-3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
airguard.cornerpush.veloff = -0
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
fall.envshake.time = 18
fall.envshake.ampl = -10
;p2stateno = 1350
getpower  = 40
givepower = 20

[State 0, ]
type = Explod
trigger1 = animelem = 31
anim = 1311
scale = const(size.xscale),1

[State 0, ]
type = VelSet
trigger1 = animelem = 31
x = 3
y = -7

[State 0, VarAdd]
type = VarAdd
triggerall = var(0) && var(25) !=0
trigger1 = movehit
v = 34     ;fv =
value = 3
ignorehitpause = 1
persistent = 0

[State 0, VarSet]
type = VarSet
trigger1 = time
var(47) = 1

[State 650, end]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = AnimTime = 0
value = 1306;ifelse(var(25),701,1305)
ctrl = 1;ifelse((!var(20)||var(25)),1,0)

;Web-Swing Air (fierce)
[statedef 1335]
type = A
movetype = A
physics = A
anim = 1320
poweradd = 70
juggle = 0
facep2 = 1
velset = 3,-15
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [0,10]
edge = 50,10
player = 10,0

[State 0, Explod]
type = Explod
triggerall = pos y >= -2
trigger1 = time = 0
anim = 790
ID = 790
pos = floor(10*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
vel = -0.2,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 62
value = 1

;[State 0, ]
;type = PlayerPush
;trigger1 = time <= 62
;value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S6,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S7,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 9
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 8
trigger2 = animelem = 13
trigger3 = animelem = 28
trigger4 = animelem = 30
x = 6

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 10
trigger2 = animelem = 11
x = 4

[State 0, ]
type = PosAdd
trigger1 = animelem = 12
x = 7

[State 0, ]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
trigger3 = animelem = 20
trigger4 = animelem = 21
trigger5 = animelem = 23
trigger6 = animelem = 26
x = 12

[State 0, ]
type = PosAdd
trigger1 = animelem = 16
x = 11

[State 0, ]
type = PosAdd
trigger1 = animelem = 17
trigger2 = animelem = 18
x = 16

[State 0, ]
type = PosAdd
trigger1 = animelem = 19
trigger2 = animelem = 22
x = 14

[State 0, ]
type = PosAdd
trigger1 = animelem = 24
x = 18

[State 0, ]
type = PosAdd
trigger1 = animelem = 25
trigger2 = animelem = 27
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 29
x = 8

[State 0, ]
type = HitDef
trigger1 = !Time
attr = A,SA
hitflag = MAF
guardflag =MA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 90,35
pausetime = 10,10
guard.pausetime = 10,10
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = 0,-35
hitsound = S2,1
guardsound = S5,8
ground.slidetime = 23
ground.hittime = 23
guard.hittime = 6
air.hittime = 23
ground.velocity = -2,-5.8
guard.velocity = -6
air.velocity = -2,-5.5
airguard.velocity = -3,-3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
airguard.cornerpush.veloff = -0
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
fall.envshake.time = 18
fall.envshake.ampl = -10
;p2stateno = 1350
getpower  = 40
givepower = 20

[State 0, ]
type = Explod
trigger1 = animelem = 32
anim = 1321
scale = const(size.xscale),1

[State 0, ]
type = VelSet
trigger1 = animelem = 32
x = 3
y = -9

[State 0, VarAdd]
type = VarAdd
triggerall = var(0) && var(25) !=0
trigger1 = movehit
v = 34     ;fv =
value = 3
ignorehitpause = 1
persistent = 0

[State 0, VarSet]
type = VarSet
trigger1 = time
var(47) = 1

[State 650, end]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = AnimTime = 0
value = 1306;ifelse(var(25),701,1305)
ctrl = 1;ifelse((!var(20)||var(25)),1,0)

[statedef 1306]
type = A
movetype = I
physics = A
anim = 1305
velset = 3,-8
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 34     ;fv =
value = 1
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(25) = 1 && (var(34)= [1,2])
triggerall = vel y > 0
trigger1 = command = "qcb_a"
trigger2 = var(0) && (pos y = [(enemynear,pos y),((enemynear,pos y)-(enemynear,const(size.mid.pos.y)))]) && (p2dist x = [-50,50])
value = 1325
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(25) = 1 && (var(34)= [1,2])
triggerall = vel y > 0
trigger1 = command = "qcb_b"
trigger2 = var(0) && (pos y = [(enemynear,pos y),((enemynear,pos y)-(enemynear,const(size.mid.pos.y)))]) && (p2dist x = [-75,75])
value = 1330
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(25) = 1 && (var(34)= [1,2])
triggerall = vel y > 0
trigger1 = command = "qcb_c"
trigger2 = var(0) && (pos y = [(enemynear,pos y),((enemynear,pos y)-(enemynear,const(size.mid.pos.y)))]) && (p2dist x = [-125,125])
value = 1335
ctrl = 0

[State 0, ]
type = CtrlSet
trigger1 = animelem = 1
trigger2 = vel y >0 && pos y >= 0
value = 50
ctrl = 1

;[State 0, ]
;type = statetypeSet
;trigger1 = animelemtime(4) >= 0
;movetype = I

;[State 0, ]
;type = Changestate
;trigger1 = Time >=15
;trigger2 = vel y >0 && pos y >= 0
;value = 50
;ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 52
;-----------------------------------------
[statedef 1350]
type = A
movetype = H
physics = N
ctrl = 0

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5010
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeState
trigger1 = hitshakeover
trigger2 = time >= 5
value = 1351
ignorehitpause = 0
persistent = 0

[Statedef 1351]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5030
ignorehitpause = 1
persistent = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5030 && vel y >= 0
value = 5061
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
triggerall = vel y< 0
trigger1 = backedgedist <= 5
trigger2 = frontedgedist <= 5
value = 1352
ctrl = 0

[State 0, ChangeState]
type = SelfState
trigger1 = pos y >= 0 && vel y > 0
value = 5101
ctrl = 0

[statedef 1352]
type = A
movetype = H
physics =N
facep2 = 1
vel = 0,0
ctrl = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 75
ampl = -8
phase = 90
ignorehitpause = 1
persistent = 0

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
channel = 0

[State 0, Gravity]
type = Gravity
trigger1 = pos y < 0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = 0
value = 6
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 2
y = -4.5
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = f71
pos = -(backedgedist),const(size.mid.pos.y)
facing = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5010
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5010 && time = 5
value = 5030
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5030 && vel y >= 0
value = 5061
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = SelfState
trigger1 = pos y >= 0 && vel y > 0
value = 5101
ctrl = 0

;----------------------------------------------------------------------

[StateDef 1250]
type = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 1250
poweradd = 20
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 =  animelem =3
anim = 1255
ID = 1255
pos = -10,-22
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
ontop = 1
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem =14
trigger1  = !movecontact
anim = 1256
ID = 1256
vel = 20,0
pos = 0,-23
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 0
removeongethit = 0
;ignorehitpause =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1250,0
channel = 5

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 1
trigger1 = statetype !=A
anim = 8170
pos = -8,3
sprpriority = -4
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .5, .5
facing = 1
ownpal = 1
ignorehitpause = 1

[State 0, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, ST
guardflag = MA
hitflag = MA
priority = 1, Miss
sparkno = -1
guard.sparkno = 8001
hitsound = S8600,0
guardsound = S8500,0
p1facing = 1
p2facing = 1
p1stateno = 1251
p2stateno = 1252

[State 0, VarSet]
type = VarSet
trigger1  = moveguarded
v = 39   ;fv = 10
value =floor((time-  13)/3) + 1260
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1  = numexplod(1260)=0
trigger1  = numexplod(1261)=0
trigger1  = numexplod(1262)=0
trigger1  = numexplod(1263)=0
trigger1  = numexplod(1264)=0
trigger1  = numexplod(1265)=0
trigger1  = numexplod(1266)=0
trigger1  = numexplod(1267)=0
trigger1  = numexplod(1268)=0
trigger1  = numexplod(1269)=0
trigger1  = numexplod(1270)=0
trigger1  = moveguarded
anim =  var(39)
ID = 1260
vel = 0,0
pos = 0,-23
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 0
removeongethit = 0
;ignorehitpause =

[State 1100, end]
type = ChangeState
trigger1 = moveguarded
value = 1253
ctrl = 1

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1253]
type = S
movetype= I
physics = S
juggle  = 1
ctrl = 0
anim = 1253
poweradd = 0
sprpriority = 2

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 1255
;ignorehitpause =
;persistent =

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1251]
type = S
movetype= A
physics = N
anim = 1251
poweradd = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 1255
;ignorehitpause =
;persistent =


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noautoturn

[State 810, Bind 1]
type = TargetBind
trigger1 = animelem=1
pos = 233,-55
time = 9


[State 810, Bind 1]
type = TargetBind
trigger1 = animelem=2
pos = 200, -50
time = 3

[State 810, Bind 1]
type = TargetBind
trigger1 = animelem=3
pos = 125, -50
time = 3

[State 810, Bind 1]
type = TargetBind
trigger1 = animelem=4
pos = 90,  -50
time = 3

[State 810, Bind 1]
type = TargetBind
trigger1 = animelem=5
pos = 60,  -50
time = 3

[State 820,2]
type = Playsnd
trigger1 = animelem = 1
value = S8200,0

[State 820,2]
type = Playsnd
trigger1 = animelem = 5
value = S8200,0

[State 850, State End]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = !time
trigger2 = p2stateno != 1252
value = 1275
ctrl = 1

;----------------------------------------------------------------------
[Statedef 1252]
type = S
movetype = H
physics = N
velset = 0,0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 1252
;elem = 1
;ignorehitpause =
;persistent =
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
;flag2 = invisible
;flag3 = roundnotover
;ignorehitpause =
;persistent =
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


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PosSet]
type = PosSet
Trigger1 = animtime =0
y = 0


[State 850, 1]
type = selfstate
Trigger1 = animtime =0
value = 0
ctrl = 1
; END


[StateDef 1275]
anim = 1275
ctrl = 0
type = S
movetype = A
physics = S
velset = 6,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 90
guardflag = MA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-33
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9,-4
guard.velocity = -2
air.velocity = -2,-3
fall = 1

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------

[statedef 1400]
type = A
movetype = A
physics = N
anim = 1400
poweradd = 70
juggle = 2
velset = 0,0
ctrl = 0

[State 1400, afterimage]
type=afterimage
trigger1=animelem=1
time=20
timegap=1
framegap=3
length=ifelse((var(10)=3||var(10)=-3),24,18)
palbright=0,0,0
paladd=0,0,0
palmul=.9,.9,.9
palcontrast=160,160,160
palpostbright=0,0,0
trans=add1

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = 0,0
facing = -1
vel = 2,0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 0.75,0.75
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 795
ID = 790
pos = floor(50*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 0.75,0.75
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1400, NotHitBy]
type = NotHitBy
trigger1 = Time<6
value = SCA
time = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time <= 6
y = 0
ignorehitpause = 1
persistent = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 7
y = -2
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 3
trigger2 = time > 6
x = 4
y = -4
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelAdd
trigger1 = time > 10 && vel x > 0
x = -1

[State 0, ]
type = VelSet
trigger1 = animelem = 7
x = 0

[State 0, Gravity]
type = StateTypeSet
trigger1 = animelem = 3
trigger2 = vel y != 0
trigger3 = vel y !=  0 && pos y <= 0
trigger4 = pos y != 0
trigger5 = time > 6
statetype = A
physics = A
ignorehitpause = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S7,3
channel = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
priority = 6,Hit   ;Hit,Miss,Dodge
hitflag = MAF
guardflag = MA
damage = 50,30
pausetime = 10,10
guard.pausetime = 5,4
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-30
hitsound = S2,2
guardsound = S5,8
ground.slidetime = 24
guard.slidetime = 24
ground.hittime = 24
guard.hittime = 24
air.hittime = 24
ground.velocity = -0.25,-7.5
guard.velocity = -4
air.velocity = -0.25,-6.5
airguard.velocity = -2,-2.3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
getpower  = 40
givepower = 20
fall = 1
fall.recover = 0

[State 0, StateTypeSet]
type = Changestate
trigger1 = vel y > 0 && pos y > 0
value = 52
persistent = 1

;----------------------------------------------------------------------------------

[statedef 1420]
type = A
movetype = A
physics = N
anim = 1420
poweradd = 70
juggle = 2
velset = 0,0
ctrl = 0

[State 1400, afterimage]
type=afterimage
trigger1=animelem=1
time=20
timegap=1
framegap=3
length=ifelse((var(10)=3||var(10)=-3),24,18)
palbright=0,0,0
paladd=0,0,0
palmul=.9,.9,.9
palcontrast=160,160,160
palpostbright=0,0,0
trans=add1

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 790
ID = 790
pos = 0,0
facing = -1
vel = 2,0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 0.75,0.75
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 795
ID = 790
pos = floor(50*const(size.xscale)),0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 0.75,0.75
sprpriority = 5
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1400, NotHitBy]
type = NotHitBy
trigger1 = Time<6
value = SCA
time = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time <= 6
y = 0
ignorehitpause = 1
persistent = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 7
y = -2
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 3
trigger2 = time > 6
x = 4
y = -4
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VelAdd
trigger1 = time > 10 && vel x > 0
x = -1

[State 0, ]
type = VelSet
trigger1 = animelem = 7
x = 0

[State 0, Gravity]
type = StateTypeSet
trigger1 = animelem = 3
trigger2 = vel y != 0
trigger3 = vel y !=  0 && pos y <= 0
trigger4 = pos y != 0
trigger5 = time > 6
statetype = A
physics = A
ignorehitpause = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S7,3
channel = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
priority = 6,Hit   ;Hit,Miss,Dodge
hitflag = MAF
guardflag = MA
damage = 40,30
pausetime = 10,10
guard.pausetime = 5,4
sparkno = s17020 + (random % 8)
guard.sparkno = s17000
sparkxy = -5,-30
hitsound = S2,2
guardsound = S5,8
ground.slidetime = 24
guard.slidetime = 24
ground.hittime = 24
guard.hittime = 24
air.hittime = 24
ground.velocity = -0.25,-7.5
guard.velocity = -4
air.velocity = -0.25,-6.5
airguard.velocity = -2,-2.3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
getpower  = 40
givepower = 20
fall = 1
fall.recover = 0

[State 0, StateTypeSet]
type = Changestate
trigger1 = time = 23
value = 1400
persistent = 1

;-------------------------------------------------------------------------------

[Statedef 1500]
type = S
movetype = A
physics = S
anim = 1500
velset = 0,0
ctrl = 0
poweradd = IfElse(var(13) = 0,84,147) * IfElse(var(19)!=0,0,1)
juggle = 7

[State 1000,Turn]
type = Turn
trigger1 =  Time = 0 && P2Dist X < 0 && prevstateno = 711

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 7

[State 1300, PosAdd]
type = PosAdd
trigger1 = Time = 1
X = 30

[State 1300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1501

;------------------------空中
[Statedef 1501]
type = A
movetype = A
physics = N
anim = 1501
velset = 6.5,-3.5

[State 1301,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 0,10

[State 1301,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 3  || AnimElem = 8
value = 2,3

[State 1301, VelSet]
type = VelSet
trigger1 = AnimElem = 9
X = 0

[State 1301, VelMul]
type = VelMul
trigger1 = 1
x = .9

[State 1301, VelAdd]
type = VelAdd
trigger1 = AnimElem = 9,>= 0
Y = .4

[State 1301,Oricom]
type = Helper
trigger1 = AnimElem = 1 && Var(19) != 0
ID = 11390
pos = 0,0
postype = p1
stateno = 11390
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1301,Oricom]
type = Helper
trigger1 = AnimElem = 1 && Var(19) != 0
ID = 11300
pos = 0,0
postype = p1
stateno = 11300
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1301,Oricom]
type = Helper
trigger1 = AnimElem = 4 && Var(19) != 0
ID = 11301
pos = 0,0
postype = p1
stateno = 11301
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1301,Oricom]
type = Helper
trigger1 = AnimElem = 9 && Var(19) != 0
ID = 11302
pos = 0,0
postype = p1
stateno = 11302
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1301,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 10
movetype = I

[State 1301, HitDef]
type = HitDef
trigger1 = AnimElem = 1 && movecontact = 0
attr = A, SA
damage = 56-((Var(15)*8/32)*7),Floor(7*IfElse(var(13) = 0,1,IfElse(var(13) = 1,1.7,.6)))
animtype = Heavy
getpower = IfElse(var(13) = 0,21,63)*IfElse(var(19)!=0,0,1),IfElse(var(13) = 0,10,31)*IfElse(var(19)!=0,0,1)
givepower = IfElse(var(13)!=0,63,21),0
guardflag = M
hitflag = MAF
hitsound = s2,1
guardsound = s3,0
pausetime = IfElse(Var(19)=0,12,6),IfElse(Var(19)=0,12,6)
sparkno = s8130
guard.sparkno = s8210
sparkxy = 15,-55
ground.type = Low
ground.slidetime = 10
ground.hittime  = ifelse(var(24) = 1,14,12)
ground.velocity = -4,-5
ground.velocity = -4,-5
guard.velocity = -4
fall = 1
fall.recovertime = 20

[State 1010, 8]
type = HitDef
triggerall = movecontact = 0
trigger1 = AnimElem = 4
attr = A, SA
damage = 35-((Var(15)*5/32)*7),Floor(4*IfElse(var(13) = 0,1,IfElse(var(13) = 1,1.7,.6)))
animtype = Heavy
getpower = IfElse(var(13) = 0,21,63)*IfElse(var(19)!=0,0,1),IfElse(var(13) = 0,10,31)*IfElse(var(19)!=0,0,1)
givepower = IfElse(var(13)!=0,63,21),0
guardflag = MA
hitflag = MAF
hitsound = s2,1
guardsound = s3,0
pausetime = IfElse(Var(19)=0,12,6),IfElse(Var(19)=0,12,6)
sparkno = s8130
guard.sparkno = s8210
sparkxy = 0,-80
ground.type = Low
ground.slidetime = 10
ground.hittime  = ifelse(var(24) = 1,14,12)
ground.velocity = -3,-7
ground.velocity = -3,-7
guard.velocity = -4
fall = 1
fall.recovertime = 20

[State 1010, 8]
type = HitDef
triggerall = movecontact = 0
trigger1 = AnimElem = 9
attr = A, SA
damage = 21-((Var(15)*3/32)*7),Floor(3*IfElse(var(13) = 0,1,IfElse(var(13) = 1,1.7,.6)))
animtype = Heavy
getpower = IfElse(var(13) = 0,21,63)*IfElse(var(19)!=0,0,1),IfElse(var(13) = 0,10,31)*IfElse(var(19)!=0,0,1)
givepower = IfElse(var(13)!=0,63,21),0
guardflag = MA
hitflag = MAF
hitsound = s2,1
guardsound = s3,0
pausetime = IfElse(Var(19)=0,12,6),IfElse(Var(19)=0,12,6)
sparkno = s8130
guard.sparkno = s8210
sparkxy = 0,-80
ground.type = Low
ground.slidetime = 10
ground.hittime  = ifelse(var(24) = 1,14,12)
ground.velocity = -4,-2
ground.velocity = -4,-2
guard.velocity = -4
fall = 1
fall.recovertime = 20

[State 1301, End]
type = ChangeState
trigger1 = Time > 0 && Pos Y >= -10 && Time >= 15
value = 52

;---------------------------------------------------------------------
;天昇脚・中
;------------------------開始動作
[Statedef 1510]
type = S
movetype = A
physics = S
anim = 1500
velset = 0,0
ctrl = 0
poweradd = IfElse(var(13) = 0,126,189) * IfElse(var(19)!=0,0,1)
juggle = 7

[State 1000,Turn]
type = Turn
trigger1 =  Time = 0 && P2Dist X < 0 && prevstateno = 711

[State 1310, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 5

[State 1310, PosAdd]
type = PosAdd
trigger1 = Time = 5
X = 30

[State 1310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1511

;------------------------空中
[Statedef 1511]
type = A
movetype = A
physics = N
anim = 1511
velset = 6.5,-3.5

[State 1301,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 0,10

[State 1301,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 3 || AnimElem = 8 || AnimElem = 13
value = 2,3

[State 1311, VelSet]
type = VelSet
trigger1 = AnimElem = 11
X = 0

[State 1311, 3]
type = VelMul
trigger1 = 1
x = .9

[State 1311, VelAdd]
type = VelAdd
trigger1 = AnimElem = 11,>= 0
Y = .4

[State 1311,Oricom]
type = Helper
trigger1 = AnimElem = 1 && Var(19) != 0
ID = 11390
pos = 0,0
postype = p1
stateno = 11390
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1311,Oricom]
type = Helper
trigger1 = AnimElem = 1 && Var(19) != 0
ID = 11310
pos = 0,0
postype = p1
stateno = 11310
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1311,Oricom]
type = Helper
trigger1 = AnimElem = 4 && Var(19) != 0
ID = 11311
pos = 0,0
postype = p1
stateno = 11311
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1311,Oricom]
type = Helper
trigger1 = (AnimElem = 9 || AnimElem = 14) && Var(19) != 0
ID = 11312
pos = 0,0
postype = p1
stateno = 11312
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1311,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 15
movetype = I

[State 1311, HitDef]
type = HitDef
trigger1 = AnimElem = 1 && UniqHitCount < 2
attr = A, SA
damage = 56-((Var(15)*8/32)*7),Floor(7*IfElse(var(13) = 0,1,IfElse(var(13) = 1,1.7,.6)))
animtype = Heavy
getpower = IfElse(var(13) = 0,21,63)*IfElse(var(19)!=0,0,1),IfElse(var(13) = 0,10,31)*IfElse(var(19)!=0,0,1)
givepower = IfElse(var(13)!=0,63,21),0
guardflag = M
hitflag = MAF
hitsound = s2,1
guardsound = s3,0
pausetime = IfElse(Var(19)=0,12,6),IfElse(Var(19)=0,12,6)
sparkno = s8130
guard.sparkno = s8210
sparkxy = 15,-55
ground.type = Low
ground.slidetime = 10
ground.hittime  = IfElse(Var(24) = 1,14,12)
ground.velocity = -4,-5
air.velocity = -4,-5
guard.velocity = -4
fall = 1
fall.recovertime = 20

[State 1311, 8]
type = HitDef
triggerall =  UniqHitCount < 2
trigger1 = AnimElem = 4
attr = A, SA
damage = 35-((Var(15)*5/32)*7),Floor(4*IfElse(var(13) = 0,1,IfElse(var(13) = 1,1.7,.6)))
animtype = Heavy
getpower = IfElse(var(13) = 0,21,63)*IfElse(var(19)!=0,0,1),IfElse(var(13) = 0,10,31)*IfElse(var(19)!=0,0,1)
givepower = IfElse(var(13)!=0,63,21),0
guardflag = MA
hitflag = MAF
hitsound = s2,1
guardsound = s3,0
pausetime = IfElse(Var(19)=0,12,6),IfElse(Var(19)=0,12,6)
sparkno = s8130
guard.sparkno = s8210
sparkxy = 15,-80
ground.type = Low
ground.slidetime = 10
ground.hittime  = IfElse(Var(24) = 1,14,12)
ground.velocity = -2.5,-7
air.velocity = -2.5,-7
guard.velocity = -4
fall = 1
fall.recovertime = 20

[State 1311,HitDef]
type = HitDef
triggerall =  UniqHitCount < 2
trigger1 = AnimElem = 9
trigger2 = AnimElem = 14
attr = A, SA
damage = 14-((Var(15)*2/32)*7),Floor(2*IfElse(var(13) = 0,1,IfElse(var(13) = 1,1.7,.6)))
animtype = Heavy
getpower = IfElse(var(13) = 0,21,63)*IfElse(var(19)!=0,0,1),IfElse(var(13) = 0,10,31)*IfElse(var(19)!=0,0,1)
givepower = IfElse(var(13)!=0,63,21),0
guardflag = MA
hitflag = MAF
hitsound = s2,1
pausetime = IfElse(Var(19)=0,12,6),IfElse(Var(19)=0,12,6)
guardsound = s3,0
sparkno = s8130
guard.sparkno = s8210
sparkxy = 15,-80
ground.type = Low
ground.slidetime = 10
ground.hittime  = IfElse(Var(24) = 1,14,12)
ground.velocity = -4,-2
air.velocity = -4,-2
guard.velocity = -4
fall = 1
fall.recovertime = 20

[State 1311, End]
type = ChangeState
trigger1 = Time > 0 && Pos Y >= 0
value = 52

;---------------------------------------------------------------------
;天昇脚・強
;------------------------開始動作
[Statedef 1520]
type = S
movetype = A
physics = S
anim = 1500
velset = 0,0
ctrl = 0
poweradd = IfElse(var(13) = 0,126,189) * IfElse(var(19)!=0,0,1)

[State 1000,Turn]
type = Turn
trigger1 =  Time = 0 && P2Dist X < 0 && prevstateno = 711

[State 1320, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 3

[State 1320, PosAdd]
type = PosAdd
trigger1 = Time = 5
X = 30

[State 1320, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1521

;------------------------空中
[Statedef 1521]
type = A
movetype = A
physics = N
anim = 1521
velset = 6.5,-3.5

[State 1301,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 0,10

[State 1301,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 3 || AnimElem = 8 || AnimElem = 13 || AnimElem = 17
value = 2,3

[State 1321, VelSet]
type = VelSet
trigger1 = AnimElem = 10
X = 0

[State 1321,VelMul]
type = VelMul
trigger1 = 1
x = .9

[State 1321, VelAdd]
type = VelAdd
trigger1 = AnimElem = 10,>= 0
Y = .4

[State 1321,Oricom]
type = Helper
trigger1 = AnimElem = 1 && Var(19) != 0
ID = 11390
pos = 0,0
postype = p1
stateno = 11390
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1321,Oricom]
type = Helper
trigger1 = AnimElem = 1 && Var(19) != 0
ID = 11320
pos = 0,0
postype = p1
stateno = 11320
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1321,Oricom]
type = Helper
trigger1 = AnimElem = 4 && Var(19) != 0
ID = 11321
pos = 0,0
postype = p1
stateno = 11321
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1321,Oricom]
type = Helper
trigger1 = (AnimElem = 9 || AnimElem = 13 || AnimElem = 18) && Var(19) != 0
ID = 11323
pos = 0,0
postype = p1
stateno = 11323
name = "Oricom"
keyctrl = 0
ownpal = 0

[State 1321,StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 19
movetype = I

[State 1321, HitDef]
type = HitDef
trigger1 = AnimElem = 1 && UniqHitCount < 3
attr = A, SA
damage = 56-((Var(15)*8/32)*7),Floor(7*IfElse(var(13) = 0,1,IfElse(var(13) = 1,1.7,.6)))
animtype = Heavy
getpower = IfElse(var(13) = 0,21,63)*IfElse(var(19)!=0,0,1),IfElse(var(13) = 0,10,31)*IfElse(var(19)!=0,0,1)
givepower = IfElse(var(13)!=0,63,21),0
guardflag = M
hitflag = MAF
hitsound = s2,1
guardsound = s3,0
pausetime = IfElse(Var(19)=0,12,6),IfElse(Var(19)=0,12,6)
sparkno = s8130
guard.sparkno = s8210
sparkxy = 15,-55
ground.type = Low
ground.slidetime = 10
ground.hittime  = IfElse(Var(24) = 1,14,12)
ground.velocity = -4,-5
air.velocity = -4,-5
guard.velocity = -4
fall = 1
fall.recovertime = 20

[State 1321,HitDef]
type = HitDef
triggerall =  UniqHitCount < 3
trigger1 = AnimElem = 4
attr = A, SA
damage = 35-((Var(15)*5/32)*7),Floor(4*IfElse(var(13) = 0,1,IfElse(var(13) = 1,1.7,.6)))
animtype = Heavy
getpower = IfElse(var(13) = 0,21,63)*IfElse(var(19)!=0,0,1),IfElse(var(13) = 0,10,31)*IfElse(var(19)!=0,0,1)
givepower = IfElse(var(13)!=0,63,21),0
guardflag = MA
hitflag = MAF
hitsound = s2,1
guardsound = s3,0
pausetime = IfElse(Var(19)=0,12,6),IfElse(Var(19)=0,12,6)
sparkno = s8130
guard.sparkno = s8210
sparkxy = 15,-80
ground.type = Low
ground.slidetime = 10
ground.hittime  = IfElse(Var(24) = 1,14,12)
ground.velocity = -3,-7
air.velocity = -3,-7
guard.velocity = -4
fall = 1
fall.recovertime = 20

[State 1321,HitDef]
type = HitDef
triggerall =  UniqHitCount < 3
trigger1 = AnimElem = 9
trigger2 = AnimElem = 13
trigger3 = AnimElem = 18
attr = A, SA
damage = 14-((Var(15)*2/32)*7),Floor(2*IfElse(var(13) = 0,1,IfElse(var(13) = 1,1.7,.6)))
animtype = Heavy
getpower = IfElse(var(13) = 0,21,63)*IfElse(var(19)!=0,0,1),IfElse(var(13) = 0,10,31)*IfElse(var(19)!=0,0,1)
givepower = IfElse(var(13)!=0,63,21),0
guardflag = MA
hitflag = MAF
hitsound = s2,1
guardsound = s3,0
pausetime = IfElse(Var(19)=0,12,6),IfElse(Var(19)=0,12,6)
sparkno = s8130
guard.sparkno = s8210
sparkxy = 15,-80
ground.type = Low
ground.slidetime = 10
ground.hittime  = IfElse(Var(24) = 1,14,12)
ground.velocity = -4,-2
air.velocity = -4,-2
guard.velocity = -4
fall = 1
fall.recovertime = 20

[State 1321, End]
type = ChangeState
trigger1 = Time > 0 && Pos Y >= 0
value = 52
