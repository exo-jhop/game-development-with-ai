# System Prompt Templates: Ready-to-Use AI Prompts for Game Systems

Use these templates as starting points. Replace the bracketed text with your own game's details. Customize freely -- these are starting points, not rigid scripts.

---

## Main Menu

### Simple Main Menu
"Add a main menu screen to my [genre] game called '[Game Title]'. Display the title in large text centered near the top. Below it, add a 'Start Game' button that loads [level/scene name]. Below that, add a 'Quit' button that closes the game. Use a clean, simple layout with the buttons stacked vertically and centered on screen."

### Main Menu with Options
"Add a main menu to my game '[Game Title]'. At the top, show the game title in large text. Below, add three buttons stacked vertically and centered: 'Play', 'Options', and 'Quit'. Play loads [level/scene name]. Options opens a settings screen (just a placeholder screen with a 'Back' button for now). Quit closes the game."

### Main Menu with Level Select
"Add a main menu with level selection to my game '[Game Title]'. The menu has two screens. The first screen shows the game title and two buttons: 'Select Level' and 'Quit'. Clicking Select Level goes to a second screen showing buttons for Level 1, Level 2, and Level 3 arranged in a row, plus a 'Back' button. Each level button loads the corresponding level. Levels that haven't been unlocked yet should appear grayed out."

**Customization tips:**
- Mention your game's visual style if you have one: "Use a dark background with bright text" or "Match the pixel art style of the rest of the game."
- Add a subtitle or version number if you want.
- If you want a background image or animation, describe it.

---

## HUD (Heads-Up Display)

### Health and Score HUD
"Add a HUD to the gameplay screen. In the top-left corner, show [number] heart icons representing the player's health. When the player takes damage, remove one heart. In the top-right corner, show a coin icon followed by the player's score as a number. The HUD should stay fixed on screen and not scroll with the camera."

### Health, Score, and Lives HUD
"Add a HUD with three elements. Top-left: a heart icon with the player's health as a number (e.g., 'heart 3'). Top-right: a coin icon with the score number. Top-center: 'Lives: [number]'. All elements should be large enough to read easily and stay fixed on screen."

### Timer HUD
"Add a countdown timer to the HUD. Display it at the top-center of the screen showing minutes and seconds (e.g., '2:30'). The timer counts down from [time] when the level starts. When it reaches 0:00, trigger [what happens -- game over, lose a life, etc.]. The timer should pause when the game is paused."

**Customization tips:**
- Specify exact corners: top-left, top-right, bottom-left, bottom-center, etc.
- Mention font size if defaults are too small: "Use a large, bold font so it's easy to read."
- Say whether elements should have a background/panel or float over the game.

---

## Pause Menu

### Basic Pause Menu
"Add a pause system to my game. When the player presses Escape during gameplay, pause all game action and show a semi-transparent dark overlay over the game world. On top of the overlay, display three buttons stacked vertically and centered: 'Resume' (unpause and continue playing), 'Restart' (reload the current level from the beginning), and 'Quit to Menu' (go back to the main menu). Pressing Escape again should also resume the game."

**Customization tips:**
- Add a "Settings" button if you already have a settings system.
- Mention whether the music should pause, continue, or get quieter.
- Specify if anything should animate when pausing (fade in, slide in).

---

## Game Over / Win Screen

### Game Over Screen
"When the player's health reaches zero, stop all gameplay and show a Game Over screen. Display 'Game Over' in large text at the center of the screen. Below it, show the player's final score: 'Score: [number]'. Below the score, add two buttons: 'Try Again' (restart the current level) and 'Main Menu' (return to the main menu). [Optional: Add 'Your best score: [number]' if you have a high score system.]"

### Level Complete / Win Screen
"When the player [reaches the exit door / collects all coins / defeats the boss], stop gameplay and show a Level Complete screen. Display 'Level Complete!' in large text. Show the player's score and [time taken / coins collected / rating]. Add two buttons: 'Next Level' (load the next level) and 'Main Menu'. If this is the last level, replace 'Next Level' with 'You Win!' or a credits screen."

