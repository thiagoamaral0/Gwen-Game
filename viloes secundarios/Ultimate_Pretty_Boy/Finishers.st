
;-----------------------------------------------
;----------------Electro Finishers--------------
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;-----------------------------------------------

;-------------------------------------------------------------
;Blood drop (temp)
[Statedef 9900]
type    = A
movetype= H
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 9900, varrandom]
type = VarRandom
trigger1 = 1
v = 10
range = -3,-8

[State 9900, varrandom]
type = VarRandom
trigger1 = 1
v = 11
range = -4,4

[State 9900, velset]
type = velset
trigger1 = time = 1
y = var(10)
x = var(11)

[State 9900, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 9900, Blood]
type = Explod
triggerall = Vel X >= 0
trigger1 = time = 1
anim = 88951
ID = 9900
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0

[State 9900, Blood]
type = Explod
triggerall = Vel X < 0
trigger1 = time = 1
anim = 88951
ID = 9900
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 8
ontop = 0
ownpal = 1
removeongethit = 0

[State 9900, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 9901
;ignorehitpause = 1

;-------------------------------
;blood on ground
[Statedef 9901]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800 ;invisible

[State 9901, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 9900

[State 9901, ground blood]
type = explod
anim = 8997+random%3
triggerall = stagevar(info.name) != "Shinobi_Distruction_Surfing"
triggerall = stagevar(info.name) != "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = time = 0
postype = p1
pos = 4,-4
vel = 0, 0
sprpriority = -11
removetime = -2
ownpal = 1

[State 9901, ground blood]
type = explod
anim = 8997+random%3
triggerall =facing = 1
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = time = 0
trigger2 = stagevar(info.name) = "Shinobi_Distruction_Surfing"
trigger2 = time = 0
postype = p1
pos = 4,-4
vel = -5, 0
sprpriority = -11
removetime = -2
ownpal = 1

[State 9901, ground blood]
type = explod
anim = 8997+random%3
triggerall =facing = -1
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = time = 0
trigger2 = stagevar(info.name) = "Shinobi_Distruction_Surfing"
trigger2 = time = 0
postype = p1
pos = 4,-4
vel = 5, 0
sprpriority = -11
removetime = -2
ownpal = 1

[State 9901, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S68,random%3

[State 9901, DestroySelf]
type = DestroySelf
trigger1 = time >= 5

;-------------------------------------------------------------
;Blood drop 2 (temp)
[Statedef 9902]
type    = A
movetype= H
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 9902, varrandom]
type = VarRandom
trigger1 = 1
v = 12
range = -3,-8

[State 9902, varrandom]
type = VarRandom
trigger1 = 1
v = 13
range = -4,4

[State 9902, velset]
type = velset
trigger1 = time = 1
y = var(12)
x = var(13)

[State 9902, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 9902, Blood]
type = Explod
triggerall = Vel X >= 0
trigger1 = time = 1
anim = 88951
ID = 9902
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0

[State 9902, Blood]
type = Explod
triggerall = Vel X < 0
trigger1 = time = 1
anim = 88951
ID = 9902
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 8
ontop = 0
ownpal = 1
removeongethit = 0

[State 9902, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -2
trigger1 = Vel Y > 0
value = 9903
ignorehitpause = 1

;-------------------------------
;blood on ground 2
[Statedef 9903]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800 ;invisible

[State 9903, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 9902

[State 9903, ground blood]
type = explod
anim = 8997+random%3
triggerall = stagevar(info.name) != "Shinobi_Distruction_Surfing"
triggerall = stagevar(info.name) != "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = time = 0
postype = p1
pos = 4,-4
vel = 0, 0
sprpriority = -11
removetime = -2
ownpal = 1

[State 9903, ground blood]
type = explod
anim = 8997+random%3
triggerall =facing = 1
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = time = 0
trigger2 = stagevar(info.name) = "Shinobi_Distruction_Surfing"
trigger2 = time = 0
postype = p1
pos = 4,-4
vel = -5, 0
sprpriority = -11
removetime = -2
ownpal = 1

[State 9903, ground blood]
type = explod
anim = 8997+random%3
triggerall =facing = -1
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = time = 0
trigger2 = stagevar(info.name) = "Shinobi_Distruction_Surfing"
trigger2 = time = 0
postype = p1
pos = 4,-4
vel = 5, 0
sprpriority = -11
removetime = -2
ownpal = 1

[State 9903, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S68,random%3

[State 9903, DestroySelf]
type = DestroySelf
trigger1 = time >= 5

;-------------------------------------------------------------
;Blood drop 3 (temp)
[Statedef 9904]
type    = A
movetype= H
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 9904, varrandom]
type = VarRandom
trigger1 = 1
v = 14
range = -3,-8

[State 9904, varrandom]
type = VarRandom
trigger1 = 1
v = 15
range = -4,4

[State 9904, velset]
type = velset
trigger1 = time = 1
y = var(14)
x = var(15)

[State 9904, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 9904, Blood]
type = Explod
triggerall = Vel X >= 0
trigger1 = time = 1
anim = 88951
ID = 9904
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 0

[State 9904, Blood]
type = Explod
triggerall = Vel X < 0
trigger1 = time = 1
anim = 88951
ID = 9904
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 8
ontop = 0
ownpal = 1
removeongethit = 0

[State 9904, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 2
trigger1 = Vel Y > 0
value = 9905
ignorehitpause = 1

;-------------------------------
;blood on ground 3
[Statedef 9905]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9800 ;invisible

[State 9905, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 9904

[State 9905, ground blood]
type = explod
anim = 8997+random%3
triggerall = stagevar(info.name) != "Shinobi_Distruction_Surfing"
triggerall = stagevar(info.name) != "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = time = 0
postype = p1
pos = 4,-4
vel = 0, 0
sprpriority = -11
removetime = -2
ownpal = 1

[State 9905, ground blood]
type = explod
anim = 8997+random%3
triggerall =facing = 1
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = time = 0
trigger2 = stagevar(info.name) = "Shinobi_Distruction_Surfing"
trigger2 = time = 0
postype = p1
pos = 4,-4
vel = -5, 0
sprpriority = -11
removetime = -2
ownpal = 1

[State 9905, ground blood]
type = explod
anim = 8997+random%3
triggerall =facing = -1
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = time = 0
trigger2 = stagevar(info.name) = "Shinobi_Distruction_Surfing"
trigger2 = time = 0
postype = p1
pos = 4,-4
vel = 5, 0
sprpriority = -11
removetime = -2
ownpal = 1

[State 9905, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S68,random%3

[State 9905, DestroySelf]
type = DestroySelf
trigger1 = time >= 5

;-------------------------------------------------
;Head Pop Air
[Statedef 88090]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 88090
sprpriority = 0

[State 88090, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 702

[State 88090, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 702

[State 88090, PosAdd]
type = PosAdd
trigger1 = time = 0
x = -35
y = -15
ignorehitpause = 1
persistent = 0

[State 88090, VelSet]
type = VelSet
trigger1 = time = 0
x = -1.5
y = -6
;ignorehitpause =
;persistent =

[State 88090, ValAdd]
type = VelAdd
Trigger1 = 1
y = .23

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0
anim = F89147
;ID =
pos = 8,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Poacher_Joe"
trigger2 = time = 0
anim = F89147
;ID =
pos = -12,-65
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 0
anim = F89147
;ID =
pos = 0,-84
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 0
anim = F89147
;ID =
pos = -6,-82
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 0
anim = F89147
;ID =
pos = -6,-91
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 0
anim = F89147
;ID =
pos = -12,-65
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 0
anim = F89147
;ID =
pos = -7,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 0
anim = F89147
;ID =
pos = -7,-77
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 0
anim = F89147
;ID =
pos = -22,-78
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 0
anim = F89147
;ID =
pos = -3,-84
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 0
anim = F89147
;ID =
pos = -10,-78
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 0
anim = F89147
;ID =
pos = -7,-93
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 0
anim = F89147
;ID =
pos = -7,-82
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

;--
[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 9
trigger2 = Name = "Ultimate_Cody"
trigger2 = time = 9
trigger3 = Name = "Ultimate_Kruel_Kurt"
trigger3 = time = 9
trigger4 = Name = "Ultimate_R_Bear"
trigger4 = time = 9
anim = F89147
;ID =
pos = -29,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 9
trigger2 = Name = "Ultimate_Poacher_Joe"
trigger2 = time = 9
anim = F89147
;ID =
pos = -24,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 9
anim = F89147
;ID =
pos = -46,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 9
anim = F89147
;ID =
pos = -34,-68
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 9
anim = F89147
;ID =
pos = -32,-55
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-81
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 9
anim = F89147
;ID =
pos = -25,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 9
anim = F89147
;ID =
pos = -40,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 9
anim = F89147
;ID =
pos = -43,-52
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 9
anim = F89147
;ID =
pos = -40,-68
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 9
anim = F89147
;ID =
pos = -30,-63
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 9
anim = F89147
;ID =
pos = -46,-51
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 9
anim = F89147
;ID =
pos = -45,-51
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, Blood Drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = -10,-75
stateno = 88121
ownpal = 1
size.xscale = .3
size.yscale = .3

[State 88090, HeadGib1]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88110
name = "HeadGib1"
postype = p1
pos = -10,-77
stateno = 88110
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88090, HeadGib2]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88112
name = "HeadGib2"
postype = p1
pos = -12,-75
stateno = 88112
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88090, HeadPop]
type = PlaySnd
trigger1 = time = 0
value = F104,0
ignorehitpause = 1
persistent = 0

[State 88090,ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=5
value = 88091
ignorehitpause = 1

;----------------------------------------
;Head Pop Air on ground
[Statedef 88091]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 88091
sprpriority = 0

[State 88091, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 703

[State 88091, AngleDraw]
type = AngleDraw
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=0
value = 1
scale = 1.3,1
ignorehitpause = 1
;persistent =

[State 88091, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 703

[State 88091, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 88091, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 88091, ValAdd]
type = VelAdd
Trigger1 = 1
y = 0

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 20
anim = F88558
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 20
anim = 6054
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 20
anim = F88558
;ID =
pos = -25,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 20
trigger2 = Name = "Ultimate_Poacher_Joe"
trigger2 = time = 20
anim = F88559
;ID =
pos = -41,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 20
anim = F88558
;ID =
pos = -45,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 20
anim = F88558
;ID =
pos = -30,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 0
anim = F88558
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 0
anim = F88558
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 20
anim = F88558
;ID =
pos = -41,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = animelem = 3
anim = F88558
;ID =
pos = -59,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 20
anim = F88558
;ID =
pos = -31,-8
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 20
anim = 6054
;ID =
pos = -19,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 20
anim = F88558
;ID =
pos = -42,-10
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 20
anim = 6054
;ID =
pos = -27,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 20
anim = F88558
;ID =
pos = -36,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 20
anim = 6054
;ID =
pos = -41,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 20
anim = F88558
;ID =
pos = -36,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 20
anim = 6054
;ID =
pos = -41,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 20
anim = F88558
;ID =
pos = -36,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = animelem = 2
anim = F88558
;ID =
pos = -57,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = animelem = 2
anim = F88558
;ID =
pos = -32,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = animelem = 2
anim = F88558
;ID =
pos = -32,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = animelem = 2
anim = F88558
;ID =
pos = -45,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 20
anim = 6054
;ID =
pos = -42,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = animelem = 2
anim = F88558
;ID =
pos = -32,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88091, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, GroundBlood1]
type = Explod
trigger1 = time = 0
anim = F88560+random%2
;ID =
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -1
scale = 1,1
sprpriority = -6
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88091, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Poacher_Joe"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Kruel_Kurt"
trigger3 = time = 0
trigger4 = Name = "Ultimate_R_Bear"
trigger4 = time = 0
trigger5 = Name = "Ultimate_Mizuki"
trigger5 = time = 0
value = S7,1
;ignorehitpause =
;persistent =

[State 88091, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0
value = S7,1
;ignorehitpause =
;persistent =

[State 88091, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 0
value = S7,1
;ignorehitpause =
;persistent =

[State 88091, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Andore"
trigger2 = time = 0
value = S7,2
;ignorehitpause =
;persistent =

[State 88091, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 0
value = S7,1
;ignorehitpause =
;persistent =

[State 88091, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 0
value = S7,2
;ignorehitpause =
;persistent =

[State 88091, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 0
value = S44,random%3
;ignorehitpause =
;persistent =

[State 88091, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Sodom"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Lash"
trigger3 = time = 0
trigger4 = Name = "Ultimate_Jigsaw"
trigger4 = time = 0
trigger5 = Name = "Ultimate_Mardia"
trigger5 = time = 0
trigger6 = Name = "Ultimate_Yamato"
trigger6 = time = 0
value = S7,2
;ignorehitpause =
;persistent =

[State 88091, BloodSquirt]
type = PlaySnd
trigger1 = time = 20
value = S809,0
;ignorehitpause =
;persistent =

[State 88091]
type = SelfState
trigger1 = time >90
value = 5150
Ctrl = 1

;-----------------------------------------------
;Head Pop Air #2
[Statedef 88092]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 88090
sprpriority = 0

[State 88092, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 702

[State 88092, AngleDraw]
type = AngleDraw
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=0
value = 1
scale = 1.3,1
ignorehitpause = 1
;persistent =

[State 88092, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 702

[State 88092, VelSet]
type = VelSet
trigger1 = time = 0
x = -1.5
y = -6
;ignorehitpause =
;persistent =

[State 88092, ValAdd]
type = VelAdd
Trigger1 = 1
y = .23

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0
anim = F89147
;ID =
pos = 8,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Poacher_Joe"
trigger2 = time = 0
anim = F89147
;ID =
pos = -12,-65
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 0
anim = F89147
;ID =
pos = 0,-84
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 0
anim = F89147
;ID =
pos = -6,-82
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 0
anim = F89147
;ID =
pos = -6,-82
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 0
anim = F89147
;ID =
pos = -12,-65
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 0
anim = F89147
;ID =
pos = -15,-97
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 0
anim = F89147
;ID =
pos = -7,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

;--
[State 88092, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 9
trigger2 = Name = "Ultimate_Cody"
trigger2 = time = 9
trigger3 = Name = "Ultimate_Kruel_Kurt"
trigger3 = time = 9
trigger4 = Name = "Ultimate_R_Bear"
trigger4 = time = 9
anim = F89147
;ID =
pos = -29,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 9
trigger2 = Name = "Ultimate_Poacher_Joe"
trigger2 = time = 9
anim = F89147
;ID =
pos = -24,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 9
anim = F89147
;ID =
pos = -46,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 9
anim = F89147
;ID =
pos = -34,-68
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 9
anim = F89147
;ID =
pos = -32,-55
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 9
anim = F89147
;ID =
pos = -25,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88092, Blood Drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = -10,-75
stateno = 88121
ownpal = 1
size.xscale = .3
size.yscale = .3

[State 88092, HeadGib1]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88110
name = "HeadGib1"
postype = p1
pos = -10,-77
stateno = 88110
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88092, HeadGib2]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88112
name = "HeadGib2"
postype = p1
pos = -12,-75
stateno = 88112
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88092, HeadPop]
type = PlaySnd
trigger1 = time = 0
value = F104,0
ignorehitpause = 1
persistent = 0

[State 88092,ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=5
value = 88091
ignorehitpause = 1

;----------------------------------------
;Ground based Head Pop
[Statedef 88093]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 88091
sprpriority = 0

[State 88093, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 703

[State 88093, AngleDraw]
type = AngleDraw
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=0
value = 1
scale = 1.3,1
ignorehitpause = 1
;persistent =

[State 88093, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 703

[State 88093, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 88093, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 88093, ValAdd]
type = VelAdd
Trigger1 = 1
y = 0

[State 88100, BloodExplode]
type = Explod
;trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = -55,-12
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, HeadGib1]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88110
name = "HeadGib1"
postype = p1
pos = -55,-12
stateno = 88110
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88093, HeadGib2]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88112
name = "HeadGib2"
postype = p1
pos = -55,-12
stateno = 88112
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88093, HeadPop]
type = PlaySnd
trigger1 = time = 0
value = F104,0
ignorehitpause = 1
persistent = 0

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 20
anim = F88558
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 20
anim = 6054
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 20
anim = F88558
;ID =
pos = -25,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 20
trigger2 = Name = "Ultimate_Poacher_Joe"
trigger2 = time = 20
anim = F88559
;ID =
pos = -41,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 20
anim = F88558
;ID =
pos = -45,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 20
anim = F88558
;ID =
pos = -30,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 0
anim = F88558
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 0
anim = F88558
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 20
anim = F88558
;ID =
pos = -41,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = animelem = 3
anim = F88558
;ID =
pos = -59,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 20
anim = F88558
;ID =
pos = -31,-8
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 20
anim = 6054
;ID =
pos = -19,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 20
anim = F88558
;ID =
pos = -42,-10
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 20
anim = 6054
;ID =
pos = -27,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 20
anim = F88558
;ID =
pos = -36,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 20
anim = 6054
;ID =
pos = -41,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 20
anim = F88558
;ID =
pos = -36,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 20
anim = 6054
;ID =
pos = -41,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 20
anim = F88558
;ID =
pos = -57,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 20
anim = F88558
;ID =
pos = -36,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 20
anim = F88558
;ID =
pos = -32,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 20
anim = F88558
;ID =
pos = -32,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 20
anim = F88558
;ID =
pos = -51,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 20
anim = 6054
;ID =
pos = -42,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = animelem = 2
anim = F88558
;ID =
pos = -32,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, GroundBlood1]
type = Explod
trigger1 = time = 0
anim = F88560+random%2
;ID =
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -1
scale = 1,1
sprpriority = -6
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88093, BloodSquirt]
type = PlaySnd
trigger1 = time = 20
value = S809,0
;ignorehitpause =
;persistent =

[State 88093]
type = SelfState
trigger1 = time >90
value = 5150
Ctrl = 1

;------------------------------
;Head Pop Standing
[Statedef 88100]
type    = S
movetype= H
physics = N
anim = 88100+random%2 ;HeadPopped
velset = 0,0
sprpriority = 2

[State 88100, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = nokoslow
flag2 = nokosnd
;flag3 = roundnotover
ignorehitpause = 1
;persistent =

[State 88100, AngleDraw]
type = AngleDraw
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=0
value = 1
scale = 1.3,1
ignorehitpause = 1
;persistent =

[State 88100, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 701

[State 88100, CodyJailOverlap]
type = Explod
triggerall = Name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
anim = 701
;ID =
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
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -20,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -11,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 0 || time = 30 ;|| time = 45
anim = F89147
;ID =
pos = -12,-62
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -11,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -3,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = 16,-66
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -5,-87
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -5,-91
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -5,-85
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -15,-98
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -15,-76
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -6,-89
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = 0,-76
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = 16,-87
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -3,-84
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -15,-80
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -14,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -5,-81
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -4,-94
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -9,-79
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = -10,-75
stateno = 88121
ownpal = 1
size.xscale = .3
size.yscale = .3

[State 88100, Blood Drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = -10,-75
stateno = 88121
ownpal = 1
size.xscale = .3
size.yscale = .3

[State 88100, HeadGib1]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88110
name = "HeadGib1"
postype = p1
pos = -10,-77
stateno = 88110
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88100, HeadGib2]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88112
name = "HeadGib2"
postype = p1
pos = -12,-75
stateno = 88112
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88100, GroundBlood1]
type = Explod
trigger1 = time = 30 || time = 60
anim = F88560+random%2
;ID =
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -1
scale = 1,1
sprpriority = -6
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = animelem = 12
anim = F88559
;ID =
pos = 25,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 118
anim = F88559
;ID =
pos = 25,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = animelem = 27
anim = F88559
;ID =
pos = -41,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = animelem = 9
anim = F88558
;ID =
pos = -45,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 126
anim = F88559
;ID =
pos = -61,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = animelem = 12
anim = F88558
;ID =
pos = 21,-1
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 93
anim = F88559
;ID =
pos = 80,3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 93
anim = F88559
;ID =
pos = 88,3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 112
anim = F88559
;ID =
pos = -45,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = animelem = 7
anim = F88558
;ID =
pos = -63,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 98
anim = F88558
;ID =
pos = -31,-8
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 98
anim = 6054
;ID =
pos = -19,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 115
anim = F88558
;ID =
pos = 70,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 122
anim = F88558
;ID =
pos = 80,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 121
anim = 6056
;ID =
pos = 75,-2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 136
anim = F88558
;ID =
pos = 25,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 122
anim = F88558
;ID =
pos = -36,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 121
anim = 6054
;ID =
pos = -44,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = animelem = 7
anim = F88558
;ID =
pos = -61,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 121
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = animelem = 7
anim = F88558
;ID =
pos = -37,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 121
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = animelem = 7
anim = F88558
;ID =
pos = -42,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 121
anim = 6054
;ID =
pos = -41,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = animelem = 7
anim = F88558
;ID =
pos = -51,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 121
anim = 6054
;ID =
pos = -43,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88100, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 93
anim = F88559
;ID =
pos = 60,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88100, HeadPop]
type = PlaySnd
trigger1 = time = 0
value = F104,0
ignorehitpause = 1
persistent = 0

[State 88100, FallToKneesHit]
type = PlaySnd
trigger1 = animelem = 4
trigger1 = Name = "Ultimate_Punisher"
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88100, FallToKneesHit]
type = PlaySnd
trigger1 = animelem = 4
trigger1 = Name = "Ultimate_Cody"
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88100, FallToKneesHit]
type = PlaySnd
trigger1 = Name = "Ultimate_Blaze"
trigger1 = animelem = 22
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88100, FallToKneesHit]
type = PlaySnd
trigger1 = Name = "Ultimate_Haggar"
trigger1 = animelem = 6
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88100, LandOnBack]
type = PlaySnd
trigger1 = Name = "Ultimate_Blaze"
trigger1 = animelem = 26
value = S7,5
ignorehitpause = 1
persistent = 0

[State 88100, LandOnBack]
type = PlaySnd
trigger1 = Name = "Ultimate_Haggar"
trigger1 = animelem = 8
trigger2 = Name = "Ultimate_Andore"
trigger2 = animelem = 8
value = S7,2
ignorehitpause = 1
persistent = 0

[State 88100, LandOnBack]
type = PlaySnd
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = animelem = 6
value = S7,5
ignorehitpause = 1
persistent = 0

[State 88100, FallToKneesHit]
type = PlaySnd
trigger1 = animelem = 5
trigger1 = Name = "Ultimate_Musashi"
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88100, HitFloor]
type = PlaySnd
trigger1 = animelem = 7
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger2 = animelem = 7
trigger2 = Name = "Ultimate_Mizuki"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88100, HitFloor]
type = PlaySnd
trigger1 = animelem = 7
trigger1 = Name = "Ultimate_Missing_Link"
trigger2 = animelem = 7
trigger2 = Name = "Ultimate_Scully"
trigger3 = animelem = 7
trigger3 = Name = "Ultimate_R_Bear"
trigger4 = animelem = 7
trigger4 = Name = "Ultimate_Jigsaw"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88100, LandOnBack]
type = PlaySnd
trigger1 = Name = "Ultimate_Ninja"
trigger1 = animelem = 7
value = S44,random%3
ignorehitpause = 1
persistent = 0

[State 88100, HitFloor]
type = PlaySnd
trigger1 = time = 109
trigger1 = Name = "Ultimate_EdiE"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88100, HitFloor]
type = PlaySnd
trigger1 = animelem = 7
trigger1 = Name = "Ultimate_Mustapha"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88100, FallToKneesHit]
type = PlaySnd
trigger1 = animelem = 5
trigger1 = Name = "Ultimate_Sodom"
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88100, HitFloor]
type = PlaySnd
trigger1 = animelem = 6
trigger1 = Name = "Ultimate_Lash"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88100, HitFloor]
type = PlaySnd
trigger1 = animelem = 6
trigger1 = Name = "Ultimate_Mardia"
trigger2 = animelem = 6
trigger2 = Name = "Ultimate_Yamato"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Punisher"
trigger1 = animelem = 12
trigger2 = Name = "Ultimate_Cody"
trigger2 = animelem = 12
trigger3 = Name = "Ultimate_Ninja"
trigger3 = animelem = 12
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Blaze"
trigger1 = animelem = 27
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Haggar"
trigger1 = animelem = 9
trigger2 = Name = "Ultimate_Andore"
trigger2 = animelem = 9
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = animelem = 8
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = animelem = 7
trigger2 = Name = "Ultimate_Mizuki"
trigger2 = animelem = 7
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = animelem = 7
trigger2 = Name = "Ultimate_Scully"
trigger2 = animelem = 7
trigger3 = Name = "Ultimate_Jigsaw"
trigger3 = animelem = 7
trigger4 = Name = "Ultimate_Mardia"
trigger4 = animelem = 7
trigger5 = Name = "Ultimate_Yamato"
trigger5 = animelem = 7
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 98
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 111
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 121
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 106
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 121
value = S809,0
;ignorehitpause =
persistent = 0

[State 88100, Timer]
type = SelfState
trigger1 = Time >= 150
trigger1 = !Ishelper
value = 5150

;-------------------------------------------------------------
;Head Gib1
[Statedef 88110]
type    = A
movetype= I
physics = N
anim = 88102 ; HeadGib1
velset = 0,0
ctrl = 0
sprpriority = 3

[State 88110, varrandom]
type = VarRandom
trigger1 = 1
v = 4
range = -2,-9

[State 88110, varrandom]
type = VarRandom
trigger1 = 1
v = 5
range = -4,4

[State 88110, velset]
type = velset
trigger1 = time = 1
y = var(4)
x = var(5)

[State 88110, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 88110]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 88111

;-------------------------------
;Head Gib 1 on ground
[Statedef 88111]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 88102 ;HeadGib1

[State 88111, ground blood]
type = explod
anim = F88970
trigger1 = time = 0
pos = 4,-4
vel = 0, 0
sprpriority = -3
removetime = -1
ownpal = 1

[State 88111, PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
value = F68,random%3

[State 88111, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------------------------
;Head Gib2
[Statedef 88112]
type    = A
movetype= I
physics = N
anim = 88103 ; HeadGib2
velset = 0,0
ctrl = 0
sprpriority = 3

[State 88112, varrandom]
type = VarRandom
trigger1 = 1
v = 4
range = -2,-9

[State 88112, varrandom]
type = VarRandom
trigger1 = 1
v = 5
range = -4,4

[State 88112, velset]
type = velset
trigger1 = time = 1
y = var(4)
x = var(5)

[State 88112, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 88112]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 88113

;-------------------------------
;Head Gib 2 on ground
[Statedef 88113]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 88103 ;HeadGib2

[State 88113, ground blood]
type = explod
anim = F88970
trigger1 = time = 0
pos = 4,-4
vel = 0, 0
sprpriority = -3
removetime = -1
ownpal = 1

[State 88113, PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
value = F68,random%3

[State 88113, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------------------------
;Blood drop (temp)
[Statedef 88120]
type    = A
movetype= I
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 88120, Explod]
type = Explod
trigger1 = time = 0
anim = F88951
ID = 88931
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 8
ontop = 0
ownpal = 1
removeongethit = 0

[State 88120, varrandom]
type = VarRandom
trigger1 = 1
v = 0
range = -2,-7

[State 88120, varrandom]
type = VarRandom
trigger1 = 1
v = 1
range = -4,4

[State 88120, velset]
type = velset
trigger1 = time = 1
y = var(0)
x = var(1)

[State 88120, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 88120, new ground blood]
type = explod
anim = F88970
triggerall = stagevar(info.name) != "Shinobi_Distruction_Surfing"
triggerall = stagevar(info.name) != "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
pos = 4,-4
vel = 0, 0
ID = 88932
sprpriority = -3
removetime = 350
ownpal = 1

[State 88120, new ground blood]
type = explod
anim = F88970
triggerall = facing = 1
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
trigger2 = stagevar(info.name) = "Shinobi_Distruction_Surfing"
trigger2 = Pos Y >= -3
trigger2 = Vel Y > 0
pos = 4,-4
vel = -6, 0
ID = 88932
sprpriority = -3
removetime = 350
ownpal = 1

[State 88120, new ground blood]
type = explod
anim = F88970
triggerall = facing = -1
trigger1 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
trigger2 = stagevar(info.name) = "Shinobi_Distruction_Surfing"
trigger2 = Pos Y >= -3
trigger2 = Vel Y > 0
pos = 4,-4
vel = 6, 0
ID = 88932
sprpriority = -3
removetime = 350
ownpal = 1

[State 88120, PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
value = F68,random%3

[State 88120, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
id = 88931

[State 88120, RemoveExplod]
type = RemoveExplod
trigger1 = time = 350
id = 88932

[State 88120] ;Good bye blood
type = DestroySelf
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
ignorehitpause = 1

;-------------------------------------------------------------
;Blood drop (stay)
[Statedef 88121]
type    = A
movetype= I
physics = N
anim = 9800 ; invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 88121, varrandom]
type = VarRandom
trigger1 = 1
v = 2
range = -2,-7

[State 88121, varrandom]
type = VarRandom
trigger1 = 1
v = 3
range = -4,4

[State 88121, velset]
type = velset
trigger1 = time = 1
y = var(2)
x = var(3)

[State 88121, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 88121, Blood]
type = Explod
triggerall = Vel X >= 0
trigger1 = time = 1
anim = 88951
ID = 88121
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 8
ontop = 0
ownpal = 1
removeongethit = 0

[State 11821, Blood]
type = Explod
triggerall = Vel X < 0
trigger1 = time = 1
anim = 88951
ID = 88121
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 99999
pausemove = 99999
scale = .3,.3
sprpriority = 8
ontop = 0
ownpal = 1
removeongethit = 0

[State 88121]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 88122

;-------------------------------
;blood on ground
[Statedef 88122]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 9800 ;invisible

[State 88122, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 0
id = 88121

[State 88122, ground blood]
type = explod
anim = F88970
triggerall = stagevar(info.name) != "Shinobi_Distruction_Surfing"
triggerall = stagevar(info.name) != "Ultimate_Mysterious_Ocean_TMNT"
trigger1 = time = 0
pos = 4,-4
vel = 0, 0
sprpriority = -3
removetime = -1
ownpal = 1

[State 88122, ground blood]
type = explod
anim = F88970
triggerall = facing = 1
trigger1 = stagevar(info.name) = "Shinobi_Distruction_Surfing"
trigger1 = time = 0
trigger2 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger2 = time = 0
pos = 4,-4
vel = -6, 0
sprpriority = -3
removetime = -1
ownpal = 1

[State 88122, ground blood]
type = explod
anim = F88970
triggerall = facing = -1
trigger1 = stagevar(info.name) = "Shinobi_Distruction_Surfing"
trigger1 = time = 0
trigger2 = stagevar(info.name) = "Ultimate_Mysterious_Ocean_TMNT"
trigger2 = time = 0
pos = 4,-4
vel = 6, 0
sprpriority = -3
removetime = -1
ownpal = 1

[State 88122, PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
value = F68,random%3

[State 88122, DestroySelf]
type = DestroySelf
trigger1 = time >=5

;------------------------------
;Explosion Finisher Start
[Statedef 88260]
type    = A
movetype= H
physics = N
anim = 9800 ;invisible
velset = 0,0
sprpriority = 1

[State 88260, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = nokoslow
flag2 = nokosnd
;flag3 = roundnotover
ignorehitpause = 1
;persistent =

[State 88260, Explode]
type = PlaySnd
trigger1 = time = 0
value = S909,0

[State 88260, Blood Splash]
type = Explod
trigger1 = time = 0
anim = F3250
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 37
scale = 1,1
sprpriority = 8
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 88260, Torso]
type = Helper
trigger1 = time = 0
stateno = 88262
id = 88262
ownpal = 0
pos = 0,-50

[State 88260, Arm1]
type = Helper
trigger1 = time = 0
stateno = 88264
id = 88264
ownpal = 0
pos = 0,-50

[State 88260, Arm2]
type = Helper
trigger1 = time = 0
stateno = 88266
id = 88266
ownpal = 0
pos = 0,-52

[State 88260, Leg1]
type = Helper
trigger1 = time = 0
stateno = 88268
id = 88268
ownpal = 0
pos = 0,-48

[State 88260, Leg2]
type = Helper
trigger1 = time = 0
stateno = 88270
id = 88270
ownpal = 0
pos = 0,-47

[State 88260, Special Item]
type = Helper
trigger1 = time = 0
stateno = 88272
id = 88272
ownpal = 0
pos = 0,-47

[State 88260, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 0,-52
stateno = 88121
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88260, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 0,-53
stateno = 88121
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88260, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 0,-54
stateno = 88121
facing = -1
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88260, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 0,-55
stateno = 88121
facing = -1
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88260, VelAdd]
type = VelAdd
trigger1 = time >=10
x = 0
y = 0.4

[State 88260, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 88261
ctrl = 0

;------------------------------
;Explosion timer
[Statedef 88261]
type    = S
movetype= H
physics = N
anim = 9800 ;invisible
velset = 0,0
sprpriority = 1

[State 88261, Timer]
type = SelfState
trigger1 = Time >= 210
trigger1 = !Ishelper
value = 5150
ctrl = 1

;------------------------------------------------------------------------------------------------------------
;Explosion (Top Torso fall)
[Statedef 88262]
type = A
movetype = H
physics = N
anim = 9800 ;invisible
ctrl = 0
sprpriority = 3

[State 88262, Torso]
type = ChangeAnim
trigger1 = Time = 0
value = 88260

[State 88262, VelSet]
type = VelSet
trigger1 = Time = 0
x = 1.2
y = -8

[State 88262, AngleAdd] ; make spin
Type = AngleAdd
trigger1 = 1
Value =-12         ; how much spin

[State 88262, AngleDraw]         ; make spin
Type = AngleDraw
trigger1 = time>0

[State 88262, DieYell]
type = PlaySnd
trigger1 = time = 0
value = S11,0

[State 88262, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.3

[State 88262, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -7
trigger1 = Vel Y > 0
value = 88263

;-------------------------------
;Explosion Torso (top body lay on ground)
[Statedef 88263]
type    = S
movetype= H
physics = N
velset = 0,0

[State 88263, TopTorso]
type = ChangeAnim
Trigger1 = Time = 0
value = 88261

[State 88263, Thud]
type = PlaySnd
trigger1 = time = 0
value = F75,0

[State 88263, blood puddle]
type = explod
anim = F88558
trigger1 = time = 10
pos = 0,5
vel = 0, 0
sprpriority = -2
removetime = -1

[State 88263, ground blood]
type = explod
anim = F88560
trigger1 = time = 5
pos = -40,-2
vel = 0, 0
sprpriority = -2
removetime = -1
random = 40,0

[State 88263, ground blood]
type = explod
anim = F88561
trigger1 = time = 6
pos = 0,0
vel = 0, 0
sprpriority = -2
removetime = -1
random = 40,0

[State 88263, ground blood]
type = explod
anim = F88560
trigger1 = time = 7
pos = 60,2
vel = 0, 0
sprpriority = -2
removetime = -1
random = 40,0

[State 88263, ground blood]
type = explod
anim = F88561
trigger1 = time = 8
pos = 70,4
vel = 0, 0
sprpriority = -2
removetime = -1
random = 40,0

;------------------------------------------------------------------------------------------------------------
;Explosion Arm 1 (Falling)
[Statedef 88264]
type = A
movetype = H
physics = N
anim = 9800;invisible
ctrl = 0
sprpriority = 3

[State 88264, Arm]
type = ChangeAnim
trigger1 = Time = 0
value = 88211

[State 88264, VelSet]
type = VelSet
trigger1 = Time = 0
x = 1.5
y = -11

[State 88264,AngleAdd] ; make spin
Type = AngleAdd
trigger1 = 1
Value =-12         ; how much spin

[State 88264,AngleDraw]         ; make spin
Type = AngleDraw
trigger1 = time>0

[State 88264, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 88264, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -4
trigger1 = Vel Y > 0
value = 88265

[State 88264, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= -4
trigger1 = Vel Y > 0
ignorehitpause = 1

;-------------------------------
;Explosison Arm 1 (Lay on ground)
[Statedef 88265]
type    = S
movetype= H
physics = N
velset = 0,0

[State 88265, Arm]
type = ChangeAnim
Trigger1 = Time = 0
value = 88212

[State 88265, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F75,0

[State 88265, blood puddle]
type = explod
anim = F88559
trigger1 = time = 1
pos = -14,0
vel = 0, 0
sprpriority = -2
removetime = -2

;------------------------------------------------------------------------------------------------------------
;Explosion Arm 2 (Falling)
[Statedef 88266]
type = A
movetype = A
physics = N
anim = 9800;invisible
ctrl = 0
sprpriority = 3

[State 88266, Arm]
type = ChangeAnim
trigger1 = Time = 0
value = 88211

[State 88266, VelSet]
type = VelSet
trigger1 = Time = 0
x = -1.5
y = -9

[State 88266,AngleAdd] ; make spin
Type = AngleAdd
trigger1 = 1
Value =12         ; how much spin

[State 8826,AngleDraw]         ; make spin
Type = AngleDraw
trigger1 = time>0

[State 88266, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 88266, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
value = 88267

[State 88266, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= -3
trigger1 = Vel Y > 0
ignorehitpause = 1

;-------------------------------
;Explosion Arm 2 (Lay on ground)
[Statedef 88267]
type    = S
movetype= H
physics = N
velset = 0,0

[State 88267, Arm]
type = ChangeAnim
Trigger1 = Time = 0
value = 88212

[State 88267, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F75,0

[State 88267, blood puddle]
type = explod
anim = F88559
trigger1 = time = 1
pos = -14,0
vel = 0, 0
sprpriority = -2
removetime = -2

;-------------------------------
;Explosion Leg 1 fall
[Statedef 88268]
type = A
movetype = A
physics = N
anim = 9800 ;invisible
ctrl = 0
sprpriority = 6

[State 88268, Leg]
type = ChangeAnim
trigger1 = Time = 0
value = 88247

[State 88268, VelSet]
type = VelSet
trigger1 = Time = 0 ;&& Parent,Stateno = 88600
x = 0.3
y = -8.8

[State 88268, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 88268,AngleAdd] ; make spin
Type = AngleAdd
trigger1 = 1
Value =-9         ; how much spin

[State 88268, AngleDraw]         ; make spin
Type = AngleDraw
trigger1 = time>0

[State 88268, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 8
trigger1 = Vel Y > 0
value = 88269

;-------------------------------
;leg lay on ground
[Statedef 88269]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 7

[State 88269, Leg]
type = ChangeAnim
Trigger1 = Time = 0
value = 88248

[State 88269, Thud]
type = PlaySnd
trigger1 = time = 0
value = F75,0

[State 88269, blood puddle]
type = explod
anim = F88558
trigger1 = time = 10
pos = -20,-3
vel = 0, 0
sprpriority = -2
removetime = -1
ownpal = 1

[State 88269, ground blood]
type = explod
anim = F88561
trigger1 = time = 2
pos = -40,0
vel = 0, 0
sprpriority = -2
removetime = -1

[State 88269, ground blood]
type = explod
anim = F88561
trigger1 = time = 3
pos = 0,1
vel = 0, 0
sprpriority = -2
removetime = -1

[State 88269, ground blood]
type = explod
anim = F88561
trigger1 = time = 4
pos = 60,-2
vel = 0, 0
sprpriority = -2
removetime = -1

[State 88269, ground blood]
type = explod
anim = F88561
trigger1 = time = 5
pos = 70,4
vel = 0, 0
sprpriority = -2
removetime = -1

;-------------------------------
;Explosion Leg 2 fall
[Statedef 88270]
type = A
movetype = A
physics = N
anim = 9800 ;invisible
ctrl = 0
sprpriority = 6

[State 88270, Leg]
type = ChangeAnim
trigger1 = Time = 0
value = 88247

[State 88270, VelSet]
type = VelSet
trigger1 = Time = 0 ;&& Parent,Stateno = 88600
x = -0.4
y = -7.8

[State 88270, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 88270,AngleAdd] ; make spin
Type = AngleAdd
trigger1 = 1
Value =9         ; how much spin

[State 88270, AngleDraw]         ; make spin
Type = AngleDraw
trigger1 = time>0

[State 88270, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 8
trigger1 = Vel Y > 0
value = 88271

;-------------------------------
;leg lay on ground
[Statedef 88271]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 7

[State 88271, Leg]
type = ChangeAnim
Trigger1 = Time = 0
value = 88248

[State 88271, Thud]
type = PlaySnd
trigger1 = time = 0
value = F75,0

[State 88271, blood puddle]
type = explod
anim = F88558
trigger1 = time = 10
pos = -20,-3
vel = 0, 0
sprpriority = -2
removetime = -1
ownpal = 1

[State 88271, ground blood]
type = explod
anim = F88561
trigger1 = time = 2
pos = -40,0
vel = 0, 0
sprpriority = -2
removetime = -1

[State 88271, ground blood]
type = explod
anim = F88561
trigger1 = time = 3
pos = 0,1
vel = 0, 0
sprpriority = -2
removetime = -1

[State 88271, ground blood]
type = explod
anim = F88561
trigger1 = time = 4
pos = 60,-2
vel = 0, 0
sprpriority = -2
removetime = -1

[State 88271, ground blood]
type = explod
anim = F88561
trigger1 = time = 5
pos = 70,4
vel = 0, 0
sprpriority = -2
removetime = -1

;-------------------------------------------------------------
;Explosion Special Item fall
[Statedef 88272]
type    = A
movetype= I
physics = N
anim = 9800 ;invisible
velset = 0,0
ctrl = 0
sprpriority = 3

[State 88272, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 88262

[State 88272, varrandom]
type = VarRandom
trigger1 = 1
v = 2
range = -3,-10

[State 88272, varrandom]
type = VarRandom
trigger1 = 1
v = 3
range = -6,-1

[State 88272, velset]
type = velset
trigger1 = time = 1
y = var(2)
x = var(3)

[State 88272, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 88272]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 88273

;-------------------------------
;Explosion Special Item (on ground)
[Statedef 88273]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 9800 ;invisible

[State 88273, Special Item]
type = ChangeAnim
trigger1 = time = 0
value = 88263

;-------------------------------
;Blob Explosion Head 1 fall
[Statedef 88274]
type = A
movetype = A
physics = N
anim = 9800 ;invisible
ctrl = 0
sprpriority = 6

[State 88274, Head]
type = ChangeAnim
trigger1 = Time = 0
value = 88215

[State 88274, VelSet]
type = VelSet
trigger1 = Time = 0 ;&& Parent,Stateno = 88600
x = 0.3
y = -8.8

[State 88274, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 88274,AngleAdd] ; make spin
Type = AngleAdd
trigger1 = 1
Value =-9         ; how much spin

[State 88274, AngleDraw]         ; make spin
Type = AngleDraw
trigger1 = time>0

[State 88274, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 8
trigger1 = Vel Y > 0
value = 88275

;-------------------------------
;Head lay on ground
[Statedef 88275]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 7

[State 88275, Leg]
type = ChangeAnim
Trigger1 = Time = 0
value = 88248

[State 88275, Thud]
type = PlaySnd
trigger1 = time = 0
value = F75,0

[State 88275, blood puddle]
type = explod
anim = F88558
trigger1 = time = 10
pos = 0,-3
vel = 0, 0
sprpriority = -2
removetime = -1
ownpal = 1

[State 88275, ground blood]
type = explod
anim = F88561
trigger1 = time = 2
pos = -40,0
vel = 0, 0
sprpriority = -2
removetime = -1

[State 88275, ground blood]
type = explod
anim = F88561
trigger1 = time = 3
pos = 0,1
vel = 0, 0
sprpriority = -2
removetime = -1

[State 88275, ground blood]
type = explod
anim = F88561
trigger1 = time = 4
pos = 60,-2
vel = 0, 0
sprpriority = -2
removetime = -1

[State 88275, ground blood]
type = explod
anim = F88561
trigger1 = time = 5
pos = 70,4
vel = 0, 0
sprpriority = -2
removetime = -1

;-----------------------------------------------
;Head Pop - Blob Head Basher (throw)
[Statedef 88280]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 88090
sprpriority = 4

[State 88280, Turn]
type = Turn
trigger1 = time = 0
;ignorehitpause =
;persistent =

[State 88280, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 702

[State 88280, AngleDraw]
type = AngleDraw
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=0
value = 1
scale = 1.3,1
ignorehitpause = 1
;persistent =

[State 88280, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 702

[State 88280, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 15
y = -28
ignorehitpause = 1
persistent = 0

[State 88280, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1
persistent = 1

[State 88280, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 88280, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = -1
;ignorehitpause =
;persistent =

[State 88280, ValAdd]
type = VelAdd
Trigger1 = 1
y = .23

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode1]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0
anim = F89147
;ID =
pos = 8,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 9
trigger2 = Name = "Ultimate_Cody"
trigger2 = time = 9
anim = F89147
;ID =
pos = -29,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 0
anim = F89147
;ID =
pos = -7,-89
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 9
anim = F89147
;ID =
pos = -41,-54
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode1]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 0
anim = F89147
;ID =
pos = -12,-65
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 9
anim = F89147
;ID =
pos = -24,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode1]
type = Explod
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 0
anim = F89147
;ID =
pos = -3,-73
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 9
anim = F89147
;ID =
pos = 11,-63
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 9
anim = F89147
;ID =
pos = -28,-65
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 0
anim = F89147
;ID =
pos = -5,-87
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 0
anim = F89147
;ID =
pos = -6,-91
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 0
anim = F89147
;ID =
pos = -12,-65
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 9
anim = F89147
;ID =
pos = -32,-55
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88290, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88290, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-81
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode1]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 0
anim = F89147
;ID =
pos = -7,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 9
anim = F89147
;ID =
pos = -25,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode1]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 0
anim = F89147
;ID =
pos = -7,-77
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 9
anim = F89147
;ID =
pos = -40,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 0
anim = F89147
;ID =
pos = -22,-78
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 9
anim = F89147
;ID =
pos = -43,-52
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode1]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88090, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 9
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 0
anim = F89147
;ID =
pos = -3,-84
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 9
anim = F89147
;ID =
pos = -40,-68
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 0
anim = F89147
;ID =
pos = -13,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 9
anim = F89147
;ID =
pos = -29,-74
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 0
anim = F89147
;ID =
pos = -10,-78
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 9
anim = F89147
;ID =
pos = -30,-63
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 0
anim = F89147
;ID =
pos = -7,-93
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 9
anim = F89147
;ID =
pos = -46,-51
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 0
anim = F89147
;ID =
pos = -7,-82
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, BloodExplode2]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 9
anim = F89147
;ID =
pos = -45,-51
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88280, Blood Drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = -10,-75
stateno = 88121
ownpal = 1
size.xscale = .3
size.yscale = .3

[State 88280, HeadGib1]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88110
name = "HeadGib1"
postype = p1
pos = -10,-77
stateno = 88110
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88280, HeadGib2]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88112
name = "HeadGib2"
postype = p1
pos = -12,-75
stateno = 88112
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88280, HeadPop]
type = PlaySnd
trigger1 = time = 0
value = F107,random%2
ignorehitpause = 1
persistent = 0

[State 88280,ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=3
value = 88281
ignorehitpause = 1

;----------------------------------------
;Head Pop on ground Blob Head Basher (throw) Cont...
[Statedef 88281]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 88091
sprpriority = 5

[State 88281, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 88281, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 88281, ValAdd]
type = VelAdd
Trigger1 = 1
y = 0

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
anim = F88558
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
anim = 6054
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0
anim = F88558
;ID =
pos = -25,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0
anim = 6054
;ID =
pos = -39,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 0
anim = F88558
;ID =
pos = -53,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 0
anim = F88559
;ID =
pos = -41,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 0
anim = F88559
;ID =
pos = -42,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 0
anim = F88558
;ID =
pos = -35,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 0
anim = F88558
;ID =
pos = -35,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 0
anim = F88558
;ID =
pos = -35,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 0
anim = F88558
;ID =
pos = -41,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = animelem = 3
anim = F88558
;ID =
pos = -59,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 20
anim = F88558
;ID =
pos = -31,-8
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 18
anim = 6054
;ID =
pos = -19,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 20
anim = F88558
;ID =
pos = -42,-10
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 18
anim = 6054
;ID =
pos = -27,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 20
anim = F88558
;ID =
pos = -36,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 18
anim = 6054
;ID =
pos = -41,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 18
anim = F88558
;ID =
pos = -57,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 20
anim = F88558
;ID =
pos = -36,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = animelem = 2
anim = F88558
;ID =
pos = -32,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = animelem = 2
anim = F88558
;ID =
pos = -32,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = animelem = 2
anim = F88558
;ID =
pos = -45,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 20
anim = 6054
;ID =
pos = -42,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = animelem = 2
anim = F88558
;ID =
pos = -32,-6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88281, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 20
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, GroundBlood1]
type = Explod
trigger1 = time = 0
anim = F88560+random%2
;ID =
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -1
scale = 1,1
sprpriority = -6
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88281, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Poacher_Joe"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Musashi"
trigger3 = time = 0
trigger4 = Name = "Ultimate_Cody"
trigger4 = time = 0
trigger5 = Name = "Ultimate_Blaze"
trigger5 = time = 0
trigger6 = Name = "Ultimate_R_Bear"
trigger6 = time = 0
trigger7 = Name = "Ultimate_EdiE"
trigger7 = time = 0
trigger8 = Name = "Ultimate_Mustapha"
trigger8 = time = 0
value = S7,1
;ignorehitpause =
;persistent =

[State 88281, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Missing_Link"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Scully"
trigger3 = time = 0
trigger4 = Name = "Ultimate_Jigsaw"
trigger4 = time = 0
trigger5 = Name = "Ultimate_Mardia"
trigger5 = time = 0
trigger6 = Name = "Ultimate_Yamato"
trigger6 = time = 0
trigger7 = Name = "Ultimate_Lash"
trigger7 = time = 0
trigger8 = Name = "Ultimate_Andore"
trigger8 = time = 0
value = S7,2
;ignorehitpause =
;persistent =

[State 88281, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 0
value = S44,random%3
;ignorehitpause =
;persistent =

[State 88281, BloodSquirt]
type = PlaySnd
trigger1 = time = 18
value = S809,0
;ignorehitpause =
;persistent =

[State 88281]
type = SelfState
trigger1 = time >90
value = 5150
Ctrl = 1

;---------------------------------------------------------------------------
;Enemy react (Blob) Mutant Mayhem 4 On Floor (Round 1 check)
[Statedef 88285]
type    = A
movetype= H
physics = N
poweradd= 0
velset = 0,0
ctrl = 0
anim = 1269
sprpriority = 1

[State 88285, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 1269
ignorehitpause = 1
;persistent =

[State 88285, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 725
ignorehitpause = 1

[State 88285, AngleDraw]
type = AngleDraw
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=0
value = 1
scale = 1.3,1
ignorehitpause = 1
;persistent =

[State 88285, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 725
ignorehitpause = 1

[State 88285, PrettyBoy25]
type = ChangeAnim
triggerall = Var(40) = 3
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 31

[State 88285, PrettyBoy50]
type = ChangeAnim
triggerall = Var(40) = 2
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 19

[State 88285, PrettyBoy75]
type = ChangeAnim
triggerall = Var(40) = 1
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 17

[State 88285, PrettyBoy100]
type = ChangeAnim
triggerall = Var(40) = 0
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 0
value = 11

[State 88285, FlameGolem]
type = ChangeAnim
triggerall = name = "Ultimate_Blob"
triggerall = Var(50) = 1
trigger1 = time = 0
value = 905

[State 88285, PosSet]
type = PosSet
trigger1 = time >=0
y = 0
ignorehitpause = 1
persistent = 1

[State 88285, VelSet]
type = VelSet
trigger1 = time >=0
y = 0
;ignorehitpause =
;persistent =

[State 88285, VelAdd]
type = VelAdd
trigger1 = time >=0
y = 0
;ignorehitpause =
;persistent =

[State 88285, HitGround]
type = PlaySnd
trigger1 = Name != "Ultimate_Blob"
trigger1 = time = 0
value = S40,0
;ignorehitpause =
;persistent =

[State 88285, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Blob"
trigger1 = time = 0
value = S7,1
;ignorehitpause =
;persistent =

[State 88285, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
Trigger1 = life > 0
value = 1270
;ignorehitpause =
;persistent =

[State 88285, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 30
Trigger1 = life > 0
value = 726

[State 88285, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 30
Trigger1 = life > 0
value = 726

[State 88285, PrettyBoy25]
type = ChangeAnim
triggerall = Var(40) = 3
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 30
Trigger1 = life > 0
value = 54

[State 88285, PrettyBoy50]
type = ChangeAnim
triggerall = Var(40) = 2
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 30
Trigger1 = life > 0
value = 52

[State 88285, PrettyBoy75]
type = ChangeAnim
triggerall = Var(40) = 1
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 30
Trigger1 = life > 0
value = 50

[State 88285, PrettyBoy100]
type = ChangeAnim
triggerall = Var(40) = 0
triggerall = name = "Ultimate_Pretty_Boy"
trigger1 = time = 30
Trigger1 = life > 0
value = 10

[State 88285, FlameGolem]
type = ChangeAnim
triggerall = name = "Ultimate_Blob"
triggerall = Var(50) = 1
trigger1 = time = 30
Trigger1 = life > 0
value = 903

[State 88285, AmazonWaterFXSmall]
type = Explod
trigger1 = stagevar(info.name) = "Ultimate_MSHWotG_Amazon"
trigger1 = time = 0
anim = F141
;ID =
pos = 0,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 88285, CodyJail]
type = SelfState
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=39
Trigger1 = life > 0
value = 0
ctrl = 1
anim = 4001
;ignorehitpause =
;persistent =

[State 88285, SelfState]
type = SelfState
trigger1 = time >=39
Trigger1 = life > 0
value = 0
ctrl = 1
anim = 0
;ignorehitpause =
;persistent =

[State 88285, SelfState]
type = SelfState
trigger1 = time >=39
Trigger1 = life <=0
value = 5150
ctrl = 1
;anim = 0
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
;Enemy react (Blob) Mutant Mayhem Wall go to Floor (Finisher)
[Statedef 88290]
type    = A
movetype= H
physics = N
poweradd= 0
velset = 0,0
ctrl = 0
anim = 88264
sprpriority = 1

[State 88290, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 88264
;ignorehitpause =
;persistent =

[State 88290, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 727

[State 88290, AngleDraw]
type = AngleDraw
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=0
value = 1
scale = 1.3,1
ignorehitpause = 1
;persistent =

[State 88290, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 727

[State 88290, PosFreeze]
type = PosFreeze
trigger1 = time <= 10
value = 1
;ignorehitpause =
;persistent =

[State 88290, VelSet]
type = VelSet
trigger1 = time >=10
x = 0
y = 1
;ignorehitpause =
;persistent =

[State 88290, VelAdd]
type = VelAdd
trigger1 = time >=10
y = 1
;ignorehitpause =
;persistent =

[State 88290, BigBloodSplash]
type = Explod
triggerall = Name != "Ultimate_Blob"
triggerall = Name != "Ultimate_Pretty_Boy"
trigger1 = time = 0
anim = F3250
pos = 20,-60
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 88290, Arm1]
type = Helper
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
stateno = 88300
id = 88300
ownpal = 0
pos = 0,-50

[State 88290, Arm1]
type = Helper
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 0
stateno = 88300
id = 88300
ownpal = 0
pos = 0,-50

[State 88290, Arm1]
type = Helper
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 0
stateno = 88300
id = 88300
ownpal = 0
pos = 0,-50

[State 88290, SpecialItem]
type = Helper
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Kruel_Kurt"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Kruel_Kurt"
trigger3 = time = 0
stateno = 88272
id = 88272
ownpal = 0
pos = 10,-50

[State 88290, Leg1]
type = Helper
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Missing_Link"
trigger2 = time = 0
stateno = 88268
id = 88268
ownpal = 0
pos = 10,-48

[State 88290, Head]
type = Helper
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 0
stateno = 88274
id = 88274
ownpal = 0
pos = 10,-80

[State 88290, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 5,-52
stateno = 88121
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88290, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay2"
postype = p1
pos = 6,-53
stateno = 88121
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88290, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay3"
postype = p1
pos = 7,-54
stateno = 88121
facing = -1
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88290, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay4"
postype = p1
pos = 4,-55
stateno = 88121
facing = -1
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88290, HeadGib1]
type = Helper
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Musashi"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Cody"
trigger3 = time = 0
trigger4 = Name = "Ultimate_Kruel_Kurt"
trigger4 = time = 0
helpertype = Normal
ID = 88110
name = "HeadGib1"
postype = p1
pos = -10,-77
stateno = 88110
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88290, HeadGib2]
type = Helper
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Cody"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Kruel_Kurt"
trigger3 = time = 0
helpertype = Normal
ID = 88112
name = "HeadGib2"
postype = p1
pos = -12,-75
stateno = 88112
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88290, WallSlide]
type = PlaySnd
trigger1 = time = 12
value = S601,0
;ignorehitpause =
;persistent =

[State 88290, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 88295
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
;Enemy react (Blob) Mutant Mayhem 4 On Floor (Finisher)
[Statedef 88295]
type    = A
movetype= H
physics = N
poweradd= 0
velset = 0,0
ctrl = 0
anim = 88265
sprpriority = 1

[State 88295, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 88265
;ignorehitpause =
;persistent =

[State 88295, AngleDraw]
type = AngleDraw
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=0
value = 1
scale = 1.3,1
ignorehitpause = 1
;persistent =

[State 88295, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 728

[State 88295, CodyJail]
type = Explod
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
anim = 728
;ID =
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
removetime = -1
scale = 1,1
sprpriority = 2
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 88295, PosSet]
type = PosSet
trigger1 = time >=0
y = 0
ignorehitpause = 1
persistent = 1

[State 88295, VelSet]
type = VelSet
trigger1 = time >=0
y = 0
;ignorehitpause =
;persistent =

[State 88295, VelAdd]
type = VelAdd
trigger1 = time >=0
y = 0
;ignorehitpause =
;persistent =

[State 88295, HitGround]
type = PlaySnd
trigger1 = Name != "Ultimate_Blob"
trigger1 = time = 0
value = S40,0
;ignorehitpause =
;persistent =

[State 88295, HitGround]
type = PlaySnd
trigger1 = Name = "Ultimate_Blob"
trigger1 = time = 0
value = S7,1
;ignorehitpause =
;persistent =

[State 88295, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Punisher"
trigger1 = animelem = 4
value = S809,0
;ignorehitpause =
persistent = 0

[State 88295, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Yamato"
trigger1 = animelem = 3
value = S809,0
;ignorehitpause =
persistent = 0

[State 88295, SelfState]
type = SelfState
trigger1 = time >=150
value = 5150
ctrl = 1
;anim = 0
;ignorehitpause =
;persistent =

;------------------------------------------------------------------------------------------------------------
;(BloB) Mutant Mayhem Arm 1 (Falling) (Finisher)
[Statedef 88300]
type = A
movetype = H
physics = N
anim = 9800;invisible
ctrl = 0
sprpriority = 5

[State 88300, Arm]
type = ChangeAnim
trigger1 = Time = 0
value = 88211

[State 88300, VelSet]
type = VelSet
trigger1 = Time = 0
x = 1.5
y = -5

[State 88300,AngleAdd] ; make spin
Type = AngleAdd
trigger1 = 1
Value =12         ; how much spin

[State 88300,AngleDraw]         ; make spin
Type = AngleDraw
trigger1 = time>0

[State 88300, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.3

[State 88300, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -4
trigger1 = Vel Y > 0
value = 88301

[State 88300, DestroySelf]
type = DestroySelf
trigger1 = Pos Y >= -4
trigger1 = Vel Y > 0
ignorehitpause = 1

;-------------------------------
;(Blob) Mutant Mayhem Arm 1 (Lay on ground) (Finisher)
[Statedef 88301]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 5

[State 88301, Arm]
type = ChangeAnim
Trigger1 = Time = 0
value = 88212

[State 88301, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F75,0

[State 88301, blood puddle]
type = explod
anim = F88559
trigger1 = time = 1
pos = -14,0
vel = 0, 0
sprpriority = -2
removetime = -2

;---------------------------------------------------------------------------
;Enemy react 2 Mutant Mayhem (Finisher)
[Statedef 88350]
type    = A
movetype= H
physics = N
poweradd= 0
velset = 0,0
ctrl = 0
anim = 88266
sprpriority = 1

[State 88350, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 88266
;ignorehitpause =
;persistent =

[State 88350, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 729

[State 88350, AngleDraw]
type = AngleDraw
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=0
value = 1
scale = 1.3,1
ignorehitpause = 1
;persistent =

[State 88350, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 729

[State 88350, PosSet]
type = PosSet
trigger1 = time >= 0
y = 0
;ignorehitpause =
persistent = 1

[State 88350, BigBloodSplash]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Musashi"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Poacher_Joe"
trigger3 = time = 0
trigger4 = Name = "Ultimate_Cody"
trigger4 = time = 0
trigger5 = Name = "Ultimate_Kruel_Kurt"
trigger5 = time = 0
trigger6 = Name = "Ultimate_Missing_Link"
trigger6 = time = 0
trigger7 = Name = "Ultimate_Blaze"
trigger7 = time = 0
trigger8 = Name = "Ultimate_Ninja"
trigger8 = time = 0
anim = F3250
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 88350, Arm1]
type = Helper
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
stateno = 88355
id = 88355
ownpal = 0
pos = 0,-5

[State 88350, SpecialItem]
type = Helper
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Kruel_Kurt"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Missing_Link"
trigger3 = time = 0
stateno = 88272
id = 88272
ownpal = 0
pos = 20,-10

[State 88350, Leg1]
type = Helper
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 0
stateno = 88268
id = 88268
ownpal = 0
pos = 40,-10

[State 88350, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = -40,-5
stateno = 88121
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88350, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay2"
postype = p1
pos = -10,-5
stateno = 88121
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88350, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay3"
postype = p1
pos = 10,-6
stateno = 88121
facing = -1
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88350, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay4"
postype = p1
pos = 40,-5
stateno = 88121
facing = -1
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88350, HeadGib1]
type = Helper
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Musashi"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Kruel_Kurt"
trigger3 = time = 0
helpertype = Normal
ID = 88110
name = "HeadGib1"
postype = p1
pos = -55,-7
stateno = 88110
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88350, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 80
trigger2 = Name = "Ultimate_Musashi"
trigger2 = time = 80
trigger3 = Name = "Ultimate_Cody"
trigger3 = time = 80
trigger4 = Name = "Ultimate_Kruel_Kurt"
trigger4 = time = 0
trigger5 = Name = "Ultimate_Missing_Link"
trigger5 = time = 0
trigger6 = Name = "Ultimate_Blaze"
trigger6 = time = 0
trigger7 = Name = "Ultimate_Ninja"
trigger7 = time = 0
anim = F88558
;ID =
pos = 0,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88350, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 80
anim = F88558
;ID =
pos = 40,-4
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88350, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
ignorehitpause = 1
persistent = 1

[State 88295, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 80
trigger2 = Name = "Ultimate_Musashi"
trigger2 = time = 80
trigger3 = Name = "Ultimate_Poacher_Joe"
trigger3 = time = 80
trigger4 = Name = "Ultimate_Cody"
trigger4 = time = 80
trigger5 = Name = "Ultimate_Kruel_Kurt"
trigger5 = time = 0
trigger6 = Name = "Ultimate_Missing_Link"
trigger6 = time = 0
trigger7 = Name = "Ultimate_Blaze"
trigger7 = time = 0
trigger8 = Name = "Ultimate_Ninja"
trigger8 = time = 0
value = S809,0
;ignorehitpause =
persistent = 0

[State 88350, SelfState]
type = SelfState
trigger1 = time >= 250
value = 5150
;anim =
ctrl = 1
;ignorehitpause = 0
;persistent = 1

;------------------------------------------------------------------------------------------------------------
;(BloB) Mutant Mayhem 2 Arm 1 (Falling) (Finisher)
[Statedef 88355]
type = A
movetype = H
physics = N
anim = 9800;invisible
ctrl = 0
sprpriority = 5

[State 88355, Arm]
type = ChangeAnim
trigger1 = Time = 0
value = 88211

[State 88355, VelSet]
type = VelSet
trigger1 = Time = 0
x = -2.5
y = -6

[State 88355,AngleAdd] ; make spin
Type = AngleAdd
trigger1 = 1
Value =-12         ; how much spin

[State 88355,AngleDraw]         ; make spin
Type = AngleDraw
trigger1 = time>0

[State 88355, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.22

[State 88355, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -4
trigger1 = Vel Y > 0
trigger1 = time >=5
value = 88301

;------------------------------
;Cody Tornado Hyper Finisher
[Statedef 88360]
type    = S
movetype= H
physics = N
anim = 88269 ;HeadPopped
velset = 0,0
sprpriority = 2

;[State 88360, AngleDraw]
;type = AngleDraw
;triggerall = name = "Ultimate_Haggar"
;triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
;trigger1 = time >=0
;value = 1
;scale = 1.3,1
;ignorehitpause = 1
;;persistent =

[State 88360, CodyJail]
type = ChangeAnim
triggerall = name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 712

[State 88360, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 712

[State 88360, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = nokoslow
flag2 = nokosnd
;flag3 = roundnotover
ignorehitpause = 1
;persistent =

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0 || time = 30
trigger2 = Name = "Ultimate_Poacher_Joe"
trigger2 = time = 0 || time = 30
trigger3 = Name = "Ultimate_Ninja"
trigger3 = time = 0 || time = 30
trigger4 = Name = "Ultimate_Lash"
trigger4 = time = 0 || time = 30
anim = F89147
;ID =
pos = 2,-2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 4,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 16,-2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 888360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 0 || time = 30
trigger2 = Name = "Ultimate_Kruel_Kurt"
trigger2 = time = 0 || time = 30
anim = F89147
;ID =
pos = 7,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 23,-2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 9,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 14,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 0 || time = 30 ;|| time = 45
anim = F89147
;ID =
pos = 9,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 9,-2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 2,-2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 23,-2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 23,-2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 14,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 14,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 14,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 0 || time = 30
anim = F89147
;ID =
pos = 23,-2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 13,-7
stateno = 88121
ownpal = 1
size.xscale = .3
size.yscale = .3

[State 88360, Blood Drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 10,-8
stateno = 88121
ownpal = 1
size.xscale = .3
size.yscale = .3

[State 88360, HeadGib1]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88110
name = "HeadGib1"
postype = p1
pos = 14,-6
stateno = 88110
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88360, HeadGib2]
type = Helper
triggerall = name != "Ultimate_Musashi"
trigger1 = time = 0
helpertype = Normal
ID = 88112
name = "HeadGib2"
postype = p1
pos = 7,-5
stateno = 88112
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 88360, GroundBlood1]
type = Explod
trigger1 = time = 1 || time = 10
anim = F88560+random%2
;ID =
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
sprpriority = -6
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleSmall2]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Poacher_Joe"
trigger2 = time = 0
trigger3 = Name = "Ultimate_Ninja"
trigger3 = time = 0
trigger4 = Name = "Ultimate_Mustapha"
trigger4 = time = 0
trigger5 = Name = "Ultimate_Lash"
trigger5 = time = 0
anim = F88562
;ID =
pos = 4,4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleSmall2]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0
anim = F88562
;ID =
pos = 13,6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleSmall2]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 0
anim = F88562
;ID =
pos = 25,6
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 0
trigger2 = Name = "Ultimate_Kruel_Kurt"
trigger2 = time = 0 || time = 30 || time = 45
trigger3 = Name = "Ultimate_Missing_Link"
trigger3 = time = 0 || time = 30 || time = 45
anim = F88558
;ID =
pos = 19,1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 0
anim = F88558
;ID =
pos = 25,-2
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 0
anim = F88558
;ID =
pos = 25,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 55
anim = F88559
;ID =
pos = 15,-2
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 0
anim = F88558
;ID =
pos = 25,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleSmall2]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 0
anim = F88562
;ID =
pos = 4,4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 0
anim = F88558
;ID =
pos = 25,-2
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleSmall2]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 0
anim = F88562
;ID =
pos = 13,6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleSmall2]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 0
anim = F88562
;ID =
pos = 13,6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleSmall2]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 0
anim = F88562
;ID =
pos = 13,6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleSmall2]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 0
anim = F88562
;ID =
pos = 13,6
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 0
anim = F88558
;ID =
pos = 25,-2
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88360, HeadPop]
type = PlaySnd
trigger1 = time = 0
value = F104,0
ignorehitpause = 1
persistent = 0

[State 88360, Timer]
type = SelfState
trigger1 = Time >= 150
trigger1 = !Ishelper
value = 5150

;------------------------------
;Wolvie Slice to Pieces Finisher Start
[Statedef 88370]
type    = A
movetype= H
physics = N
anim = 9800 ;invisible
velset = 0,0
sprpriority = 1

[State 88270, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = nokoslow
flag2 = nokosnd
;flag3 = roundnotover
ignorehitpause = 1
;persistent =

[State 88270, Explode]
type = PlaySnd
trigger1 = time = 0
value = F71,0

[State 88270, Blood Splash]
type = Explod
trigger1 = time = 0
anim = F165
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 8
ownpal = 1
removeongethit = 0
supermove = 99999
pausemove = 99999

[State 88270, Torso]
type = Helper
trigger1 = time = 0
stateno = 88262
id = 88262
ownpal = 0
pos = 0,-50

[State 88270, Arm1]
type = Helper
trigger1 = time = 0
stateno = 88264
id = 88264
ownpal = 0
pos = 0,-50

[State 88270, Arm2]
type = Helper
trigger1 = time = 0
stateno = 88266
id = 88266
ownpal = 0
pos = 0,-52

[State 88270, Leg1]
type = Helper
trigger1 = time = 0
stateno = 88268
id = 88268
ownpal = 0
pos = 0,-48

[State 88270, Leg2]
type = Helper
trigger1 = time = 0
stateno = 88270
id = 88270
ownpal = 0
pos = 0,-47

[State 88270, Special Item]
type = Helper
trigger1 = time = 0
stateno = 88272
id = 88272
ownpal = 0
pos = 0,-47

[State 88270, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 0,-52
stateno = 88121
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88270, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 0,-53
stateno = 88121
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88270, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 0,-54
stateno = 88121
facing = -1
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88270, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = 0,-55
stateno = 88121
facing = -1
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 88270, VelAdd]
type = VelAdd
trigger1 = time >=10
x = 0
y = 0.4

[State 88270, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 88261
ctrl = 0

;------------------------------
;Head Punch Off Standing
[Statedef 88380]
type    = S
movetype= H
physics = N
anim = 88100
velset = 0,0
sprpriority = 2

[State 88380, AssertSpecial]
type = AssertSpecial
trigger1 = time >=0
flag = nokoslow
flag2 = nokosnd
;flag3 = roundnotover
ignorehitpause = 1
;persistent =

[State 88380, AngleDraw]
type = AngleDraw
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time >=0
value = 1
scale = 1.3,1
ignorehitpause = 1
;persistent =

[State 88380, HaggarFF3]
type = ChangeAnim
triggerall = name = "Ultimate_Haggar"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
value = 701

[State 88380, CodyJailOverlap]
type = Explod
triggerall = Name = "Ultimate_Cody"
triggerall = PalNo = 4 || PalNo = 5 || PalNo = 6
trigger1 = time = 0
anim = 701
;ID =
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
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -20,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -11,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = time = 0 || time = 30 ;|| time = 45
anim = F89147
;ID =
pos = -12,-62
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -11,-86
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -3,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = 16,-66
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -5,-87
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -5,-91
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -5,-85
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -15,-98
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -15,-76
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -6,-89
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = 0,-76
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = 16,-87
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -3,-84
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -15,-80
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -14,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -5,-81
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -4,-94
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodExplode]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 0 || time = 30 || time = 45
anim = F89147
;ID =
pos = -9,-79
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 26
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, Blood drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = -10,-75
stateno = 88121
ownpal = 1
size.xscale = .3
size.yscale = .3

[State 88380, Blood Drop]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 88121
name = "blooddropstay"
postype = p1
pos = -10,-75
stateno = 88121
ownpal = 1
size.xscale = .3
size.yscale = .3

[State 88380, GroundBlood1]
type = Explod
trigger1 = time = 30 || time = 60
anim = F88560+random%2
;ID =
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -1
scale = 1,1
sprpriority = -6
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Punisher"
trigger1 = animelem = 12
anim = F88559
;ID =
pos = 25,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Cody"
trigger1 = time = 118
anim = F88559
;ID =
pos = 25,-3
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Blaze"
trigger1 = animelem = 27
anim = F88559
;ID =
pos = -41,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Haggar"
trigger1 = animelem = 9
anim = F88558
;ID =
pos = -45,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = time = 126
anim = F88559
;ID =
pos = -61,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Musashi"
trigger1 = animelem = 12
anim = F88558
;ID =
pos = 21,-1
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = time = 93
anim = F88559
;ID =
pos = 80,3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = time = 93
anim = F88559
;ID =
pos = 88,3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Ninja"
trigger1 = time = 112
anim = F88559
;ID =
pos = -45,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Scully"
trigger1 = animelem = 7
anim = F88558
;ID =
pos = -63,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 98
anim = F88558
;ID =
pos = -31,-8
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 98
anim = 6054
;ID =
pos = -19,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 115
anim = F88558
;ID =
pos = 70,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 122
anim = F88558
;ID =
pos = 80,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 121
anim = 6056
;ID =
pos = 75,-2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 136
anim = F88558
;ID =
pos = 25,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 122
anim = F88558
;ID =
pos = -36,-5
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 121
anim = 6054
;ID =
pos = -44,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = animelem = 7
anim = F88558
;ID =
pos = -61,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Jigsaw"
trigger1 = time = 121
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = animelem = 7
anim = F88558
;ID =
pos = -37,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Mardia"
trigger1 = time = 121
anim = 6054
;ID =
pos = -39,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = animelem = 7
anim = F88558
;ID =
pos = -42,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Yamato"
trigger1 = time = 121
anim = 6054
;ID =
pos = -41,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleLarge]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = animelem = 7
anim = F88558
;ID =
pos = -51,-4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodSpurt]
type = Explod
trigger1 = Name = "Ultimate_Andore"
trigger1 = time = 121
anim = 6054
;ID =
pos = -43,-3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 60,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
supermovetime = 9999
pausemovetime = 9999

[State 88380, BloodPuddleSmall]
type = Explod
trigger1 = Name = "Ultimate_Mizuki"
trigger1 = time = 93
anim = F88559
;ID =
pos = 60,-1
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
supermovetime = 9999
pausemovetime = 9999

[State 88380, HeadPop]
type = PlaySnd
trigger1 = time = 0
value = F104,0
ignorehitpause = 1
persistent = 0

[State 88380, FallToKneesHit]
type = PlaySnd
trigger1 = animelem = 4
trigger1 = Name = "Ultimate_Punisher"
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88380, FallToKneesHit]
type = PlaySnd
trigger1 = animelem = 4
trigger1 = Name = "Ultimate_Cody"
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88380, FallToKneesHit]
type = PlaySnd
trigger1 = Name = "Ultimate_Blaze"
trigger1 = animelem = 22
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88380, FallToKneesHit]
type = PlaySnd
trigger1 = Name = "Ultimate_Haggar"
trigger1 = animelem = 6
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88380, LandOnBack]
type = PlaySnd
trigger1 = Name = "Ultimate_Blaze"
trigger1 = animelem = 26
value = S7,5
ignorehitpause = 1
persistent = 0

[State 88380, LandOnBack]
type = PlaySnd
trigger1 = Name = "Ultimate_Haggar"
trigger1 = animelem = 8
trigger2 = Name = "Ultimate_Andore"
trigger2 = animelem = 8
value = S7,2
ignorehitpause = 1
persistent = 0

[State 88380, LandOnBack]
type = PlaySnd
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = animelem = 6
value = S7,5
ignorehitpause = 1
persistent = 0

[State 88380, FallToKneesHit]
type = PlaySnd
trigger1 = animelem = 5
trigger1 = Name = "Ultimate_Musashi"
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88380, HitFloor]
type = PlaySnd
trigger1 = animelem = 7
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger2 = animelem = 7
trigger2 = Name = "Ultimate_Mizuki"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88380, HitFloor]
type = PlaySnd
trigger1 = animelem = 7
trigger1 = Name = "Ultimate_Missing_Link"
trigger2 = animelem = 7
trigger2 = Name = "Ultimate_Scully"
trigger3 = animelem = 7
trigger3 = Name = "Ultimate_R_Bear"
trigger4 = animelem = 7
trigger4 = Name = "Ultimate_Jigsaw"
trigger5 = animelem = 7
trigger5 = Name = "Ultimate_Mardia"
trigger6 = animelem = 7
trigger6 = Name = "Ultimate_Yamato"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88380, LandOnBack]
type = PlaySnd
trigger1 = Name = "Ultimate_Ninja"
trigger1 = animelem = 7
value = S44,random%3
ignorehitpause = 1
persistent = 0

[State 88380, HitFloor]
type = PlaySnd
trigger1 = time = 109
trigger1 = Name = "Ultimate_EdiE"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88380, HitFloor]
type = PlaySnd
trigger1 = animelem = 7
trigger1 = Name = "Ultimate_Mustapha"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88380, FallToKneesHit]
type = PlaySnd
trigger1 = animelem = 5
trigger1 = Name = "Ultimate_Sodom"
value = S40,0
ignorehitpause = 1
persistent = 0

[State 88380, HitFloor]
type = PlaySnd
trigger1 = animelem = 6
trigger1 = Name = "Ultimate_Lash"
value = S7,1
ignorehitpause = 1
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Punisher"
trigger1 = animelem = 12
trigger2 = Name = "Ultimate_Cody"
trigger2 = animelem = 12
trigger3 = Name = "Ultimate_Ninja"
trigger3 = animelem = 12
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Blaze"
trigger1 = animelem = 27
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Haggar"
trigger1 = animelem = 9
trigger2 = Name = "Ultimate_Andore"
trigger2 = animelem = 9
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Poacher_Joe"
trigger1 = animelem = 8
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Kruel_Kurt"
trigger1 = animelem = 7
trigger2 = Name = "Ultimate_Mizuki"
trigger2 = animelem = 7
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Missing_Link"
trigger1 = animelem = 7
trigger2 = Name = "Ultimate_Scully"
trigger2 = animelem = 7
trigger3 = Name = "Ultimate_Mardia"
trigger3 = animelem = 7
trigger4 = Name = "Ultimate_Yamato"
trigger4 = animelem = 7
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_R_Bear"
trigger1 = time = 98
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_EdiE"
trigger1 = time = 111
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Mustapha"
trigger1 = time = 121
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Sodom"
trigger1 = time = 106
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, BloodSquirt]
type = PlaySnd
trigger1 = Name = "Ultimate_Lash"
trigger1 = time = 121
value = S809,0
;ignorehitpause =
persistent = 0

[State 88380, Head]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "SeveredHead"
ID = 88381
stateno = 88381
pos = -5,-80
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1
size.yscale = 1
;ignorehitpause =
;persistent =

[State 88380, Timer]
type = SelfState
trigger1 = Time >= 150
trigger1 = !Ishelper
value = 5150

;-----------------------------------------------------
;Head - Punch off
[Statedef 88381]
type    = A
movetype= I
physics = N
anim = 88215
velset = 0,0
ctrl = 0
sprpriority = 3

[State 88381, varrandom]
type = VarRandom
trigger1 = 1
v = 18
range = -4,-13

[State 88381, varrandom]
type = VarRandom
trigger1 = 1
v = 19
range = -1,1

[State 88381, velset]
type = velset
trigger1 = time = 1
y = var(18)
x = var(19)

[State 88381, veladd]
type = veladd
trigger1 = time >= 1
y = .3

[State 88381, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger1 = time >=5
value = 88382
ignorehitpause = 1

;---------------------------------------------------------------------------
;Head Bounce on Ground
[Statedef 88382]
type    = A
movetype= I
physics = N
;juggle  = 3
;poweradd= 100
;velset = 0,0
ctrl = 0
anim = 88215
sprpriority = 3

[State 88382, VelSet]
type = VelSet
trigger1 = time = 0
;x = 1.1
y = -4.1
;ignorehitpause =
;persistent =

[State 88382, VelAdd]
type = VelAdd
trigger1 = time >=0
y = 0.23
;ignorehitpause =
;persistent =

[State 88382, Null]
type = Null
trigger1 = 1

[State 88382, PlayerPush]
type = PlayerPush
trigger1 =  time >=0
value = 0
ignorehitpause = 1
;persistent =

[State 88382, AngleAdd] ; make spin
Type = AngleAdd
triggerall = Vel X >=0
trigger1 = time >=1
Value = -10         ; how much spin
;ignorehitpause = 1

[State 88382, AngleAdd] ; make spin
Type = AngleAdd
triggerall = Vel X < 0
trigger1 = time >=1
Value = 10         ; how much spin
;ignorehitpause = 1

[State 88382, AngleDraw]
type = AngleDraw
trigger1 = time >=1
scale = 1, 1

[State 88382, watersplash]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) = "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
anim = F80165
;ID = 80165
pos = 0,4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1.5,1.5
sprpriority = 7
ignorehitpause = 1
ownpal = 1
removeongethit = 0

[State 88382, Splash]
type = PlaySnd
trigger1 = Time = 0
trigger1 = stagevar(info.name) = "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
value = F92, 2
ignorehitpause = 1

[State 88382, Blood]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) != "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
anim = F88970
;ID = 80165
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
removeongethit = 0

[State 88382, Splat]
type = PlaySnd
trigger1 = Time = 0
trigger1 = stagevar(info.name) != "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
value = S68, 0
ignorehitpause = 1

[State 88382, Hit]
type = PlaySnd
trigger1 = Time = 0
trigger1 = stagevar(info.name) != "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
value = S40, 0
ignorehitpause = 1

[State 88382, ChangeState]
type = ChangeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = time >=4
value = 88383
ctrl = 0
ignorehitpause = 1
;persistent =

;---------------------------------------------------------------------------
;Head on Ground
[Statedef 88383]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 88215
sprpriority = 3

[State 88383, BloodPuddle]
type = Explod
trigger1 = time = 0
trigger1 = stagevar(info.name) != "Ultimate_Pirate_Ship_Armaggon_TMNT_TF"
anim = F88558
;ID = 80165
pos = -5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
removeongethit = 0

[State 88383, Hit]
type = PlaySnd
trigger1 = Time = 0
value = S40, 0
ignorehitpause = 1

[State 88383, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 0
ctrl = 0
;anim =
;ignorehitpause =
;persistent =



