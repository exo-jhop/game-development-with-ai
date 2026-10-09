# Technical Planning Guide for Your Game

This guide shows you how to take a Game Design Document and turn it into an actionable technical plan. Before you start building, you need to know what systems your game requires, how your project is organized, and what order to tackle things in. You will direct AI to handle the implementation -- your job is to clearly describe what you need.

---

## Step 1: Break Your GDD into Implementable Features

Your GDD describes what the player experiences. Technical planning translates that into what systems, assets, and behaviors need to exist. Every line in your GDD implies game systems that AI will need to build for you.

### How to Decompose a Feature

Take each feature from your GDD and ask:

1. **What game objects does this need?** (A player character, enemies, levels, UI screens)
2. **What behaviors does this need?** (Movement logic, health tracking, spawning patterns)
3. **What assets does this need?** (Sprites, sounds, fonts, tilesets)
4. **What does this connect to?** (Does the score system need to talk to the UI? Does the player need to interact with enemies?)

### Example: Decomposing a Platformer GDD

Suppose your GDD says:

> "The player runs and jumps through levels, collecting coins and avoiding enemies. There are 3 levels with increasing difficulty. The player has 3 lives and a score counter."

Here is the decomposition:

| GDD Feature | Game Objects Needed | Behaviors Needed | Assets Needed |
|-------------|---------------------|------------------|---------------|
| Player runs and jumps | Player character | Movement, jumping, gravity | Player spritesheet |
| Collecting coins | Coin object | Pickup detection, disappear on contact | Coin sprite, pickup SFX |
| Avoiding enemies | Enemy object | Patrol movement, player damage | Enemy spritesheet |
| 3 levels | 3 level layouts | Level loading, progression | Tileset sprites |
| 3 lives | Lives tracker | Lose life on damage, game over at zero | Heart icon sprite |
| Score counter | Score display | Track and display score | Font |
| Increasing difficulty | (level design, not a system) | -- | -- |

Notice how one GDD sentence can produce multiple technical items. This is normal.

---

## Step 2: Describe Your Game Systems

Your game is made up of interconnected systems. Planning these before you start building prevents painful restructuring later. You do not need to know how the engine implements these -- you need to describe them clearly enough that AI can build them for you.

### Common System Patterns

**Pattern 1: Simple Game (most beginner projects)**

- Player character (moves, jumps, collides with platforms)
- Level layout (platforms, walls, ground)
- Enemies (grouped together, each with patrol behavior)
- Collectibles (coins, power-ups grouped together)
- HUD overlay (score display, lives display -- stays on screen regardless of camera)

**Pattern 2: Level-Based Game (separate levels that load in sequence)**

- Game controller (loads and switches between levels)
- HUD overlay (persistent across levels)
- Pause menu (accessible from any level)
- Each level contains: layout, player start position, enemies, collectibles, exit trigger

**Pattern 3: UI-Heavy Game (menu-driven)**

- Main menu screen
- Settings screen
- Game screen
- Game over screen
- Navigation between screens

### Tips for System Planning

- **Group related objects.** All enemies should be managed together, all coins together. This keeps things organized.
- **Separate the HUD from the game world.** UI elements (score, health, menus) should stay on screen regardless of what happens in the game world.
- **Plan for reuse.** If something appears more than once (enemies, coins, platforms), describe it as one template that gets placed multiple times.

---

## Step 3: Project Folder Structure

A clean folder structure saves you hours of confusion. Direct AI to set this up before adding any files.

### Recommended Structure

```
your-game-project/
  +-- scenes/
  |     +-- player/
  |     +-- enemies/
  |     +-- collectibles/
  |     +-- levels/
  |     +-- ui/
  +-- assets/
  |     +-- sprites/
  |     |     +-- player/
  |     |     +-- enemies/
  |     |     +-- environment/
  |     |     +-- ui/
  |     +-- audio/
  |     |     +-- music/
  |     |     +-- sfx/
  |     +-- fonts/
  +-- global/
  |     +-- (global game state and manager systems)
  +-- resources/
        +-- (tilesets, themes, and other shared resources)
```

### Folder Rules

