# Lesson 3.1: Breaking a Game into AI-Sized Tasks

## What You'll Learn

- Why AI needs small, specific tasks instead of one giant request
- How to break a game idea into an ordered list of tasks AI can handle
- How to size tasks so they're not too big or too small
- How to give AI the right context about your existing project
- How to order tasks so you build the most important things first

---

## Why You Can't Just Say "Make Me a Platformer"

It's tempting. You have a game idea in your head, and you want to tell AI the whole thing at once:

*"Make me a platformer with a player that can run and jump, enemies that patrol back and forth, coins to collect, a score counter, a main menu, a game over screen, sound effects, and background music."*

Here's the problem: AI will try to do everything at once. And when you try to do everything at once, you get a mess. Features conflict with each other. Things break in unexpected ways. You can't tell what went wrong because everything was built at the same time.

Think of it like directing a movie. You don't walk onto set on day one and say "Film the entire movie today." You break it into scenes. You film one scene at a time. You review the footage. You adjust. Then you move to the next scene.

Game development with AI works the same way. You direct one feature at a time.

---

## Feature Decomposition: Turning an Idea into a Task List

Feature decomposition is a fancy term for a simple idea: take something big and break it into small pieces.

Start with your game concept. Then ask yourself: what are all the individual things that need to exist for this game to work?

Here's the process:

**1. Name the core mechanic.** What is the one thing the player does most? In a platformer, it's running and jumping. In a puzzle game, it's dragging and matching. In a shooter, it's aiming and firing. This is always Task #1.

**2. List the supporting features.** What else does the game need beyond the core mechanic? Enemies? Collectibles? Obstacles? Hazards? Each of these is its own task.

**3. List the systems.** These are the behind-the-scenes features that make the game feel complete: score tracking, health, UI, menus, audio, save/load. Each system is its own task.

**4. List the polish items.** Screen shake, particle effects, animations, transitions, game feel improvements. These come last and each one is its own task.

---

## Task Sizing: What's Too Big? What's Too Small?

A well-sized task is something AI can accomplish in a single conversation turn without losing track of what it's doing.

