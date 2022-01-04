import pygame
from pygame.locals import *
from sys import exit

pygame.init()
largura, altura = 640,480
screen = pygame.display.set_mode((largura,altura))
b = pygame.image.load('andarilho1.png')
angle = 360
inimigo = pygame.transform.rotate(b, angle)

while True:
    screen.fill(0)
    screen.blit(inimigo,(largura/2,altura/2))
    for event in pygame.event.get():
        if event.type == QUIT:
            pygame.quit()
            quit()
    pygame.display.flip()