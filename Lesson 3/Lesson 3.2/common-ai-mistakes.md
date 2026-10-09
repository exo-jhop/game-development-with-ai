# Common AI Mistakes in Game Development: Quick Reference

Use this card when something goes wrong in your game. Find the symptom, read the description, and use the example prompt to ask AI for a fix.

---

## Movement Issues

**Player moves too fast**
What it looks like: The player zooms across the screen with the slightest tap.
How to describe it: "The player moves way too fast. They cross the entire screen in less than a second. I want the player to move at a comfortable walking speed."
Example fix prompt: "Slow the player's movement speed down significantly. Right now the player moves across the whole screen almost instantly. I want it to feel like a normal platformer walking speed."

**Player moves too slowly**
What it looks like: The player inches along and the game feels sluggish.
How to describe it: "The player moves so slowly that it takes several seconds to cross even a short platform. It needs to be faster."
Example fix prompt: "Speed up the player's movement. It currently takes about 5 seconds to cross a short platform. I want the player to feel responsive and quick, but not too fast."

**Player feels floaty**
What it looks like: The player drifts in the air, takes a long time to fall, or slides after you stop pressing a direction.
How to describe it: "The player feels floaty. When I jump, the player hangs in the air too long. When I stop pressing a direction, the player slides forward instead of stopping."
Example fix prompt: "Make the player's movement feel tighter. The player floats in the air too long after jumping and slides forward after I release the movement keys. I want snappy, responsive controls."

**Player gets stuck**
What it looks like: The player stops moving when touching a wall or a platform edge.
How to describe it: "The player gets stuck against walls. When I walk into a wall and then try to jump, the player won't jump. I have to walk away from the wall first."
Example fix prompt: "The player gets stuck when pressing against walls. The player should slide along walls smoothly and still be able to jump while touching a wall."

**Player clips through walls**
What it looks like: The player passes through walls or platforms instead of being stopped by them.
How to describe it: "The player walks right through walls as if they aren't there. The player should be blocked by walls."
Example fix prompt: "The player is passing through walls and platforms instead of being stopped by them. Fix the collision so the player cannot walk or fall through any solid surface."

---

## Physics Issues

**Player falls through the floor**
What it looks like: The player drops through the ground and falls off the screen.
How to describe it: "When the game starts, the player immediately falls through the ground and disappears off the bottom of the screen."
Example fix prompt: "The player falls through the ground at the start of the game instead of standing on it. Fix the collision between the player and the ground so the player stands on solid surfaces."

**Player bounces wrong**
What it looks like: The player bounces off surfaces when they shouldn't, or doesn't bounce when they should.
How to describe it: "When the player lands on a platform, they bounce up slightly instead of just landing. I want them to land and stay on the platform."
Example fix prompt: "The player bounces slightly when landing on platforms. Remove the bounce so the player just lands and stops on the surface."

**Gravity doesn't work**
What it looks like: The player floats in the air or doesn't fall when walking off edges.
How to describe it: "When the player walks off the edge of a platform, they don't fall. They just keep walking on air."
Example fix prompt: "The player doesn't fall when walking off platform edges. The player should fall due to gravity whenever they are not standing on a solid surface."

---

## Collision Issues

**Things walk through each other**
What it looks like: The player or enemies pass through objects that should be solid.
How to describe it: "The enemy walks right through platforms and walls as if they don't exist."
Example fix prompt: "The enemy is passing through walls and platforms. The enemy should be blocked by all solid surfaces, just like the player is."

**Getting stuck inside objects**
What it looks like: The player or an enemy gets trapped inside a wall, platform, or another object.
How to describe it: "Sometimes when I land on a moving platform, the player gets stuck halfway inside it and can't move."
Example fix prompt: "The player sometimes gets stuck inside platforms when landing on them. The player should always land on top of platforms, never get pushed inside them."

**Hitbox too big or too small**
What it looks like: Collisions happen too early or too late compared to what you see on screen.
How to describe it: "I can collect coins from far away without actually touching them" or "I have to be right on top of a coin for it to register."
Example fix prompt: "The coin collection feels off. I can pick up coins without visually touching them. Make the collection area match the visible size of the coin more closely."

---

## UI Issues

**Text not showing**
What it looks like: The score, health, or other text is invisible or missing.
How to describe it: "I can't see the score anywhere on the screen. It should be displayed in the top-left corner."
Example fix prompt: "The score text is not visible on screen. Make sure it displays in the top-left corner with a large, readable font in white color."

**Buttons don't work**
What it looks like: Clicking a button does nothing.
How to describe it: "I click the Start Game button on the main menu and nothing happens. It should take me to the game level."
Example fix prompt: "The Start Game button on the main menu doesn't respond when I click it. It should load the game level when clicked."

**Score doesn't update**
What it looks like: The score display exists but stays at zero no matter what.
How to describe it: "The score shows '0' in the corner, and when I collect coins, the score stays at 0. The coins disappear, but the number doesn't change."
Example fix prompt: "The score display stays at 0 even when I collect coins. Each coin collected should add 10 to the score, and the display should update immediately."

**UI moves with the camera**
What it looks like: HUD elements scroll off screen when the player moves.
How to describe it: "The score and health display move off screen when I walk to the right. They should stay fixed in the corners of the screen."
Example fix prompt: "The HUD elements (score and health) scroll off screen when the camera follows the player. They should be fixed to the screen and always visible, no matter where the player is."

---

## Audio Issues

**Sound doesn't play**
What it looks like: You perform an action that should make a sound, but it's silent.
How to describe it: "When I collect a coin, no sound plays. I expected a pickup sound."
Example fix prompt: "The coin pickup sound is not playing when I collect coins. Make sure a sound effect plays every time the player collects a coin."

**Sound plays at the wrong time**
What it looks like: A sound triggers when it shouldn't, or on the wrong event.
How to describe it: "The jump sound plays when I land on the ground, not when I press the jump button."
Example fix prompt: "The jump sound effect is playing when the player lands, not when the player jumps. Move the sound trigger so it plays at the moment the player starts jumping."

**Sound is too loud or too quiet**
What it looks like: One sound overwhelms everything else, or you can barely hear it.
How to describe it: "The coin sound is so loud it drowns out the background music. It needs to be quieter."
Example fix prompt: "The coin pickup sound effect is much louder than everything else. Turn it down so it's at a comfortable volume relative to the background music."

---

## Game Flow Issues

**Can't restart the level**
What it looks like: After dying or completing a level, there's no way to play again.
How to describe it: "When I die, the Game Over screen appears but there's no way to restart. I have to close the game and reopen it."
Example fix prompt: "Add a Retry button to the Game Over screen that restarts the current level from the beginning."

**Win condition doesn't trigger**
What it looks like: You complete the objective but nothing happens.
How to describe it: "I reached the exit door but nothing happened. The level should end and show a 'Level Complete' message when I reach the door."
Example fix prompt: "Reaching the exit door doesn't trigger anything. When the player touches the exit door, show a Level Complete screen."

**Wrong screen loads**
What it looks like: Clicking a button takes you to the wrong place.
How to describe it: "When I click Retry on the Game Over screen, it takes me to the main menu instead of restarting the level."
Example fix prompt: "The Retry button on the Game Over screen is loading the main menu instead of restarting the level. Fix it so Retry restarts the current level."

---

> **Tip:** When you report a problem to AI, always include (1) what you did, (2) what happened, and (3) what should have happened. This three-part description makes it much easier for AI to find and fix the issue.
