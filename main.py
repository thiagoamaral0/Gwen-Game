import pygame
from pygame.locals import *
import sys
from time import sleep
import random
#faz o jogo funfar
pygame.init()
largura, altura = 900, 480
screen = pygame.display.set_mode((largura, altura))
pygame.display.set_caption("Gwen Level")
pygame.display.set_icon(pygame.image.load('rostinho_gwen.png'))
TILE_SIZE = 128
#IMAGENS
background = [pygame.image.load('background_cenario.png'),
pygame.image.load('background_piso.png'),
]
titulo = pygame.image.load('TITULO_GAME.png')
bg_img_fundo_upgrated = pygame.transform.scale(background[0], (900,480))
bg_img_chao_upgrated = pygame.transform.scale(background[1], (900,170))
bg_morreu = pygame.image.load('recomeco.png')
img_morte = pygame.transform.scale(bg_morreu,(450,240))
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
pulo = [
    pygame.image.load('gwen_pulando_0.png'),
    pygame.image.load('gwen_pulando_1.png'),
    pygame.image.load('gwen_pulando_2.png')
]

andarilho_direita = [
    pygame.image.load('andarilho_direita1.png'),
    pygame.image.load('andarilho_direita2.png'),
    pygame.image.load('andarilho_direita3.png'),
    pygame.image.load('andarilho_direita4.png'),
    pygame.image.load('andarilho_direita5.png')
]
andarilho_esquerda = [
    pygame.image.load('andarilho_esquerda1.png'),
    pygame.image.load('andarilho_esquerda2.png'),
    pygame.image.load('andarilho_esquerda3.png'),
    pygame.image.load('andarilho_esquerda4.png'),
    pygame.image.load('andarilho_esquerda5.png')
]

tiro = [
    pygame.image.load('gwen_atirando_1.png'),
    pygame.image.load('gwen_atirando_2.png'),
    pygame.image.load('gwen_atirando_3.png'),
    pygame.image.load('gwen_atirando_4.png'),
    pygame.image.load('gwen_atirando_5.png'),
    pygame.image.load('gwen_atirando_6.png'),
    pygame.image.load('gwen_atirando_7.png')
]
npc_img = [
    pygame.image.load('npc_parado1.png').convert(),
    pygame.image.load('npc_parado2.png'),
    pygame.image.load('npc_parado3.png'),
    pygame.image.load('npc_parado4.png'),
    pygame.image.load('npc_parado5.png'),
    pygame.image.load('npc_parado6.png'),
    pygame.image.load('npc_parado7.png'),
    pygame.image.load('npc_parado8.png'),
    pygame.image.load('npc_parado9.png'),
    pygame.image.load('npc_parado10.png'),
    pygame.image.load('npc_parado11.png'),
    pygame.image.load('npc_parado12.png'),
    pygame.image.load('npc_parado13.png'),
    pygame.image.load('npc_parado14.png'),
    pygame.image.load('npc_parado15.png'),
    pygame.image.load('npc_parado16.png'),
    pygame.image.load('npc_parado17.png'),
    pygame.image.load('npc_parado18.png'),
    pygame.image.load('npc_parado19.png'),
    pygame.image.load('npc_parado20.png'),
    pygame.image.load('npc_parado21.png')
]
bala = pygame.transform.scale(pygame.image.load('gwen_tiro.png'),(15,15))
stacionary = pygame.image.load('gwen_parada_0.png')



