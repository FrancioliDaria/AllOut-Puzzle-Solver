AllOut Puzzle Solver
Overview
This project implements a solution for the AllOut puzzle game using Artificial Intelligence (AI) techniques. The goal of the game is to turn off all the lights in a grid by selecting the appropriate cells. When a cell is selected, it toggles the state of the selected light and its neighbors. The challenge is to find the optimal sequence of moves to turn off all the lights as quickly as possible and with the least number of moves.

This project implements:

A program that solves various levels of the AllOut game.
A program that aims to solve the puzzle in the shortest time possible with the fewest moves.
The solution is built using an AI-based search algorithm, *A (A-star)**, to navigate through the state space of the puzzle and find an optimal solution.

Game Description
The AllOut game is a puzzle where the player must turn off all the lights in an n x n matrix. Some lights are initially on, and the player can toggle them by selecting a cell. When a light is toggled, the state of that light and its neighbors will change (on/off).

The goal is to turn off all the lights using the fewest number of moves and the least time possible.

Project Details
Game Versions
AllOut 4x4: A grid with 4 rows and 4 columns, where the player must turn off lights. The game size is smaller, and the number of possible states is manageable.
AllOut 5x5: A larger grid with 5 rows and 5 columns, offering a more challenging puzzle. The increased number of cells requires more complex strategies and optimizations.
Problem Example:
For both 4x4 and 5x5 grids, the game presents a puzzle with certain lights turned on, and the objective is to toggle cells to turn all the lights off.

Implementation
The implementation is based on PDDL (Planning Domain Definition Language), which describes the actions and states in the AllOut puzzle. We use the A search algorithm* to find the optimal solution. The following files are used:

Domain and Problem Files
Domain file (all-out.pddl):

Defines the predicates for light states (light-on), neighbors, and the action of toggling a light (toggle).
Describes how selecting a light toggles its state and the states of neighboring lights.
Problem files (all-out-p01.pddl, all-out-p02.pddl):

Defines specific puzzle instances, including the initial state (which lights are on) and the goal state (all lights off).
Each problem file corresponds to a different puzzle configuration for 4x4 and 5x5 grids.
Example of a Problem File (AllOut 4x4):

(define (problem all-out-p02)
  (:domain all-out)
  (:objects
    light1 light2 light3 light4 light5 light6 light7 light8 light9 light10 light11 light12
    light13 light14 light15 light16)
  (:init
    (not(light-on light1)) (not(light-on light2)) ...
  )
  (:goal (forall (?x) (not (light-on ?x)))))
Usage
To run the program:

Ensure you have a PDDL planner installed that supports A search*.
Download the project files (domain and problem files).
Load the domain file (all-out.pddl) and the problem file (e.g., all-out-p02.pddl) into the planner.
Execute the planner to find the optimal sequence of actions to solve the puzzle.
Example:
./planner all-out.pddl all-out-p02.pddl

Results
The tests were run on various configurations of the 4x4 and 5x5 AllOut puzzles. Here are some of the results:

4x4 Grid - Case 1:
Time: 0.0026s
Plan length: 2 steps
Search time: 0.0004s
5x5 Grid - Case 1:
Time: 0.0032s
Plan length: 2 steps
Search time: 0.0005s
Conclusion
The project successfully demonstrates the use of the A search algorithm* to solve the AllOut puzzle. The time and number of steps required to solve the puzzle vary based on the grid size and the initial configuration of the lights. The solution is optimal, and the program can efficiently find the sequence of actions needed to turn off all the lights.
