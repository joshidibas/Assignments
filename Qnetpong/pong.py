import pygame 
import random 
from pygame.locals import *
import sys




WINDOW_WIDTH = 400
WINDOW_HEIGHT = 400


PADDLE_WIDTH = 10
PADDLE_HEIGHT = 60

PADDLE_BUFFER = 10


BALL_WIDTH = 10
BALL_HEIGHT = 10
RADIUS = 7


PADDLE_SPEED = 4
BALL_X_SPEED = 3
BALL_Y_SPEED = 3


WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
GOLD = (255,215,0)
Green=(46,254,7)


screen = pygame.display.set_mode((WINDOW_WIDTH, WINDOW_HEIGHT))
    




def drawBall(ballXPos, ballYPos):
    
    ball = pygame.Rect(ballXPos, ballYPos, BALL_WIDTH, BALL_HEIGHT)
    
    pygame.draw.circle(screen, Green, ball.center, RADIUS, 0)
    pygame.draw.circle(screen, WHITE, ball.center, RADIUS, 1)


def drawPaddle1(paddle1YPos):
    
    paddle1 = pygame.Rect(PADDLE_BUFFER, paddle1YPos, PADDLE_WIDTH, PADDLE_HEIGHT)
    
    pygame.draw.rect(screen, GOLD, paddle1)


def drawPaddle2(paddle2YPos):
    
    paddle2 = pygame.Rect(WINDOW_WIDTH - PADDLE_BUFFER - PADDLE_WIDTH, paddle2YPos, PADDLE_WIDTH, PADDLE_HEIGHT)
    
    pygame.draw.rect(screen, WHITE, paddle2)

def drawScore(score):    
    font = pygame.font.Font(None, 28)    
    scorelabel = font.render("Score " + str(score), 1, WHITE)
    screen.blit(scorelabel, (30 , 10))

def drawInfos(infos, action):
    font = pygame.font.Font(None, 15)        
    #label = font.render("step " + str(infos[0]) + " ["+str(infos[3])+"]", 1, WHITE)
    #screen.blit(label, (30 , 30))
   
    actionText = "--"
    if (action[1] == 1):
        actionText = "Up"
    if (action[2] == 1):
        actionText = "Down"
    label = font.render("action " + actionText, 1, WHITE)
    screen.blit(label, (30 , 45))
    



def updateBall(paddle1YPos, paddle2YPos, ballXPos, ballYPos, ballXDirection, ballYDirection):

    
    ballXPos = ballXPos + ballXDirection * BALL_X_SPEED
    ballYPos = ballYPos + ballYDirection * BALL_Y_SPEED
    score = 0

    
    if (ballXPos <= PADDLE_BUFFER + PADDLE_WIDTH and ballYPos + BALL_HEIGHT >= paddle1YPos and ballYPos - BALL_HEIGHT <= paddle1YPos + PADDLE_HEIGHT):
        
        ballXDirection = 1
        
        score = 1
    
    elif (ballXPos <= 0):
        
        ballXDirection = 1
        score = -1
        return [score, paddle1YPos, paddle2YPos, ballXPos, ballYPos, ballXDirection, ballYDirection]
    
    
    if (ballXPos >= WINDOW_WIDTH - PADDLE_WIDTH - PADDLE_BUFFER and ballYPos + BALL_HEIGHT >= paddle2YPos and ballYPos - BALL_HEIGHT <= paddle2YPos + PADDLE_HEIGHT):
        
        ballXDirection = -1
    
    elif (ballXPos >= WINDOW_WIDTH - BALL_WIDTH):
        
        ballXDirection = -1
        score = 1
        return [score, paddle1YPos, paddle2YPos, ballXPos, ballYPos, ballXDirection, ballYDirection]
    
    
    if (ballYPos <= 0):
        ballYPos = 0;
        ballYDirection = 1;
    
    elif (ballYPos >= WINDOW_HEIGHT - BALL_HEIGHT):
        ballYPos = WINDOW_HEIGHT - BALL_HEIGHT
        ballYDirection = -1
    return [score, paddle1YPos, paddle2YPos, ballXPos, ballYPos, ballXDirection, ballYDirection]