class Gwen():
    def __init__(self, x, y):
    #Walk
        self.x = x
        self.y = y
        self.velx = 10
        self.direita = True
        self.esquerda = False
        self.atirando = False
        self.stepIndex = 0
        self.tiroIndex = 0
        self.parada = 0
    #Jump
        self.jump = False
        self.vely = 11
        self.jumpIndex = 0
    
    #Bullet
        self.bullets = []
        self.cool_down_count = 0

    #Vida

        self.hitbox = (self.x, self.y, 60, 94)
        self.health =30
        self.lives = 1
        self.alive = True

    def mover_Gwen(self, userInput):
        if userInput[pygame.K_d] and self.x <=largura - 50:
            self.direita = True
            self.esquerda = False
            self.x += self.velx
        elif userInput[pygame.K_a] and self.x >= 0:
            self.direita = False
            self.esquerda = True
            self.x -= self.velx
        else:
            self.stepIndex = 0
    def draw(self, screen):
        #Hitbox
        self.hitbox = (self.x, self.y, 60, 94)
        pygame.draw.rect(screen, (255,0,0), (self.x + 15, self.y - 30,30,10))
        if self.health >= 0:
            pygame.draw.rect(screen, (0,255,0), (self.x + 15, self.y - 30,self.health,10))
        #EXCESSÕES DE SPRITES
        if self.esquerda == False and self.direita == False and self.jump == False and self.atirando == False:
            screen.blit(parada[self.parada//4],(self.x,self.y))
            self.parada += 1
        if self.jump and (self.direita == True or self.esquerda == True or self.atirando == True):
            self.esquerda = False
            self.direita = False
            self.atirando == False
        if self.atirando and (self.direita == True or self.esquerda == True):
            self.esquerda = False
            self.direita = False
        #EXCESSÕES
        if self.stepIndex >= 10:
            self.stepIndex = 0
        if self.jumpIndex >= 3*4:
            self.jumpIndex = 0
        if self.tiroIndex >= 7 * 2:
            self.tiroIndex = 0
        if self.parada >= 4 * 4:
            self.parada = 0
        #CARREGAR IMAGEM
        if self.esquerda:
            screen.blit(esquerda[self.stepIndex], (self.x,self.y))
            self.stepIndex += 1
        if self.direita:
            screen.blit(direita[self.stepIndex], (self.x,self.y))
            self.stepIndex += 1
        if self.jump:
            screen.blit(pulo[self.jumpIndex//4],(self.x,self.y))
            self.jumpIndex += 1
        if self.atirando:
            screen.blit(tiro[self.tiroIndex//2],(self.x,self.y))
            self.tiroIndex += 1

    def pular_Gwen(self, userInput):
        if userInput[pygame.K_w] and self.jump is False:
            self.jump = True
        if self.jump:
            self.y -= self.vely*4
            self.vely -= 1
        if self.vely < -11:
            self.jump = False
            self.vely = 11

    def cooldown(self):
        if self.cool_down_count >= 10:
            self.cool_down_count = 0
        elif self.cool_down_count > 0:
            self.cool_down_count += 1

    def shoot(self):
        self.hit()
        self.cooldown()
        if (userInput[pygame.K_j] and self.jump == False and self.cool_down_count == 0):
            self.atirando = True
            bullet = Bullet(self.x,self.y)
            self.bullets.append(bullet)
            self.cool_down_count = 1
        else:
            self.atirando = False
        for bullet in self.bullets:
            bullet.move()
            if bullet.off_screen():
                self.bullets.remove(bullet)
    def hit(self):
        for enemy in enemies:
            for bullet in self.bullets:
                if enemy.hitbox[0]< bullet.x < enemy.hitbox[0] + enemy.hitbox[2] and enemy.hitbox[1] < bullet.y < enemy.hitbox[1] + enemy.hitbox[3]:
                    enemy.health -= 5
                    player.bullets.remove(bullet)

class Bullet:
    def __init__(self, x, y):
        self.x = x + 15
        self.y = y + 25


    def draw_bullet(self):
        screen.blit(bala, (self.x, self.y))

    def move(self):
        self.x += 15
    

    def off_screen(self):
        return not(self.x >=0 and self.x <= largura)

class Enemy:
    def __init__(self, x, y, direction):
        self.x = x
        self.y = y
        self.direction = direction
        self.enemyStepIndex = 0
        self.velx = 3
    #Vida
        self.hitbox = (self.x, self.y, 60, 94)
        self.health = 30
    
    def step(self):
        if self.enemyStepIndex >= 5*4:
            self.enemyStepIndex = 0
    
    def draw(self, screen):
        self.hitbox = (self.x, self.y, 60, 94)
        pygame.draw.rect(screen, (255,0,0), (self.x + 15, self.y - 30,30,10))
        if self.health >= 0:
            pygame.draw.rect(screen, (0,255,0), (self.x + 15, self.y - 30,self.health,10))
        self.step()
        if self.direction == esquerda:
            screen.blit(andarilho_direita[self.enemyStepIndex//4], (self.x,self.y))
        if self.direction == direita:
            screen.blit(andarilho_esquerda[self.enemyStepIndex//4], (self.x,self.y))
        self.enemyStepIndex += 1

    def move(self):
        if medroso.score == 3:
            self.velx += 6
        if medroso.score == 6:
            self.velx += 6
        self.hit()
        if self.direction == esquerda:
            self.x -= 3
        if self.direction == direita:
            self.x += self.velx
    def hit(self):
        if player.hitbox[0]< enemy.x + 32 < player.hitbox[0] + player.hitbox[2] and player.hitbox[1] < enemy.y + 32 < player.hitbox[1] + enemy.hitbox[3]:
            if player.health > 0:
                player.health -= 1
                if player.health == 0 and player.lives > 0:
                    player.lives -= 1
                    player.health = 30
                elif player.health == 0 and player.lives == 0:
                    player.alive = False
    def off_screen(self):
        return not(self.x >= -80 and self.x <= largura)
class Npc:
    def __init__(self,x,y):
        self.x = x
        self.y = y
        self.ncpIndex = 0
        self.dialogo = [400,340]
        self.score = 0

    
    def draw(self,screen):
        global enemy
        dialogo = True
    
    #EXCESSOES
        if self.ncpIndex >= 21 * 2:
            self.ncpIndex = 0
    #DESENHANDO IMAGEM        
        screen.blit(npc_img[self.ncpIndex // 2],(self.x,self.y))
        self.ncpIndex += 2
    #DIALOGO NPC
        if dialogo == True:
            texto_escrito = "ME AJUDA AQUI,POR FAVOR!"
            font = pygame.font.Font('freesansbold.ttf', 15)
            texto_npc = font.render(texto_escrito,True,(255,255,255))
            pygame.draw.rect(screen, (0,0,0),(self.dialogo[0],self.dialogo[1],220,20))
            screen.blit(texto_npc,(self.dialogo[0],self.dialogo[1]))
        if enemy.health == 0:
            self.x -= 100
            self.dialogo[0] -= 100
        if self.x <= (largura- largura):
            self.score += 1
            self.x = 400
            self.dialogo[0] = 400


    



#Desenha as parada na tela
def draw_game():

    screen.fill((0))
    screen.blit(bg_img_fundo_upgrated, (0,0))
    screen.blit(bg_img_chao_upgrated,(0,311))
    #Desenha o jogador
    player.draw(screen)
    #Desenha NPC
    medroso.draw(screen)
    #Desenha as teias
    for bullet in player.bullets:
        bullet.draw_bullet()
    #desenha os inimigos
    for enemy in enemies:
        enemy.draw(screen)
  
    if player.alive == False:
        screen.fill((255,255,255))
        screen.blit(img_morte,(230,150))  
        if userInput[pygame.K_SPACE]:
            player.alive = True
            player.lives = 1
            player.health = 30

    #INFOS DA TELA
    font = pygame.font.Font('freesansbold.ttf', 32)
    text = font.render('VIDAS:' + str(player.lives), True,(0,0,0))
    screen.blit(text, (50,20))
    text = font.render('VIDAS SALVAS:' + str(medroso.score), True,(0,0,0))
    screen.blit(text, (600,20))
    pygame.time.delay(50)
    pygame.display.update()
#Pra carregar a classe da Gwen
player = Gwen(200, 340)

#Pra carregar a classe do inimigo
enemy = Enemy(790,330, esquerda)
#Pra carregar a classe do inimigo
enemies = []
#CARREGA O NPC
medroso = Npc(400,360)
#loop que faz o jogo rodar e executar ações
while True:
    #Fecha o jogo
    for event in pygame.event.get():
        if event.type == QUIT:
            pygame.quit()
            quit()

    #Input
    userInput = pygame.key.get_pressed()

    #Movimento
    player.mover_Gwen(userInput)

    #Pulo
    player.pular_Gwen(userInput)
    #
    #TIRO
    player.shoot()
    #INIMIGOS
    if len(enemies) == 0:
        rand_nr = random.randint(0,1)
        if rand_nr == 1:
            enemy = Enemy(790,330, esquerda)
            enemies.append(enemy)
    for enemy in enemies:
        enemy.move()
        if enemy.off_screen() or enemy.health == 0:
            enemies.remove(enemy)
    draw_game()