**Customization tips:**
- Add a star rating: "Show 1 to 3 stars based on the score."
- Add a summary: "Show how many coins collected out of total, time taken."
- Mention transition effects: "Fade in the Game Over screen instead of showing it instantly."

---

## Sound Effects

### Adding Sound Effects to Events
"Add sound effects to my game for the following events:
- When the player jumps: a short, light 'boing' or whoosh sound
- When the player collects a coin: a bright 'ding' or chime sound
- When the player takes damage: a short impact or 'oof' sound
- When the player stomps an enemy: a 'pop' or squish sound
- When the player dies: a sad or deflating sound
Use placeholder sounds or generate simple ones. Each sound should be short (under 1 second) and not too loud."

### Adding a Single Sound Effect Later
"My game already has sound effects for jumping and coin collection. Add one more: when the player [describes the event], play a [describes the sound]. Keep it at the same volume level as the existing sound effects."

**Customization tips:**
- If you have specific sound files, mention them: "Use the file 'coin.wav' in the assets folder."
- Describe the mood: "I want cheerful, arcade-style sounds" or "I want realistic, subtle sounds."

---

## Background Music

### Basic Background Music
"Add looping background music to my game. During gameplay, play a [upbeat/calm/intense/mysterious] music track that loops continuously. The music should start when the level loads. Set the volume so the music is clearly audible but doesn't overpower the sound effects."

### Music for Different Screens
"Add background music to my game with different tracks for different screens:
- Main Menu: a calm, inviting track that loops
- Gameplay: an upbeat, energetic track that loops
- Game Over: a short, sad jingle (does not need to loop)
- Level Complete: a short, triumphant jingle (does not need to loop)
When transitioning between screens, stop the current music and start the new one."

**Customization tips:**
- Ask for a fade: "Fade the music out over 1 second when changing screens instead of stopping abruptly."
- Ask for dynamic music: "Make the music speed up when the timer is below 30 seconds."

---

## Save / Load

### Basic Progress Save
"Add a save system to my game. Save the following data when the player completes a level:
- Which levels have been completed
- The player's highest score on each level
Load this data when the game starts. If no save file exists (first time playing), start with all levels locked except Level 1 and all scores at zero."

### Settings Save
"Save the player's settings when they change them in the Options menu:
- Music volume (0 to 100)
- Sound effects volume (0 to 100)
- Fullscreen on/off
Load these settings when the game launches and apply them immediately. If no settings file exists, use default values: music 80, sound effects 100, fullscreen off."

**Customization tips:**
- Specify where data is saved if you have a preference, or let AI decide.
- Mention what happens if saved data is corrupted: "If the save file can't be loaded, start fresh with default values."
- Ask for a "delete save" option if you want one on the settings screen.

---

## Settings Menu

### Volume Settings
"Add a Settings screen accessible from the main menu's Options button. Include two horizontal sliders: 'Music Volume' (0 to 100, default 80) and 'Sound Effects Volume' (0 to 100, default 100). Changes should take effect immediately so the player can hear the difference. Add a 'Back' button to return to the main menu. Save the settings so they persist between game sessions."

### Full Settings Screen
"Add a Settings screen with the following options:
- Music Volume: a slider from 0 to 100
- Sound Effects Volume: a slider from 0 to 100
- Fullscreen: a toggle switch (on/off)
- Back button to return to the previous screen
All changes apply immediately. Save settings so they persist when the game is closed and reopened."

**Customization tips:**
- Add control remapping if your game uses custom controls.
- Add a "Reset to Defaults" button.
- Specify the layout: "Arrange settings in a single column, left-aligned, with labels on the left and controls on the right."

---

> **Tip:** These templates work best when you also include context about your existing game. Start your prompt with a brief description of what's already built, then paste the template below. For example: "My game is a 2D platformer with player movement, jumping, and coin collection already working. [Paste template here]."