def updatePaddle1(action, paddle1YPos):
   
    if (action[1] == 1):
        paddle1YPos = paddle1YPos - PADDLE_SPEED
    
    if (action[2] == 1):
        paddle1YPos = paddle1YPos + PADDLE_SPEED

   
    if (paddle1YPos < 0):
        paddle1YPos = 0
    if (paddle1YPos > WINDOW_HEIGHT - PADDLE_HEIGHT):
        paddle1YPos = WINDOW_HEIGHT - PADDLE_HEIGHT
    return paddle1YPos


def updatePaddle2(paddle2YPos, ballYPos):
    
    if (paddle2YPos + PADDLE_HEIGHT/2 < ballYPos + BALL_HEIGHT/2):
        paddle2YPos = paddle2YPos + PADDLE_SPEED
   
    if (paddle2YPos + PADDLE_HEIGHT/2 > ballYPos + BALL_HEIGHT/2):
        paddle2YPos = paddle2YPos - PADDLE_SPEED
    
    if (paddle2YPos < 0):
        paddle2YPos = 0
    
    if (paddle2YPos > WINDOW_HEIGHT - PADDLE_HEIGHT):
        paddle2YPos = WINDOW_HEIGHT - PADDLE_HEIGHT
    return paddle2YPos


class PongGame:
    def __init__(self):
        pygame.font.init()
       
        num = random.randint(0,9)
        
        self.tally = 0
        
        self.paddle1YPos = WINDOW_HEIGHT / 2 - PADDLE_HEIGHT / 2
        self.paddle2YPos = WINDOW_HEIGHT / 2 - PADDLE_HEIGHT / 2
        
        self.ballXDirection = 1
        self.ballYDirection = 1
        
        self.ballXPos = WINDOW_WIDTH/2 - BALL_WIDTH/2

        
        if(0 < num < 3):
            self.ballXDirection = 1
            self.ballYDirection = 1
        if (3 <= num < 5):
            self.ballXDirection = -1
            self.ballYDirection = 1
        if (5 <= num < 8):
            self.ballXDirection = 1
            self.ballYDirection = -1
        if (8 <= num < 10):
            self.ballXDirection = -1
            self.ballYDirection = -1
        
        num = random.randint(0,9)
        
        self.ballYPos = num*(WINDOW_HEIGHT - BALL_HEIGHT)/9    

    
    def getPresentFrame(self):
        
        pygame.event.pump()
        
        screen.fill(BLACK)
        
        drawPaddle1(self.paddle1YPos)
        drawPaddle2(self.paddle2YPos)
        
        drawBall(self.ballXPos, self.ballYPos)
        drawScore(self.tally)  
        
        image_data = pygame.surfarray.array3d(pygame.display.get_surface())
        
        pygame.display.flip()

        
        
        return image_data

    
    def getNextFrame(self, action, infos):
        pygame.event.pump()
        score = 0
        screen.fill(BLACK)
        
        self.paddle1YPos = updatePaddle1(action, self.paddle1YPos)
        drawPaddle1(self.paddle1YPos)
        
        self.paddle2YPos = updatePaddle2(self.paddle2YPos, self.ballYPos)
        drawPaddle2(self.paddle2YPos)
        
        [score, self.paddle1YPos, self.paddle2YPos, self.ballXPos, self.ballYPos, self.ballXDirection, self.ballYDirection] = updateBall(self.paddle1YPos, self.paddle2YPos, self.ballXPos, self.ballYPos, self.ballXDirection, self.ballYDirection)
        
        drawBall(self.ballXPos, self.ballYPos)
        
        
        
        image_data = pygame.surfarray.array3d(pygame.display.get_surface())
        drawScore(self.tally)  
        drawInfos(infos, action)
        
        pygame.display.flip()
        
        self.tally = self.tally + score     
        
         
        
        return [score, image_data]

