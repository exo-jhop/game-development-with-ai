# Lesson 3.3: Directing AI for Game Systems

## What You'll Learn

- How to describe UI elements and menus to AI in a way that gets good results
- How to direct AI to add audio to your game
- How to explain save/load and game flow to AI
- The difference between system-level and feature-level instructions
- When to add each type of system during development
- How to ask AI to add systems to an existing game without breaking anything

---

## What Are Game Systems?

Game systems are the features that support your core gameplay without being the gameplay itself. Your player running and jumping is the core mechanic. The main menu, the health display, the background music, the save file -- those are systems.

Systems make a game feel complete. Without them, you have a prototype. With them, you have something that feels like a real game. And the good news is that describing systems to AI is often easier than describing gameplay, because systems tend to follow well-known patterns.

---

## Directing AI for UI and Menus

UI (user interface) is everything the player sees on screen that isn't the game world itself: menus, buttons, text displays, health bars, score counters.

When describing UI to AI, focus on three things: **what elements exist**, **where they are on screen**, and **what they do when interacted with**.

### Describing a Main Menu

A basic main menu prompt:
"Add a main menu screen to my game. It should have the game title 'Coin Dash' displayed large and centered near the top of the screen. Below the title, add three buttons stacked vertically with some space between them: 'Start Game', 'Options', and 'Quit'. The Start Game button should load the game level. The Quit button should close the game."

Notice what this prompt includes:
- What text appears and where ("game title centered near the top")
- What buttons exist and their labels
- How the buttons are arranged ("stacked vertically with some space between them")
- What each button does when clicked

### Describing a HUD

The HUD (heads-up display) shows game information while you play: score, health, lives, timers.

"Add a HUD to the game level. In the top-left corner, show a heart icon followed by a number showing the player's current health. In the top-right corner, show a coin icon followed by the player's current score. Both should stay fixed on screen even when the camera moves."

Key details for HUD prompts:
- What information to display
- Where each element goes on screen (top-left, top-right, bottom-center)
- Whether it stays fixed or scrolls with the game
- What icon or label goes with each piece of data

### Describing a Pause Menu

"When the player presses the Escape key during gameplay, pause the game and show a semi-transparent dark overlay over the game. On top of the overlay, show a menu with three buttons: 'Resume', 'Restart Level', and 'Quit to Menu'. Resume should unpause the game and hide the menu. Restart should reload the current level. Quit to Menu should go back to the main menu."

### Describing a Game Over Screen

"When the player's health reaches zero, stop the gameplay and show a Game Over screen. Display the text 'Game Over' in large letters in the center. Below it, show the player's final score. Below the score, add two buttons: 'Try Again' which restarts the level, and 'Main Menu' which goes back to the main menu."

> **Tip:** When describing UI, imagine you're explaining it to someone who will draw it. Top, bottom, left, right, center, big, small, stacked, side by side. The more spatial detail you give, the closer AI gets to what you picture.

---

## Directing AI for Audio

Audio makes a massive difference in how a game feels. There are two types: sound effects (short sounds triggered by events) and background music (continuous loops).

### Describing Sound Effects

When asking for sound effects, connect each sound to a specific game event:

"Add sound effects to my game:
- Play a short 'pop' or 'ding' sound when the player collects a coin
- Play a 'boing' or spring sound when the player jumps
- Play a 'thud' sound when the player lands on the ground after falling
- Play a short 'ouch' or impact sound when the player takes damage from an enemy
- Play a 'squish' sound when the player stomps on an enemy"

Each sound effect needs:
- What the sound sounds like (or just say "a fitting sound effect")
- Exactly when it should play (on what event)

### Describing Background Music

"Add background music to my game. Play a looping music track during gameplay. The music should start when the level loads and loop continuously. When the player opens the pause menu, the music should keep playing but at a lower volume. On the main menu, play a different, calmer looping track."

Key details for music:
- When it starts and stops
- Whether it loops
- Whether volume changes in different situations
- Whether different screens have different music

### Audio Volume

"Make sure the sound effects are at a comfortable volume relative to the background music. The music should be quieter than the sound effects so the sound effects are always clearly audible."

---

## Directing AI for Save and Load

Save/load systems let players keep their progress. When describing this to AI, focus on what data to save and when to save or load it.

### Basic Save/Load

"Add a save system to my game. When the player completes a level, save their progress: which levels they've completed and their highest score on each level. When the game starts, load this saved data so the player can see their previous progress."

Key details:
- What data to save (score, level progress, settings, inventory)
- When to save (after completing a level, when quitting, automatically every few minutes)
- When to load (when the game starts, when opening a specific screen)
- What happens if there's no save file (first time playing)

### Settings Save

"Save the player's audio settings (music volume and sound effects volume) when they change them in the Options menu. Load these settings when the game starts so the player doesn't have to set them every time."

---

## Directing AI for Game Flow

Game flow is how the player moves between different screens and states: menu to gameplay, gameplay to game over, game over to retry or menu.

### Describing Screen Transitions