**Too big:**
- "Add enemies, coins, and a scoring system" (that's three features bundled together)
- "Build the entire main menu with options, level select, and credits" (that's four screens)
- "Make the player with all their abilities" (if the player has movement, jumping, dashing, wall-sliding, and attacking, that's five features)

**Just right:**
- "Add a player character that can move left and right on a flat surface"
- "Add jumping to the existing player character"
- "Add coins that the player can collect by touching them"
- "Add a score display in the top-left corner that goes up when coins are collected"

**Too small:**
- "Change the player's speed from 200 to 250" (this is a quick adjustment, not a feature task)
- "Move the score text 10 pixels to the right" (this is fine-tuning, not a task)

The sweet spot: each task introduces one new behavior or system that you can test by playing the game.

---

## Task Ordering: What to Build First

Order matters. Some features depend on other features. You can't add "coin collection" if there's no player to collect them. You can't show a score if there's no scoring system.

Follow this general order:

**Phase 1 -- Core Mechanic**
Build the thing the player does most. Get it feeling right before anything else.

**Phase 2 -- Core Interactions**
Add the things the player interacts with: enemies, collectibles, obstacles. One at a time.

**Phase 3 -- Game Systems**
Add scoring, health, lives, win/lose conditions. These connect everything together.

**Phase 4 -- UI and Menus**
Now that the game works, add the screens around it: main menu, pause menu, game over screen.

**Phase 5 -- Audio and Visual Polish**
Sound effects, music, particles, screen shake, animations. The game already works; now you're making it feel good.

**Phase 6 -- Final Polish**
Settings, save/load, accessibility options, final tweaks.

> **Tip:** Always build the core mechanic first. If running and jumping doesn't feel right, nothing else matters. Get that working before you add a single coin or enemy.

---

## The "One Feature Per Prompt" Rule

Every time you ask AI to build something, ask for exactly one feature. Not two. Not "one feature and also fix that other thing." One feature.

Why? Because when you ask for one thing and test it, you know exactly what changed. If something breaks, you know what caused it. If something works, you can move forward with confidence.

When you're tempted to bundle features together, stop and split them.

Instead of: "Add enemies that patrol and damage the player and have health bars"

Ask for these separately:
1. "Add an enemy that moves back and forth on a platform"
2. "Make the player take damage when touching an enemy"
3. "Add a health bar above each enemy"

Each prompt. One feature. Test. Move on.

---

## Context Management: Telling AI About Your Project

After the first few tasks, AI doesn't automatically know what you've already built. Each time you start a new conversation or move to a new task, you need to give AI context about what exists.

Good context includes:

- **What the game is:** "I'm building a 2D platformer in Godot 4."
- **What exists so far:** "The player can move left/right and jump. There are platforms to land on. Coins can be collected and add to a score displayed in the top-left."
- **What files matter:** If AI has been building your project, mention the key files. "The player logic is in the Player scene, the coins are in the Coin scene, the main level is in Level1."
- **What you want to add next:** "Now I want to add enemies that patrol back and forth on platforms."

The more specific your context, the better AI can integrate the new feature with what already exists.

> **Tip:** Keep a running list of what you've built so far. After each task, add a one-line note: "Added player movement," "Added jumping," "Added coins with score." This becomes your context summary for future prompts.

---

## Example: Decomposing a Platformer

Let's take a game idea and break it into ordered tasks with actual prompts.

**Game concept:** A platformer where you collect coins, avoid enemies, and try to reach the exit door.

Here are the tasks in order:

**Task 1 -- Player Movement**
"I'm starting a new 2D platformer in Godot 4. Create a player character that can move left and right using arrow keys or WASD. The player should walk on a flat ground surface. Add a simple colored rectangle for the player and a ground platform."

**Task 2 -- Jumping**
"My platformer has a player that moves left and right on a ground platform. Add jumping with the spacebar. The player should jump a reasonable height and fall back down with gravity. The player should only be able to jump when on the ground."

**Task 3 -- Platforms**
"My platformer has a player that can run and jump on the ground. Add several platforms at different heights that the player can jump onto. Make them different widths and positions so the player has to navigate between them."

**Task 4 -- Coins**
"My platformer has a player that can run, jump, and land on platforms. Add collectible coins placed around the level. When the player touches a coin, the coin should disappear."

**Task 5 -- Score System**
"My platformer has coins that disappear when the player touches them. Add a score counter. Each coin collected should add 10 points. Display the score in the top-left corner of the screen."

**Task 6 -- Enemy (Patrol)**
"My platformer has a player, platforms, and coins. Add an enemy that patrols back and forth on a platform. The enemy should turn around when it reaches the edge of the platform."

**Task 7 -- Enemy Damage**
"My platformer has a patrolling enemy. Make it so when the player touches the enemy from the side, the player takes damage. Add a health system: the player starts with 3 health. Display the health on the screen."

**Task 8 -- Stomp Mechanic**
"My platformer has an enemy that damages the player on contact. Add a stomp mechanic: if the player lands on top of the enemy by jumping, the enemy is defeated. If the player touches the enemy from the side, the player takes damage."

**Task 9 -- Exit Door**
"My platformer has coins, enemies, and a health system. Add an exit door at the end of the level. When the player reaches the door, show a simple 'Level Complete' message."

**Task 10 -- Main Menu**
"My platformer has a complete level with coins, enemies, and an exit door. Add a main menu screen with a 'Start Game' button that takes the player to the level."

**Task 11 -- Game Over Screen**
"My platformer has a health system. When the player's health reaches zero, show a 'Game Over' screen with a 'Retry' button that restarts the level."

**Task 12 -- Sound Effects**
"My platformer has coins, enemies, jumping, and a stomp mechanic. Add sound effects: a coin pickup sound, a jump sound, a stomp sound, and a damage sound. Use placeholder sounds or generate simple ones."

**Task 13 -- Background Music**
"My platformer has sound effects. Add looping background music to the main level. The music should stop on the menu and game over screens."

**Task 14 -- Visual Polish**
"My platformer is functionally complete. Add some visual polish: a simple background, smooth camera following the player, and a coin spin animation."

Notice how each task builds on the last. Notice how every prompt tells AI what already exists. Notice how each task is one feature you can test immediately.

---

## Common Mistakes

**Trying to build everything at once.** This is the number one mistake. You'll end up with a broken game and no idea which feature caused the problem.

**Skipping the core mechanic.** If you build menus, UI, and audio before your player can move and jump properly, you'll waste time rebuilding those systems when the core mechanic changes.

**Adding polish too early.** Particle effects and screen shake are fun, but they're wasted effort if you haven't finished the core gameplay. Save polish for the end.

**Not giving AI enough context.** If your prompt doesn't mention what already exists, AI might overwrite previous work or create something that doesn't fit with the rest of your game.

**Bundling unrelated features.** "Add coins and enemies and a menu" is three tasks pretending to be one. Split them up.

**Skipping testing between tasks.** After each task, play the game. Make sure the new feature works AND the old features still work. This is your job as the director -- quality control.

---

## Checklist

Before moving to Lesson 3.2, make sure you can:

- [ ] Take a game idea and break it into at least 10 individual tasks
- [ ] Order those tasks so the core mechanic comes first
- [ ] Size each task so it's one testable feature
- [ ] Write a prompt for each task that includes context about what already exists
- [ ] Explain why building one feature at a time is better than building everything at once
- [ ] Keep a running list of what's been built to use as context in future prompts
