# Lesson 2.1: Core Game Concepts

## What You'll Learn

In this lesson, you'll learn the vocabulary that game designers use to talk about games. This isn't about learning to code or use an engine — it's about learning to **think and speak like a game designer** so your AI prompts produce exactly the game you imagine.

By the end of this lesson, you will:
- Understand the three layers of game design: Mechanics, Dynamics, and Aesthetics
- Identify the genre and core mechanics of any game
- Describe a game loop clearly
- Use "player verbs" to define what a player can do
- Write dramatically better AI prompts using precise game design vocabulary

---

## Why Vocabulary Matters

Imagine asking a chef to "make something good" versus asking for "a pan-seared salmon with a lemon-butter sauce, medium rare, with roasted asparagus on the side." The second request gets you exactly what you want because you used specific culinary vocabulary.

Game development works the same way. The difference between a vague prompt and a precise one is **vocabulary** — and that's what this lesson gives you.

---

## The Three Layers of Game Design: MDA

Every game can be understood through three layers. Game designers call this the **MDA Framework**:

### Mechanics — The Rules

Mechanics are the **rules and systems** that make up your game. They're the building blocks.

Examples of mechanics:
- **Jumping**: The player presses a button and the character goes up, then comes back down
- **Health points**: The player has a number that goes down when they get hit, and the game ends when it reaches zero
- **Collecting coins**: Items appear in the world that the player can pick up, adding to a score
- **Timer**: A countdown that creates urgency — do the thing before time runs out
- **Inventory**: A system for carrying and managing items

Mechanics are the **facts** of your game. They are concrete and specific.

### Dynamics — What Emerges From Play

Dynamics are what **actually happens** when someone plays. They emerge from your mechanics interacting with each other and with the player's choices.

Examples of dynamics:
- A platformer with tight time limits creates **speedrunning** behavior
- A game with health pickups and enemies creates **risk-reward decisions** — do I push forward for the health pack or play it safe?
- A game with limited ammo creates **conservation and strategy**
- Collectibles placed in dangerous spots create **exploration tension**

You don't directly design dynamics — they **emerge** from the mechanics you choose. This is why choosing the right mechanics matters so much.

### Aesthetics — How It Feels

Aesthetics are the **emotional experience** of playing the game. This is what the player actually feels.

Common game aesthetics:
- **Challenge**: The thrill of overcoming something difficult
- **Discovery**: The joy of exploring and finding new things
- **Fantasy**: The pleasure of being someone or somewhere you can't be in real life
- **Fellowship**: The fun of playing with others
- **Competition**: The excitement of testing yourself against others
- **Sensation**: The enjoyment of sights, sounds, and spectacle
- **Narrative**: The engagement of following a story
- **Expression**: The satisfaction of creating and customizing

When you tell AI what feeling you want your game to create, you're describing the aesthetics. This helps the AI choose the right mechanics to support that feeling.

---

## Game Genres and Their Defining Mechanics

A genre is a category of games that share similar core mechanics. Knowing genres helps you communicate quickly with AI.

| Genre | Core Mechanics | Example Games |
|-------|---------------|---------------|
| **Platformer** | Jump, move, land on platforms | Mario, Celeste, Hollow Knight |
| **Puzzle** | Arrange, match, solve, manipulate | Tetris, Portal, Baba Is You |
| **Shooter** | Aim, fire, dodge, reload | Space Invaders, Halo, Splatoon |
| **RPG** | Level up, equip, choose abilities, complete quests | Pokemon, Final Fantasy, Undertale |
| **Racing** | Steer, accelerate, brake, boost | Mario Kart, Need for Speed |
| **Strategy** | Plan, build, manage resources, command units | StarCraft, Civilization, Plants vs Zombies |
| **Survival** | Gather, craft, eat, shelter, defend | Minecraft, Don't Starve |
| **Fighting** | Attack, block, dodge, combo | Street Fighter, Smash Bros |
| **Rhythm** | Time inputs to music, hit notes | Guitar Hero, Beat Saber |
| **Adventure** | Explore, interact, solve, collect | Zelda, Metroid |

When you tell AI "I want a platformer," it immediately understands a whole set of expected mechanics. That's the power of genre vocabulary.

---

## The Game Loop

Every game has a **game loop** — the cycle that the player repeats. Understanding and describing this loop is essential for communicating with AI.

### The Basic Game Loop

**Start** → **Play** → **Win or Lose** → **Restart**

But most games have loops within loops:

### Micro Loop (moment-to-moment)
What happens every few seconds.
- In a platformer: jump over gap → land on platform → avoid enemy → repeat
- In a shooter: aim → fire → dodge → reload → repeat
- In a puzzle: look at board → make a move → see result → plan next move → repeat

### Core Loop (per level or session)
What happens over minutes.
- Start a level → navigate obstacles → reach the goal → get scored → move to next level

