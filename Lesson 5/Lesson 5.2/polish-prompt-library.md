# Polish Prompt Library

A ready-to-use collection of prompts for directing AI to add juice and polish to your game. Copy these, customize the details in brackets, and paste them into your AI conversation.

> **How to use this library:** Find the effect you want, copy the prompt, replace anything in [brackets] with your specific details, and send it to AI. After each change, test it and adjust with follow-up directions like "make it stronger," "make it subtler," or "make it last longer."

---

## Screen Effects

### Screen Shake on Damage
"Add screen shake when the player takes damage. The screen should jolt randomly for [0.2 seconds], moving about [4 pixels] in random directions. It should feel like a quick impact, not an earthquake."

**Customization:** Increase the pixel amount for bigger hits. Decrease duration for snappier feel. For boss attacks, try longer shake with more intensity.

### Screen Shake on Heavy Landing
"When the player lands after falling more than [3 tiles], shake the screen slightly. The higher the fall, the bigger the shake. A short fall should barely shake. A huge fall should be a strong jolt."

### Screen Flash on Hit
"Flash the entire screen white for [1 frame / one-thirtieth of a second] when the player successfully hits an enemy. It should be nearly instant — just a quick flash that emphasizes the impact."

### Freeze Frame on Big Hit
"When the player defeats a [boss / mini-boss / special enemy], freeze all game action for [0.3 seconds] right at the moment of the killing blow. Then resume and play the death animation. The pause makes the final hit feel powerful."

### Slow Motion on Death
"When the player dies, slow everything down to [half speed] for [0.5 seconds] before playing the death animation. It gives the player a moment to see what killed them."

### Camera Zoom on Boss Encounter
"When the player enters the boss room, zoom the camera in slightly on the boss for [1 second], then zoom back out to normal. It builds tension and draws attention to the boss."

---

## Player Feedback

### Invincibility Flash After Damage
"After taking damage, make the player character flash rapidly (alternate between visible and invisible) for [2 seconds]. During this flashing period, the player cannot take any more damage. This gives them time to recover."

### Knockback on Damage
"When the player takes damage, push them backward away from the source of damage. They should slide about [2 tiles] in the opposite direction. The knockback should feel quick, not floaty."

### Squash and Stretch on Jump
"Add squash and stretch to the player's jump. When they launch off the ground, briefly squash the character (make it slightly wider and shorter). At the peak of the jump, stretch it slightly (taller and thinner). On landing, squash it again briefly. Keep it subtle — about [10-15%] change in proportions."

### Dust Particles on Landing
"When the player lands after a jump, spawn [3-5] small dust or dirt particles at their feet. The particles should puff outward to the left and right and fade out quickly, within about [0.3 seconds]."

### Run Trail Particles
"While the player is running, spawn tiny puff particles behind their feet every [0.1 seconds]. The puffs should fade out quickly and not clutter the screen."

### Coyote Time
"Give the player a small grace period after walking off a platform edge. For [0.1 seconds] after leaving the edge, they should still be able to jump as if they were on the ground. It makes platforming feel more forgiving without being visible to the player."

### Jump Buffering
"If the player presses the jump button while in the air but within [0.1 seconds] of landing, the jump should trigger as soon as they touch the ground. This prevents the frustrating feeling of pressing jump 'too early.'"

### Death Animation
"When the player dies, instead of instantly resetting, play a short animation: the player character [shrinks and spins / flips upward then falls off-screen / explodes into particles / fades to a ghost and floats up]. The animation should take about [0.5-1 second] before the respawn."

### Respawn Effect
"When the player respawns at a checkpoint, don't just make them appear. Have them [fade in from transparent / drop in from above with a small bounce / materialize with a sparkle effect]. It should take about [0.3 seconds]."

---

## Collectible Feedback

### Coin Spin Animation
"Make all coins in the level spin continuously in place, rotating around their vertical axis. One full rotation should take about [1 second]. It makes them look shiny and catches the player's eye."

### Collectible Float
"Make collectibles gently float up and down in place, bobbing about [half a tile] in height. The bob should be smooth and slow, taking about [2 seconds] for a full up-and-down cycle."

### Pickup Particle Burst
"When the player collects a [coin / gem / star], create a burst of [5-8] small [golden / colored] particles at the collection point. The particles should fly outward in all directions and fade out within [0.3 seconds]."

### Score Popup Text
"When the player collects a [coin], show the text '[+10]' floating up from the collection point. The text should drift upward about [1 tile] and fade out over [0.5 seconds]. Use a [bold / bouncy] font style."

### Satisfying Collection Sound
"Play a short, bright [pop / chime / ding] sound when the player collects a [coin]. The sound should feel satisfying and crisp, not dull."

### Ascending Pitch on Rapid Collection
"If the player collects multiple [coins] in quick succession (within [0.5 seconds] of each other), make each collection sound slightly higher in pitch than the last. Reset the pitch back to normal after a pause. It creates a satisfying musical escalation."

