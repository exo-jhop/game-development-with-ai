# Game Task Decomposition Template

Use this template to plan your game before you start prompting AI. Fill in each section, then work through the tasks in order.

---

## Game Concept

**Game Title:** _______________________________________________

**One-Line Description:** _______________________________________________

**Genre:** _______________________________________________

**Core Mechanic (what does the player DO most?):** _______________________________________________

---

## Phase 1: Core Mechanic

This is the most important part of your game. Build it first and get it feeling right.

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 1 | _______________ | _______________ | None | [ ] |
| 2 | _______________ | _______________ | Task 1 | [ ] |

---

## Phase 2: Supporting Features

These are the things the player interacts with beyond the core mechanic: enemies, collectibles, obstacles, hazards, NPCs.

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 3 | _______________ | _______________ | __________ | [ ] |
| 4 | _______________ | _______________ | __________ | [ ] |
| 5 | _______________ | _______________ | __________ | [ ] |
| 6 | _______________ | _______________ | __________ | [ ] |
| 7 | _______________ | _______________ | __________ | [ ] |

---

## Phase 3: Game Systems

Score, health, lives, win/lose conditions, level progression -- the systems that tie the game together.

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 8 | _______________ | _______________ | __________ | [ ] |
| 9 | _______________ | _______________ | __________ | [ ] |
| 10 | ______________ | _______________ | __________ | [ ] |

---

## Phase 4: UI and Menus

Main menu, pause menu, game over, win screen, HUD elements.

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 11 | ______________ | _______________ | __________ | [ ] |
| 12 | ______________ | _______________ | __________ | [ ] |
| 13 | ______________ | _______________ | __________ | [ ] |

---

## Phase 5: Audio

Sound effects for game events and background music.

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 14 | ______________ | _______________ | __________ | [ ] |
| 15 | ______________ | _______________ | __________ | [ ] |

---

## Phase 6: Polish

Visual effects, game feel, animations, transitions, screen shake, juice.

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 16 | ______________ | _______________ | __________ | [ ] |
| 17 | ______________ | _______________ | __________ | [ ] |
| 18 | ______________ | _______________ | __________ | [ ] |

---

## Context Summary

Update this after completing each task. Copy it into your next AI prompt so AI knows what already exists.

**What has been built so far:**

1. _______________________________________________
2. _______________________________________________
3. _______________________________________________
4. _______________________________________________
5. _______________________________________________

---
---

# Example: Filled-In Template for a Coin-Collection Platformer

## Game Concept

**Game Title:** Coin Dash

**One-Line Description:** A 2D platformer where you collect coins, avoid enemies, and reach the exit door.

**Genre:** 2D Platformer

**Core Mechanic:** Running and jumping across platforms

---

## Phase 1: Core Mechanic

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 1 | Player movement (left/right) on ground | "I'm starting a new 2D platformer in Godot 4. Create a player character that can move left and right using arrow keys. Add a flat ground platform and a simple rectangle for the player." | None | [x] |
| 2 | Add jumping | "My platformer has a player that moves left/right on a ground. Add jumping with spacebar. Player should only jump when on the ground and fall back down with gravity." | Task 1 | [x] |

---

## Phase 2: Supporting Features

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 3 | Add platforms at different heights | "My platformer has a player that runs and jumps. Add several platforms at different heights and widths that the player can jump between." | Task 2 | [x] |
| 4 | Add collectible coins | "My platformer has platforms. Add coins placed around the level that disappear when the player touches them." | Task 3 | [ ] |
| 5 | Add patrolling enemy | "My platformer has platforms and coins. Add an enemy that walks back and forth on a platform, turning around at edges." | Task 3 | [ ] |
| 6 | Player takes damage from enemies | "My platformer has an enemy. Make the player take damage on side contact. Add 3-health system with on-screen display." | Task 5 | [ ] |
| 7 | Player can stomp enemies | "My platformer has enemies that damage the player. If the player jumps on top of an enemy, the enemy is defeated." | Task 6 | [ ] |

---

## Phase 3: Game Systems

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 8 | Score system for coins | "My platformer has coins that disappear on contact. Add a score: each coin gives 10 points, display the score in the top-left corner." | Task 4 | [ ] |
| 9 | Exit door and level completion | "My platformer has a complete level. Add an exit door. When the player reaches it, show 'Level Complete.'" | Task 3 | [ ] |
| 10 | Death and respawn | "My platformer has a health system. When health reaches zero, show Game Over. Also, if the player falls off the bottom of the screen, they lose a life." | Task 6 | [ ] |

---

## Phase 4: UI and Menus

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 11 | Main menu | "My platformer has a playable level. Add a main menu with a 'Start Game' button." | Task 9 | [ ] |
| 12 | Game over screen with retry | "My platformer has a death system. Show a Game Over screen with a 'Retry' button that restarts the level." | Task 10 | [ ] |
| 13 | Pause menu | "My platformer is playable. Add a pause menu when pressing Escape: Resume, Restart, Quit to Menu." | Task 11 | [ ] |

---

## Phase 5: Audio

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 14 | Sound effects | "My platformer has jumping, coins, enemies, and stomping. Add sound effects for each: jump, coin pickup, stomp, and taking damage." | Task 7 | [ ] |
| 15 | Background music | "My platformer has sound effects. Add looping background music during gameplay." | Task 14 | [ ] |

---

## Phase 6: Polish

| # | Task Description | AI Prompt Draft | Dependencies | Status |
|---|-----------------|-----------------|--------------|--------|
| 16 | Camera follow | "My platformer is complete. Add a camera that smoothly follows the player." | Task 2 | [ ] |
| 17 | Coin animation | "My platformer has coins. Make the coins spin or bob up and down." | Task 4 | [ ] |
| 18 | Death animation | "My platformer has player death. Add a brief animation or effect when the player dies before showing Game Over." | Task 10 | [ ] |

---

## Context Summary

**What has been built so far:**

1. Player character moves left/right with arrow keys on a ground platform
2. Player can jump with spacebar, has gravity, can only jump when grounded
3. Multiple platforms at different heights the player can navigate between
4. (next to build: coins)
5. (next to build: enemies)

---

> **Tip:** Print this template or keep it open while you work. Check off each task as you complete it. Update the context summary after every task so your next AI prompt always has the right information.