- **scenes/** holds your game objects and their logic together
- **assets/** holds media files (images, audio, fonts)
- **global/** holds systems that persist across the whole game (score tracking, audio management)
- **resources/** holds shared resources like tilesets and visual themes
- Keep related files together in the same folder
- Use lowercase_with_underscores for all file and folder names

---

## Step 4: Describing Game Objects to AI

When you ask AI to build a game object, you need to describe its behavior clearly. Here is a guide for common game objects and what to tell AI about each one.

### Game Object Description Guide

| Game Object | What to Tell AI |
|-------------|-----------------|
| Player (moves, has physics) | "The player should move left/right, jump, and collide with platforms. I need direct control over movement, not floaty physics." |
| Enemy (moves, has physics) | "The enemy should patrol back and forth and damage the player on contact." |
| Bullet / projectile | "The bullet should move in a direction and detect when it hits something." |
| Coin / collectible | "The coin should detect when the player touches it, then disappear and add to the score." |
| Platform / wall | "This is a solid surface that blocks the player and enemies from passing through." |
| Moving platform | "This platform moves along a path and carries the player with it." |
| Damage zone (spikes, lava) | "This area should damage the player when they step into it, but it does not physically block movement." |
| Camera | "The camera should follow the player smoothly as they move through the level." |
| UI element | "Display the player's score and remaining lives on screen at all times." |
| Tilemap / level layout | "Build the level from a grid of reusable tiles for ground, walls, and platforms." |
| Particle effect | "Add a visual effect like dust when the player lands, or sparks when enemies are hit." |

### Key Principle

Describe WHAT you want each object to do, not HOW the engine should implement it. Let AI choose the right technical approach. Your job is to be specific about the behavior.

---

## Step 5: Planning Global Systems

Some systems need to persist across the entire game -- they do not belong to any single level or screen. Plan these carefully.

### When You Need a Global System

Use a global system when:
- Data needs to survive between levels (score, lives, player stats)
- Multiple parts of your game need access to the same system (audio playback)
- You need a single source of truth for game state

Do NOT make something global when:
- Only one screen or level needs it
- It is a simple behavior that belongs on a specific game object

### Common Global Systems for Beginner Projects

**Game State Manager** -- Tracks global game state
- Current score
- Player lives
- Current level number
- Functions: reset the game, add to score, lose a life, advance to next level

**Audio Manager** -- Handles music and sound effects
- Play/stop background music
- Play one-shot sound effects
- Manage volume levels

**Scene/Level Manager** -- Handles transitions
- Change between levels with optional transition effects
- Reload the current level

### How to Direct AI

Tell AI: "I need a global game state manager that tracks the player's score, lives, and current level. It should persist when switching between levels. Give me functions to add score, lose a life, and advance to the next level."

---

## Step 6: Create Your Feature List with Priorities

Now combine everything into an ordered build plan. List features in the order they should be built, respecting dependencies.

### Dependency Rules

- Build things that other things depend on FIRST
- Player movement comes before enemy AI (enemies need a player to interact with)
- Basic collision comes before combat (combat needs collision)
- Core gameplay comes before UI (you need something to display)
- Gameplay comes before polish (screen shake is meaningless without a game)

### Example Build Order for a Platformer

| Order | Feature | Depends On | Priority |
|-------|---------|------------|----------|
| 1 | Player character with movement | Nothing | Must |
| 2 | Test level with platforms | Nothing | Must |
| 3 | Player jumping and gravity | Player movement | Must |
| 4 | Camera following player | Player character | Must |
| 5 | Coin collectible | Nothing | Must |
| 6 | Score tracking (global system) | Nothing | Must |
| 7 | HUD displaying score | Score tracking, coins | Must |
| 8 | Basic enemy with patrol | Level layout | Must |
| 9 | Player-enemy collision (death) | Player, enemy | Must |
| 10 | Lives system | Game state manager | Must |
| 11 | Level exit and loading next level | Level manager | Must |
| 12 | Main menu | Level manager | Should |
| 13 | Game over screen | Lives system | Should |
| 14 | Sound effects | Audio manager | Should |
| 15 | Background music | Audio manager | Should |
| 16 | Particle effects | Player, enemy | Could |
| 17 | Screen shake | Player-enemy collision | Could |
| 18 | Animated transitions | Level manager | Could |

### Your Build Order

Fill in your own features:

| Order | Feature | Depends On | Priority |
|-------|---------|------------|----------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |
| 5 | | | |
| 6 | | | |
| 7 | | | |
| 8 | | | |
| 9 | | | |
| 10 | | | |

---

## Using AI for Technical Planning

AI tools can help you plan your game's technical architecture. Try these prompts:

**System design:**
"I am building a [genre] game. The player can [actions]. What game systems do I need and how should they be organized?"

**Game object behavior:**
"I need a [game object] that [behavior]. What is the best approach for this in a 2D game engine?"

**Feature dependencies:**
"Here is my feature list for my game: [list]. What order should I build these in? What depends on what?"

**Global system planning:**
"I need a [system] for my game. Should this be a global system or part of a specific level? Here is what it needs to do: [description]."

---

## Summary

1. Decompose GDD features into game objects, behaviors, and assets
2. Describe your game systems and how they connect before building
3. Direct AI to set up a clean folder structure from the start
4. Describe WHAT each game object should do -- let AI handle the HOW
5. Plan global systems sparingly and intentionally
6. Order your feature list by dependencies and priority
7. Build must-have features first, in dependency order