### Meta Loop (long-term progression)
What keeps players coming back.
- Complete levels → unlock new worlds → earn upgrades → face harder challenges

When describing your game to AI, define at least the **micro loop** and the **core loop**. This gives the AI a clear picture of the player's experience.

---

## Player Verbs

One of the most powerful tools in game design is the concept of **player verbs**. These are the actions available to the player — what they can **do**.

Common player verbs:
- **Move** — Walk, run, fly, swim, drive, slide
- **Jump** — Single jump, double jump, wall jump, long jump
- **Shoot** — Fire projectiles, aim, lock on
- **Attack** — Melee hit, slash, punch, combo
- **Defend** — Block, parry, shield, dodge, roll
- **Collect** — Pick up items, gather resources, earn currency
- **Build** — Place blocks, construct buildings, craft items
- **Solve** — Manipulate puzzles, decode, arrange
- **Interact** — Talk to characters, open doors, activate switches
- **Avoid** — Dodge obstacles, evade enemies, escape hazards

Your player verb list defines the **scope** of your game. A game with "move, jump, and collect" is very different from a game with "move, shoot, dodge, and reload."

When you tell AI your player verbs, it knows exactly what systems to create.

---

## How Vocabulary Makes Your AI Prompts 10x Better

Let's see the difference vocabulary makes. Here are real before-and-after comparisons:

### Example 1: Describing a Game Idea

**Before (vague):**
> "Make me a game where you jump around and collect stuff."

**After (using game design vocabulary):**
> "Make me a 2D platformer where the player can move left/right, jump, and double-jump. The core mechanic is collecting coins scattered across platforms. The micro loop is: jump between platforms, avoid enemies, collect coins. The core loop is: complete a level by reaching the exit door, then advance to the next level with increased difficulty. The aesthetic goal is challenge and discovery."

Why it's better: The AI now knows the genre (platformer), the player verbs (move, jump, double-jump, collect, avoid), the game loop (level-based progression), and the intended feeling (challenge and discovery). It can build exactly what you described.

---

### Example 2: Describing Enemy Behavior

**Before (vague):**
> "Add some enemies that move around."

**After (using game design vocabulary):**
> "Add patrol enemies that walk back and forth on platforms. They defeat the player on contact (one-hit mechanic). The player can defeat them by jumping on top of them (stomp mechanic). Enemies should turn around at platform edges so they don't fall off. They add a challenge aesthetic to the micro loop — the player must time their jumps to avoid or stomp enemies."

Why it's better: The AI knows the enemy's movement pattern (patrol), how they interact with the player (contact damage, stomp defeat), their boundaries (platform edges), and their purpose in the game (challenge in the micro loop).

---

### Example 3: Describing Progression

**Before (vague):**
> "Make the game get harder as you go."

**After (using game design vocabulary):**
> "Implement difficulty progression across levels: Level 1 introduces the move and jump mechanics with wide platforms and no enemies. Level 2 adds the collect verb with coins and narrower platforms. Level 3 introduces patrol enemies and the stomp mechanic. Each level's core loop adds one new dynamic while keeping the micro loop familiar. The meta loop rewards players with a star rating (1-3 stars) based on coins collected, encouraging replaying levels."

Why it's better: The AI understands exactly how difficulty scales, what each level introduces, and how the progression system works. It can build each level with purpose.

---

## Quick Reference: Game Design Vocabulary Cheat Sheet

| Term | What It Means | Use It When... |
|------|--------------|-----------------|
| **Mechanic** | A rule or system in the game | Describing what the game does |
| **Dynamic** | What emerges from mechanics interacting | Explaining what the player experiences |
| **Aesthetic** | The emotional feeling of play | Saying how the game should feel |
| **Genre** | Category of similar games | Giving AI a starting framework |
| **Game loop** | The cycle the player repeats | Defining the structure of play |
| **Micro loop** | Second-to-second actions | Describing moment-to-moment gameplay |
| **Core loop** | Per-level or per-session cycle | Defining the main play structure |
| **Meta loop** | Long-term progression | Planning what keeps players engaged |
| **Player verbs** | Actions available to the player | Defining the scope of what players do |
| **Difficulty curve** | How challenge increases over time | Planning level progression |
| **Risk-reward** | Trading safety for potential gain | Creating interesting player choices |
| **Feedback** | How the game responds to actions | Making actions feel satisfying |

---

## Checklist: Before You Move On

- [ ] I can explain the three layers of MDA (Mechanics, Dynamics, Aesthetics)
- [ ] I can identify the genre of a game and name its core mechanics
- [ ] I can describe a game loop at the micro, core, and meta levels
- [ ] I can list the player verbs for any game I play
- [ ] I understand how using precise vocabulary improves my AI prompts
- [ ] I've compared at least one vague prompt to a vocabulary-rich prompt and seen the difference

---

**Next up:** You'll practice these concepts by analyzing games you already know and writing AI prompts using your new vocabulary.
