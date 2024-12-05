[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/PX83n--N)
# NeXtCS Project 01
### Name0: SPONGEBOB FC
### Name1: Jason Zheng
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Space Invaders

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

Space Invaders

There would be four different objects: The player ship, Enemy Aliens, Barricades, and Projectiles.

- The player ship may move side to side, and fire projectiles at enemy aliens.
- Enemy Aliens move along a pre-determined path and fire projectiles at the player.
- Projectiles may only move up(player-fired) and down(alien fired), perfectly vertical. 
- Barridcades delete any projectile that comes into contact with them.

The main goal of the player is to eliminate all enemy aliens using fired projectiles.

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

- Destructible Barricades
- Different Player Ship types + initial selection screen
- Health
- Different Alien types

### Array Usage
How will you be using arrays in this project?

1D Array:
- N/A at the moment

2D Array:
- Alien generation(in a grid)


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- A or LEFT ARROW: move ship left
- D or RIGHT ARROW: move ship right
- SPACE: fire projectile

Mouse Control:
- Mouse movement: N/A at the moment
- Mouse pressed: N/A at the moment


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

Alien
- Instance variables:
  - int xPos, yPos;
  - int xSpeed;
  - int firerate;
- METHODS
  - void maybeShoot()
  - void move()
  - void gameOverCheck

Projectile_Player
- Instance variables:
  - int xPos, yPos;
  - int ySpeed;
- METHODS
  - void move()
  - void hitCheck()