"Here's how my game should flow:
- The game starts on the Main Menu
- Clicking 'Start Game' loads Level 1
- During gameplay, pressing Escape opens the Pause Menu
- If the player dies, show the Game Over screen
- From Game Over, 'Retry' restarts the level, 'Main Menu' goes back to the main menu
- When the player reaches the exit door, show the Level Complete screen
- From Level Complete, 'Next Level' loads the next level, 'Main Menu' goes back to the main menu"

This kind of flow description helps AI understand how all the pieces connect together. It prevents situations where the Game Over screen's retry button goes to the wrong place or the pause menu doesn't work properly.

### Win and Lose Conditions

"The player wins the level by reaching the exit door. The player loses if their health reaches zero. If the player falls off the bottom of the screen, they lose one health and respawn at the start of the level."

Be specific about exactly what triggers a win or loss. Don't assume AI knows the conventions of your genre.

---

## System-Level vs. Feature-Level Instructions

There's an important difference between adding a system and adding a feature within a system.

**System-level instruction (creating the system):**
"Add an audio system to my game. Set up background music that loops during gameplay and sound effects that play on specific events."

**Feature-level instruction (adding to an existing system):**
"I already have sound effects for jumping and coin collection. Add a new sound effect that plays when the player takes damage from an enemy."

When you're creating a system for the first time, you need a system-level prompt that sets everything up. After that, adding individual features to that system is simpler because the foundation already exists.

> **Tip:** When adding to an existing system, always mention that the system already exists. "My game already has sound effects for jumping and coins" tells AI not to rebuild the audio system from scratch -- just add to it.

---

## When to Add Each System

Different systems should be added at different stages of development. Here's a general timeline:

**Add early (during core development):**
- Basic HUD (score, health) -- you need to see these while testing
- Health/damage system -- needed to test enemy interactions

**Add in the middle (once gameplay is stable):**
- Main menu -- needed to have a proper game start
- Game over and win screens -- needed to complete the game loop
- Pause menu -- quality of life while testing and playing

**Add later (once the game is feature-complete):**
- Sound effects -- the game events need to exist before you can attach sounds
- Background music -- add after sound effects so you can balance volumes
- Save/load -- you need to know what's worth saving before you build this
- Settings menu -- comes after audio and other configurable systems exist

This isn't a strict rule, but it's a good guideline. The key principle: don't build a system until the things it depends on already exist.

---

## Integration Prompts: Adding Systems Without Breaking Things

The biggest risk when adding a system to an existing game is breaking something that already works. Here's how to write prompts that minimize this risk.

### State What Exists

"My game currently has: player movement and jumping, coin collection with a score counter in the top-left corner, one patrolling enemy that damages the player, and a health display. Everything is working correctly."

### State What to Add

"I want to add a pause menu that appears when I press Escape."

### State What to Protect

"Do not change any of the existing gameplay mechanics, the HUD, or the enemy behavior. Only add the pause functionality."

### Full Integration Prompt Example

"My 2D platformer currently has these features, all working correctly:
- Player can move left/right and jump
- Coins can be collected, adding 10 points to the score displayed in the top-left
- One enemy patrols back and forth on a platform
- Player takes damage from enemy contact, health displayed in the top-right
- Player can stomp enemies by jumping on them

I want to add a main menu screen. The menu should have the title 'Coin Dash' centered at the top and a 'Start Game' button that loads the game level. Do not modify any existing gameplay features. The menu should be a separate screen that appears when the game first launches."

This prompt clearly separates the new work from the existing work and explicitly asks AI not to break anything.

---

## Combining Systems

Sometimes you need to connect two systems together. For example, connecting the audio system to the scoring system so a sound plays when the score changes.

"I have a working score system and a working audio system. Connect them: when the score increases from collecting a coin, play the coin pickup sound effect. The score system and the coin sound are both already in the game, they just need to be connected."

This kind of "wiring" prompt is common in later development. You're not asking AI to build something new -- you're asking it to connect two things that already exist.

---

## Common Pitfalls with Systems

**Adding audio before gameplay is done.** If you change how coins work after adding a coin sound, the sound might break. Finish gameplay first.

**Building an options menu with nothing to configure.** Don't add a settings screen until you have settings (volume, controls, display) that need configuring.

**Overcomplicating menus.** Start with the simplest possible version. A main menu with just one button is fine to start. You can always add more options later.

**Forgetting to describe what happens on screen transitions.** Always tell AI what should happen when moving between screens. Does the music stop? Does the score reset? These details matter.

**Not mentioning what stays the same.** When adding a new system, explicitly tell AI what existing features should be preserved. Don't assume it will keep everything intact.

---

## Checklist

Before moving to Lesson 4, make sure you can:

- [ ] Describe a main menu to AI including layout, button labels, and button behavior
- [ ] Describe a HUD with specific elements, positions, and data sources
- [ ] Direct AI to add sound effects connected to specific game events
- [ ] Direct AI to add looping background music with volume considerations
- [ ] Describe a save/load system including what data to save and when
- [ ] Describe game flow: how the player moves between screens
- [ ] Write an integration prompt that states what exists, what to add, and what to protect
- [ ] Choose the right time to add each type of system during development
