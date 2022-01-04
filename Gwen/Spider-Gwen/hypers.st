; States file for {character} -- Hypers
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
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -2000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "megabeam"
ID = 3010
stateno = 3010
pos = 0,-125
size.yscale = 5.0
ownpal = 1
supermove

[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Hyper 1 - beam helper
[StateDef 3010]
type = A
movetype = A
physics = C
anim = 3010
ctrl = 0
sprpriority = 2

[State 3010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y - 125

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10

[State 3010, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3010, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3010, hitdef]
type = HitDef
trigger1 = TimeMod = 10,0
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 30,5
pausetime = 0,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,75
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 0,64,0

[State 3115, DestroySelf]
type = DestroySelf
trigger1 = Time = 80

;-------------------------------------------------------------------------------

[Statedef 4000]
type    = A
movetype= A
physics = A
juggle  = 1
velset = 0,0
poweradd = -1000
anim = 4000
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S4000,0
channel = 5

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
ignorehitpause =1
flag = nojugglecheck

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = -BackEdgeBodyDist/ 13
y = -3
;ignorehitpause =
;persistent =

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 48
value = 0
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 =animtime = 0
value = 4005
ctrl =   0

[Statedef 4002]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 4001
ctrl = 0
sprpriority = 2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 44    ;fv = 10
value = ifelse(floor(pos x) < 0,1,0)
;ignorehitpause =
;persistent =


[State 0, Turn]
type = Turn
triggerall = numenemy >0
trigger1 = facing = 1
trigger1 = var(44) = 0
trigger2 = facing = -1
trigger2 = var(44) = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = ifelse (var(44) = 1,-150,150)
;ignorehitpause =
;persistent =
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 730
ctrl = 0
;anim =
;anim =
;ignorehitpause =
;persistent =

[State 8300, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[Statedef 4001]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 4001
ctrl = 0
sprpriority = 2

[State 0, VarAdd]
type = VarAdd
trigger1 = !time
v = 48    ;fv =
value = 1
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 44    ;fv = 10
value = ifelse(floor(pos x) < 0,1,0)
;ignorehitpause =
;persistent =

[State 0, Turn]
type = Turn
triggerall = numenemy >0
trigger1 = facing = 1
trigger1 = var(44) = 0
trigger2 = facing = -1
trigger2 = var(44) = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = ifelse (var(44) = 1,-150,150)
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
trigger1 = var(48) < 10
trigger1 = numtarget > 0
value = 4005
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
triggerall = animtime = 0
trigger1 = var(48) >= 10
trigger2 = numtarget <= 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
triggerall = animtime = 0
trigger1 = var(48) >= 10
trigger2 = numtarget <= 0
value = 730
ctrl = 0
;anim =
;anim =
;ignorehitpause =
;persistent =

[State 8300, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[Statedef 4005]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 25,0
poweradd = 0
anim = 4005
ctrl = 0
sprpriority = 2

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

[State 0, VelSet]
type = VelSet
trigger1 = !time
trigger1 = p2bodydist Y < -30
y = -1;(floor(p2bodydist Y) /(p2bodydist X / 20))

[State 0, VelSet]
type = VelSet
trigger1 = !time
trigger1 = p2bodydist Y >= -20
y = 1;

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 4000, HitDef]
type = HitDef
trigger1 =  !movehit
trigger1 = !moveguarded
attr = S,HA
damage = 40,4
animtype = HARD
guardflag = MA
hitflag = MAFD
priority = 6, Hit
pausetime = 0,8
getpower = 0,0
givepower = 0,0
sparkno = S8222
sparkxy = -10, -80
guard.sparkno = s8001
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = ifelse(frontedgebodydist > 150, -5, -1 ), -3
air.velocity = ifelse(frontedgebodydist > 150, -5, -1 ), -3
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 =  1
value = 0
;ignorehitpause =
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 0
trigger1 = movehit
value = 4001
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 0
trigger1 = !movehit
value = 4002
ctrl = 0


;-------------------------------------------------------------------------------

[StateDef 3100]
type = A
movetype= A
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0
anim = 3100
poweradd = -1000
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S4000,0
channel = 5

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------


[State 0, HitDef]
type = HitDef
trigger1 =!movehit
trigger1 =!moveguarded
attr = S, HP
damage = 200,20
animtype = diagup
guardflag = H
hitflag = MAFP
priority = 6, Hit
pausetime = 15, 15
sparkno = S8222
sparkxy = -10, -76
guard.sparkno = s8001
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = 0,0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0,0
air.hittime = 12
getpower = 0,0
fall =1
envshake.time = 30
envshake.freq = 54
envshake.ampl = 10
envshake.phase =  4
fall.envshake.time = 30
fall.envshake.freq = 54
fall.envshake.ampl = 10
fall.envshake.phase =  4

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 7
anim = 3101
postype = p1
bindtime = 1
pos = -30,0
ownpal = 1
sprpriority = 5
supermovetime = 40
;ignorehitpause =
;persistent =

[State 4000, envshake]
type = EnvShake
trigger1 = animelem = 7
time = 40
freq = 60
ampl = -4
;phase =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 6,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 40,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 8, 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 =  !time
value = S3100,0
channel = 5
;abspan =
;ignorehitpause =
;persistent =

[State 1101, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




