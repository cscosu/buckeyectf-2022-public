import numpy
import random

M = 2034
directions = {'a':numpy.array([0, -1]), 'w':numpy.array([-1, 0]), 's':numpy.array([1, 0]), 'd':numpy.array([0, 1])}
conditions = {'normal':0, 'frog':1, 'nebula':3, 'flag':5}
frog_warnings = ['ribbit', 'giggle', 'chirp']
nebula_warnings = ['light', 'dust', 'dense']
frog_loss = ['slurp', 'ribbity!', 'the frog...']
nebula_loss = ['everything is light', 'it is crushing', 'intense heat']

class Maze:
    def __init__(self, n):
        self.has_flag = False
        self.is_alive = True
        self.at_exit = True
        self.loss = ''
        self.dimension = n
        self.create_maze()
        self.position = numpy.array([self.dimension-1, 0])
        self.status = []
    
    def insert_flag(self):
        xi = 0
        yi = self.dimension

        while xi < self.dimension / 2:
            xi = random.randint(0, self.dimension - 1)
        while yi > self.dimension / 2:
            yi = random.randint(0, self.dimension - 1)
        
        print(yi, xi)
        self.maze[yi][xi] = conditions['flag']

    def assign_to_square(self, x, y):
        xi = random.randint(0, 2)
        yi = random.randint(0, 2)
        if (random.randint(0, 5)) > 1:
            self.maze[y+yi][x+xi] = conditions['frog']
        else:
            self.maze[y+yi][x+xi] = conditions['nebula']

    def insert_frogs_nebulas(self):
        for i in range(0, self.dimension-1, 3):
            for j in range(0, self.dimension-1, 3):
                self.assign_to_square(i, j)
        self.maze[self.dimension-1][0] = conditions['normal']

    def create_maze(self):
        self.maze = numpy.zeros(shape=(self.dimension, self.dimension), dtype=int)
        self.insert_frogs_nebulas()
        self.insert_flag()
    
    def check(self):
        warnings = []

        if self.maze[self.position[0]][self.position[1]] == conditions['frog']:
            self.is_alive = False
            self.loss = frog_loss[random.randint(0, len(frog_loss) - 1)]
        
        if self.maze[self.position[0]][self.position[1]] == conditions['nebula']:
            self.is_alive = False
            self.loss = nebula_loss[random.randint(0, len(nebula_loss) - 1)]
        
        if self.maze[self.position[0]][self.position[1]] == conditions['flag']:
            self.has_flag = True
            warnings.append('flag found')
        
        for x in directions.keys():
            temp = self.position + directions[x]
            if self.valid(temp) and self.maze[temp[0]][temp[1]] == conditions['frog']:
                warnings.append(frog_warnings[random.randint(0, len(frog_warnings) - 1)])
            if self.valid(temp) and self.maze[temp[0]][temp[1]] == conditions['nebula']:
                warnings.append(nebula_warnings[random.randint(0, len(nebula_warnings) - 1)])
        
        return warnings
    
    def valid(self, temp_position):
        return temp_position[0] > -1 and temp_position[0] < self.dimension and temp_position[1] > -1 and temp_position[1] < self.dimension
    
    def move(self, instruction):
        temp = self.position + directions[instruction]

        if self.valid(temp) == True:
            self.position = temp
        
        self.at_exit = (self.position == numpy.array([self.dimension-1, 0])).all()
        print(self.position)
        return self.check()

m = Maze(M)

print(m.position)

while m.is_alive == True and not (m.has_flag == True and m.at_exit == True):
    warnings = m.move(input())
    for x in warnings:
        print(x)

if not m.is_alive:
    print('something happened: ' + m.loss)
    print('try again!')

if m.has_flag:
    with open("flag.txt", "r") as fi:
        print(fi.read())