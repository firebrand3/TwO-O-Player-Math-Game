# TwO-O-Player Math Game - Planning

## Game description

- Game has 2 players
- Answer simple addition question that adds 2 numbers between 1 & 20
- A question is generated for each player and that player is prompted to answer the question

## Game detail

- both players have 3 lives
- player loses a life if answer is wrong
- game displays score after each turn
- games ends when one player gives 3 wrong answers
- games displays final score

## Task 1: Extract Nouns for Classes

- Classes: Player, Question, Game

## Task 2: Write their roles

- Player:
[x] Initialize player with name and base lives of 3;
[x] Define methods to update lives;

- Question:
[x] Initialize question with 2 number variables with value between (rand) 1 & 20 and answer variable with sum of both numbers;
[x] define method check answer

- Game:
[x] Initialize new game by creating players using player classes
[x] Define methods to Start game, Get player names, Ask questions and update score for each turn