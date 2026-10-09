# Game Design Document Template

Use this template to plan your game before building anything. Fill in each section with your own ideas. The examples show what a completed entry looks like -- replace them with your own content.

---

## 1. Game Concept

**Working Title:**
<!-- Give your game a name, even a temporary one. -->

_Example: "Sky Hopper"_

**Genre:**
<!-- What type of game is this? You can combine genres. -->

_Example: Platformer / Puzzle_

**One-Line Pitch:**
<!-- Describe your game in a single sentence. If you can't, your concept may be too complex. -->

_Example: "A bird who lost its wings bounces between clouds to reach the sun."_

**Elevator Pitch (3-5 sentences):**
<!-- Expand on your one-liner. Cover what the player does, what makes it interesting, and what the goal is. -->

_Example: "In Sky Hopper, you play as Pip, a small bird who lost its wings in a storm. Using only momentum and cloud bounces, you climb higher and higher through increasingly dangerous skies. Each level introduces new cloud types -- some crumble, some bounce you sideways, some move. Reach the sun to win, but fall and you start the section over."_

**Target Audience:**
<!-- Who would enjoy playing this game? -->

_Example: Casual players who enjoy short play sessions and simple controls._

---

## 2. Core Mechanics

**What does the player DO?**
<!-- List the primary actions the player takes during gameplay. Keep this focused -- 2 to 4 core actions maximum. -->

- Action 1:
- Action 2:
- Action 3:

_Example:_
- _Move left and right_
- _Jump and bounce off clouds_
- _Collect feathers to unlock abilities_

**Controls:**
<!-- Map your actions to specific inputs. Keep controls simple. -->

| Action | Keyboard | Gamepad |
|--------|----------|---------|
|        |          |         |
|        |          |         |
|        |          |         |

_Example:_

| Action     | Keyboard     | Gamepad |
|------------|--------------|---------|
| Move       | Arrow keys   | Left stick |
| Jump       | Space        | A button |
| Dash       | Shift        | B button |

**What Makes It Fun?**
<!-- This is the most important question. Why would someone keep playing? -->

_Example: "The fun comes from the rhythm of bouncing -- each cloud launches you at a different angle and speed, so you're constantly adjusting. Near-misses feel exciting, and nailing a perfect chain of bounces is satisfying."_

**Tip:** If you struggle to answer "what makes it fun," your game idea might need more development. Try playing games in your genre and identify what specifically feels good about them.

---

## 3. Game Flow

Describe how a typical play session works from start to finish.

**Start:**
<!-- What does the player see first? How do they begin? -->

_Example: "Title screen with Play and Quit buttons. Pressing Play drops you into Level 1."_

**Core Loop:**
<!-- What does the player repeat over and over? This is the heart of your game. -->

_Example: "Jump from cloud to cloud, climbing upward. Collect feathers. Avoid hazards. Reach the goal cloud at the top."_

**Progression:**
<!-- How does the game get harder or more interesting over time? -->

_Example: "New cloud types are introduced each level. Wind is added in level 3. Moving hazards appear in level 5."_

**Win Condition:**
<!-- How does the player win? -->

_Example: "Reach the sun at the top of the final level."_

**Lose Condition:**
<!-- How does the player fail? What happens when they do? -->

_Example: "Falling off the bottom of the screen. The player respawns at the last checkpoint cloud."_

**Restart:**
<!-- How does the player try again? Is it quick? -->

_Example: "Instant respawn at checkpoint. No loading screen. Full level restart from pause menu."_

---

## 4. Art Style

**Visual Direction:**
<!-- Describe the look and feel in plain language. -->

_Example: "Soft, hand-drawn style with rounded shapes. Warm colors during daytime levels, cool purples and blues for night levels."_

**References:**
<!-- Name 2-3 games, movies, or art styles that look similar to what you want. -->

- Reference 1:
- Reference 2:
- Reference 3:

_Example:_
- _Celeste (pixel art with expressive animation)_
- _Alto's Odyssey (color palette and atmosphere)_
- _Studio Ghibli films (soft, warm feel)_

**Color Palette:**
<!-- Pick 4-6 main colors. You can use hex codes or descriptive names. -->

- Primary:
- Secondary:
- Accent:
- Background:
- Danger/Warning:

_Example:_
- _Primary: Sky blue (#87CEEB)_
- _Secondary: Cloud white (#F5F5F5)_
- _Accent: Golden yellow (#FFD700)_
- _Background: Light purple (#E6E0F8)_
- _Danger: Soft red (#FF6B6B)_

**AI Asset Tip:** When prompting Gemini or other AI tools for art, include your color palette and reference styles. Example prompt: "A cartoon cloud platform, soft rounded edges, sky blue and white, hand-drawn style, game asset, transparent background."

---

## 5. Audio

**Music Style:**
<!-- What kind of music fits your game? -->

_Example: "Cheerful chiptune with a bouncy tempo. Calmer music for menu screens."_

**Sound Effects List:**
<!-- List every sound your game needs. Be specific. -->

- [ ] Player jump
- [ ] Player land
- [ ] Player death
- [ ] Collectible pickup
- [ ] Menu button click
- [ ] Level complete
- [ ] Background ambience
- [ ]
- [ ]

_Example:_
- _[x] Bouncy "boing" for cloud jumps_
- _[x] Soft "poof" for crumbling clouds_
- _[x] Cheerful chime for feather collection_
- _[x] Wind whoosh for dashing_

---

## 6. Scope

This is where most beginner projects go wrong. Be honest about what you can build.

**Must-Have Features (without these, the game does not work):**
- [ ]
- [ ]
- [ ]
- [ ]

_Example:_
- _[x] Player movement and jumping_
- _[x] Cloud platforms with collision_
- _[x] At least 3 playable levels_
- _[x] Win and lose conditions_
- _[x] Main menu and restart_

**Nice-to-Have Features (add if time permits):**
- [ ]
- [ ]
- [ ]

_Example:_
- _[ ] Feather collectibles and counter_
- _[ ] Particle effects for bouncing_
- _[ ] Screen shake on big bounces_

**Cut List (cool ideas to save for later):**
- [ ]
- [ ]

_Example:_
- _[ ] Multiplayer race mode_
- _[ ] Level editor_
- _[ ] Leaderboards_

**Tip:** If your Must-Have list has more than 7 items, your scope is probably too large. Move some to Nice-to-Have.

---

## 7. Target Platform

**Primary Platform:**
<!-- Where will this game run? -->

_Example: PC (Windows)_

**Resolution:**
<!-- What screen size are you designing for? -->

_Example: 1280 x 720, windowed_

**Performance Target:**
<!-- Any specific performance goals? -->

_Example: 60 FPS on mid-range hardware_

---

## Quick Reference: Using AI to Help Write Your GDD

You can use AI tools to brainstorm and refine each section. Try these prompts:

- "I'm making a [genre] game where the player [action]. Give me 5 ideas for what makes this fun."
- "Here is my game concept: [paste pitch]. What features should be must-have vs nice-to-have?"
- "What are common mistakes when scoping a [genre] game for a solo developer?"
- "Suggest a color palette for a game that feels [mood/atmosphere]."

Remember: AI helps you think through ideas, but YOU make the final decisions. Your GDD is your vision.
