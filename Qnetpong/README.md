

## Deep Q Network 
It is a simple implemention of a Deep Q Network which learns to play PONG against a perfectly playing computer

 
## Results
After around 700k Time Steps the agent plays a near perfect game and even found some bugs of the PONG implementation to exploit. First we thought it was just not good enough until I saw that it was just a way of receiving more points by moving the paddle a certain way. Really hard to expoit by hand.... but see by yourself. It is kind of eye opening what a learning machine is capebale of.


## Original README Below

## Overview
 I build
the game of [Pong](http://www.ponggame.org) from scratch. Then I build a [Deep Q Network](https://www.quora.com/Artificial-Intelligence-What-is-an-intuitive-explanation-of-how-deep-Q-networks-DQN-work) that gets better and better over time through trial and error. The DQN is a convolutional neural network that reads in pixel data from the game and the game score. Using just those 2 parameters, it learns what moves it needs to make to become better.

## Installation


* tensorflow (https://www.tensorflow.org)
* cv2 (http://www.pyimagesearch.com/2015/06/15/install-opencv-3-0-and-python-2-7-on-osx/)
* numpy
* random
* collections
* pygame

use [pip](https://pypi.python.org/pypi/pip) to install the dependencies. Tensorflow and cv2 are more manual. Links provided above ^

## Usage 

Run it like this in terminal. The longer you let it run, the better it will get.

```
python RL.py
```