### Magnetic Collectibles
"When the player gets within [2 tiles] of a [coin], the [coin] should smoothly slide toward the player and get collected automatically. The pull should accelerate — slow at first, fast at the end. It makes collecting things feel generous and smooth."

---

## Enemy Feedback

### Hit Flash
"When an enemy takes damage, make it flash solid white for [0.05 seconds / about 2 frames]. It should be nearly instant — just enough for the player to see that the hit connected."

### Hit Knockback
"When an enemy takes damage, push it back slightly in the direction away from the attack. About [half a tile] of knockback. It should feel like the hit has real force behind it."

### Bounce on Stomp
"When the player jumps on an enemy to defeat it, bounce the player upward slightly — about [half their normal jump height]. It feels like a trampoline and rewards the player for the stomp."

### Death Smoke Poof
"When an enemy is defeated, replace it with a small cloud of [smoke / dust / sparkle] particles that expand outward and fade out over [0.3 seconds]. Don't just make the enemy vanish."

### Death Item Drop
"When an enemy is defeated, have it drop [a coin / a small health pickup] that bounces once on the ground before settling. It rewards the player for engaging with enemies."

### Patrol Idle Bounce
"Give patrolling enemies a gentle bounce animation while they walk — they should bob up and down slightly with each step. It makes them look more alive and less like sliding blocks."

### Alert Exclamation Mark
"When an enemy detects the player (enters chase or attack mode), show a small exclamation mark (!) above the enemy's head for [0.5 seconds]. It gives the player a split-second warning."

### Enemy Anticipation
"Before an enemy attacks, have it [wind up / pull back / crouch / glow] for [0.3 seconds]. It telegraphs the attack and gives the player a chance to react."

---

## Environment Polish

### Parallax Background
"Add a background behind the level that scrolls slower than the foreground. Use [2-3] layers: a distant [sky/mountain] layer that barely moves, a mid-distance [trees/buildings] layer that moves slowly, and near [bushes/clouds] layer that moves at medium speed. It creates depth."

### Floating Platforms
"Make the floating platforms gently bob up and down, about [a quarter tile] of movement over [3 seconds]. It makes the environment feel alive rather than static."

### Animated Background Elements
"Add [clouds / birds / leaves / fireflies] in the background that slowly drift across the screen. They shouldn't interact with gameplay — they're just atmosphere."

### Environmental Particles
"Add subtle particle effects to the environment: [floating dust motes in a cave / falling leaves in a forest / snow in a winter level / embers near lava]. They should be in the background and not distract from gameplay."

### Water Shimmer
"If there's water in the level, make the surface gently shimmer and ripple. When the player jumps in or out, create a splash particle effect."

---

## Audio Polish

### Pitch Variation on Repeated Sounds
"When the same sound effect plays multiple times in quick succession (like footsteps or coin pickups), randomly vary the pitch slightly each time — up to [10%] higher or lower. It prevents the sound from becoming annoying and repetitive."

### Volume Ducking
"When an important sound plays (like the player taking damage or defeating a boss), briefly lower the volume of all other sounds for [0.2 seconds]. It makes the important sound stand out."

### Ambient Background Sound
"Add a subtle ambient sound loop to the level: [wind for outdoor areas / dripping water for caves / distant crowd noise for cities / eerie hum for space stations]. Keep it quiet — it should be felt more than heard."

### Footstep Sounds
"Add footstep sounds when the player runs. The sound should match the surface: [stone taps on stone floors / soft thuds on dirt / splashes on water / metallic clanks on metal platforms]. Vary the pitch slightly for each step."

### Music Intensity
"When the player enters a combat encounter or boss fight, crossfade the background music to a [more intense / faster / louder] version. When combat ends, fade back to the normal music."

---

## UI Polish

### Score Counter Animation
"When the score increases, don't just update the number. Make the score counter [briefly grow larger then shrink back / pulse with a glow / shake slightly]. The animation should take about [0.2 seconds]. For big score gains, make the effect more dramatic."

### Health Bar Smooth Decrease
"When the player takes damage, don't instantly reduce the health bar. Show two layers: the actual health drops instantly (red), but a second layer (yellow or white) slowly decreases to match over [0.5 seconds]. It helps the player see how much damage they took."

### Screen Transition
"When moving between levels or after dying, add a [fade to black / circle wipe / pixelate dissolve] transition instead of an instant cut. The transition should take about [0.5 seconds] each way — half a second out, half a second in."

### Damage Indicator
"When the player takes damage, briefly flash a red vignette (darkened, reddish edges) around the screen border for [0.3 seconds]. It's an immediate visual signal that the player was hurt."

### Health Bar Shake
"When the player's health gets below [25%], make the health bar gently pulse or shake to signal danger."

---

> **Remember:** Don't apply everything at once. Pick the effects that matter most for your game, add them one at a time, and test after each addition. Sometimes less is more — too much juice can be distracting. If an effect feels like too much, tell AI: "That's too intense, dial it back by half."
