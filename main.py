import pygame
from pygame.locals import *
import sys
from time import sleep

#Inicia o pygame e implementa uma tela com largura,altura e nome próprio
pygame.init()
largura, altura = 900, 480
screen = pygame.display.set_mode((largura, altura))
pygame.display.set_caption("Gwen Level")
pygame.display.set_icon(pygame.image.load('rostinho_gwen.png'))


#Imagens
background = [pygame.image.load('background_cenario.png'),
pygame.image.load('background_piso.png'),
]
bg_img_fundo_upgrated = pygame.transform.scale(background[0], (900,480))
bg_img_chao_upgrated = pygame.transform.scale(background[1], (900,170))
direita = [
    pygame.image.load('gwen_andando_direita_0.png').convert(),
    pygame.image.load('gwen_andando_direita_1.png').convert(),
    pygame.image.load('gwen_andando_direita_2.png').convert(),
    pygame.image.load('gwen_andando_direita_3.png').convert(),
    pygame.image.load('gwen_andando_direita_4.png').convert(),
    pygame.image.load('gwen_andando_direita_5.png').convert(),
    pygame.image.load('gwen_andando_direita_6.png').convert(),
    pygame.image.load('gwen_andando_direita_7.png').convert(),
    pygame.image.load('gwen_andando_direita_8.png').convert(),
    pygame.image.load('gwen_andando_direita_9.png').convert()
]
parada = [
    pygame.image.load('gwen_parada_0.png').convert(),
    pygame.image.load('gwen_parada_1.png').convert(),
    pygame.image.load('gwen_parada_2.png').convert(),
    pygame.image.load('gwen_parada_3.png').convert()
]
esquerda = [
    pygame.image.load('gwen_andando_direita_9.png').convert(),
    pygame.image.load('gwen_andando_direita_8.png').convert(),
    pygame.image.load('gwen_andando_direita_7.png').convert(),
    pygame.image.load('gwen_andando_direita_6.png').convert(),
    pygame.image.load('gwen_andando_direita_5.png').convert(),
    pygame.image.load('gwen_andando_direita_4.png').convert(),
    pygame.image.load('gwen_andando_direita_3.png').convert(),
    pygame.image.load('gwen_andando_direita_2.png').convert(),
    pygame.image.load('gwen_andando_direita_1.png').convert(),
    pygame.image.load('gwen_andando_direita_0.png').convert()
]
stacionary = pygame.image.load('gwen_parada_0.png')

soco = [
    pygame.image.load('gwen_socando_0.png'),
    pygame.image.load('gwen_socando_1.png'),
    pygame.image.load('gwen_socando_2.png'),
    pygame.image.load('gwen_socando_3.png')
]
chute = [
    pygame.image.load("gwen_chutando_1.png"),
    pygame.image.load("gwen_chutando_2.png"),
    pygame.image.load("gwen_chutando_3.png")
]
pulo = [
    pygame.image.load('gwen_pulando_0.png'),
    pygame.image.load('gwen_pulando_1.png'),
    pygame.image.load('gwen_pulando_2.png')
]
#informações na tela
player_pos = [400, 340]
speed_x = 5
speed_y = 10
jump_y = 10
jump = False
move_left = False
move_right = False
jump = False
punch = False
kick = False
jumpIndex = 0
punchIndex = 0
kickIndex = 0
stepIndex = 0
def draw_game():
    global stepIndex
    global move_left
    global move_right
    global jump
    global punch
    global kick
    global punchIndex
    global kickIndex
    global jumpIndex
    screen.fill((0))
    screen.blit(bg_img_fundo_upgrated, (0,0))
    screen.blit(bg_img_chao_upgrated,(0,311))
    #EXCESSÕES PARA CONTROLE DE SPRITES
    if move_right == True and kick ==True:
        move_right = False
    if move_left == True and kick == True:
        move_left = False
    if stepIndex >= 36:
        stepIndex = 0
    if move_right == False and move_left == False and jump == False and punch == False and kick == False:
        screen.blit(parada[stepIndex], (player_pos))
    if jump == True and (move_right == True or move_left == True or kick == True or punch == True):
        move_right = False
        move_left = False
        kick = False
        punch = False
    if punch == True and (move_right == True or move_left == True or jump == True or kick == True):
        move_left = False
        move_right = False
        kick = False
        jumpIndex = 0
    if kick == True and (move_right == True or move_left == True or punch == True or jump == True):
        move_left = False
        move_right = False
        punch = False

    #COMANDOS
    if move_left:
        screen.blit(esquerda[stepIndex//4], (player_pos))
        stepIndex += 1
    elif move_right:
        screen.blit(direita[stepIndex//4],(player_pos))
        stepIndex += 1
    if punch:
        screen.blit(soco[int(punchIndex)],(player_pos))
        punchIndex += 0.1
    if kick:
        screen.blit(chute[int(kickIndex)],(player_pos))
        kickIndex += 0.1
    if jump:
        screen.blit(pulo[int(jumpIndex)],(player_pos))
        jumpIndex += 0.1




#loop que faz o jogo rodar e executar ações
while True:
    draw_game()
    #Fecha o jogo
    for event in pygame.event.get():
        if event.type == QUIT:
            pygame.quit()
            quit()
    #Movimento
    userInput = pygame.key.get_pressed()
    if userInput[pygame.K_a] and player_pos[0] > 0:
        player_pos[0] -= speed_x
        move_left = True
        move_right = False
    elif userInput[pygame.K_d] and player_pos[0] < (largura - 70):
        player_pos[0] += speed_x
        move_left = False
        move_right = True
    else:
        move_left = False
        move_right = False
        stepIndex = 0
    #Pulo
    if jump is False and userInput[pygame.K_w]:
        jump = True
    if jump and jumpIndex <=3:
        player_pos[1] -= speed_y
        speed_y -= 0.5
        if speed_y < -10:
            jump = False
            speed_y = 10
    else:
        jumpIndex = 0
    #Soco
    if userInput[pygame.K_k] and punchIndex <= 4:
        punch = True
    else:
        punch = False
        punchIndex = 0
    #Chute
    if userInput[pygame.K_l] and kickIndex <=3:
        kick = True
    else:
        kick = False
        kickIndex = 0

    pygame.time.delay(25)
    pygame.display.flip()