/// @description  https://www.youtube.com/watch?v=uvj-GhsljyA&t=3s
//matrix 7 by 7 since there are 7 rooms in total (0 1 2 3 4 5 6) Action columns and Stage rows
Q = [
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0]
];

//Mapping Matrice -1's are walls, 0's are connections and 100 is target Матрица сопоставления
//matrix 7 by 7 since there are 7 rooms in total (0 1 2 3 4 5 6) Action columns and Stage rows
//and this is the reward map
R = [
  [ -1, 0, -1, -1, -1, -1, -1],
  [  0,-1,  0,  0, -1, -1, -1],
  [ -1, 0, -1, -1,  0, -1, 100],
  [ -1, 0, -1, -1,  0, -1, -1],
  [ -1,-1,  0,  0, -1,  0, -1],
  [ -1, -1,-1, -1,  0, -1, -1],
  [ -1, -1, 0, -1, -1, -1, -1],
];

//this is a movement map, like if we are in room 1, then we have the opportunity to get into neighboring rooms 2,3,0. (room map in video)
M = [[1], [0, 2, 3], [1, 4, 6], [1, 4], [2, 3, 5], [4], [2]];


///randomly selected action in current state (or next state)
action=0;//transition to the op room (for example, I'm in room 1(stage 1) and I go to room 2(action 2))
//current position (room)
state=0;

i=0; l=0; m=0;
k = 0;//count in repetitions
r=0;
gammma = 0.8;//reward discount.
Qmax=0;//If we want to know the total amount of the reward, we just need to add up the sum of all the rewards for its entire history.
a=0; //largest number from the loop (loop = length of table Q)
b=0;

count=0//счётчик оставь

state_view=[];

