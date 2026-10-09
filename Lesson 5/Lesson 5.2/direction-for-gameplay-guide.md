# Lesson 5.2: Directing AI for Enemies, Hazards & Game Feel

## What You'll Learn

In this lesson, you'll learn how to describe enemy behaviors, hazards, and game polish to AI using plain language. You won't write a single line of code. Instead, you'll learn to communicate **what things should do and how they should feel** so that AI can implement them for you. By the end, you'll be able to take a basic game and direct AI through a complete "make it feel amazing" polish pass.

---

## Part 1: Describing Enemy Behaviors to AI

The key to good enemy descriptions is **behavior, not implementation**. You don't need to know how enemies work under the hood. You need to describe what the player sees them do.

### The Formula for Enemy Descriptions

A good enemy description answers these questions:
1. **What does it look like?** (shape, size, color — even rough descriptions work)
2. **What does it do when the player is far away?** (idle behavior)
3. **What does it do when the player is nearby?** (alert/chase behavior)
4. **How does the player defeat it?** (vulnerability)
5. **How does it hurt the player?** (damage method)

### Example Enemy Descriptions

Here are descriptions you could give directly to AI:

**Basic Patrol Enemy**
"A slime enemy that walks back and forth between two walls. It moves slowly and changes direction when it hits a wall. If the player jumps on top of it, it dies. If the player touches it from the side, the player takes damage."

**Ranged Enemy**
"A flying enemy that hovers in place about 3 tiles above the ground. Every 3 seconds, it shoots a small projectile downward toward the player's current position. The projectile disappears when it hits the ground. The player can defeat it by jumping up and landing on it, or by hitting it with a thrown object."

**Chasing Enemy**
"A wolf enemy that stands still until the player gets within 5 tiles of it. Then it starts running toward the player at 1.5 times the player's speed. If the player gets far enough away (more than 8 tiles), the wolf gives up and walks back to its starting position. The player can defeat it by jumping on it from above."

**Multi-Phase Boss**
"A boss enemy that has 3 phases:
- Phase 1: It walks slowly toward the player. When it reaches the player, it swipes with its arm. The player can jump over it and hit a glowing weak spot on its back.
- Phase 2: At half health, it starts jumping into the air and slamming the ground, creating a shockwave the player must jump over. The weak spot is now on its head, so the player must land on top of it after it slams.
- Phase 3: At one quarter health, it starts throwing boulders across the screen. The player must dodge the boulders and wait for the boss to get tired (it pauses for 2 seconds after throwing 3 boulders), then jump on its head."

> **Tip:** You don't need to describe every detail perfectly the first time. Start with the basic behavior, test it, then refine. "Make the wolf faster" or "make the boss pause longer between attacks" are perfectly valid follow-up directions.

---

### Making Enemies Feel Distinct

If all your enemies just walk back and forth, your game feels flat. Think about giving each enemy a unique behavior that changes how the player approaches them:

- **Enemies that react to the player:** "This enemy turns to face the player at all times, even though it doesn't move."
- **Enemies with patterns:** "This enemy jumps three times in a row, then rests for 2 seconds."
- **Enemies that work together:** "When one of these enemies spots the player, all nearby enemies of the same type start moving toward the player."
- **Enemies that flee:** "This enemy runs away from the player. It carries a key the player needs."
- **Enemies with shields:** "This enemy has a shield on its front. The player can only damage it from behind."

---

## Part 2: Describing Hazards to AI

Hazards are environmental dangers — things in the level itself that can hurt or challenge the player. They don't think or chase; they just exist and follow rules.

### Static Hazards

These don't move or change. They're always dangerous.

- "Spikes on the floor that kill the player instantly on touch."
- "A pool of lava that covers the bottom of the pit. Touching it kills the player."
- "Thorny vines on the walls that damage the player if they try to wall-jump off that surface."

### Timed Hazards

These follow a repeating cycle.

- "Fireballs that launch from the left wall every 2 seconds and travel to the right wall, then disappear."
- "A row of spikes that pops up from the floor for 1 second, then retracts for 2 seconds, repeating forever."
- "A swinging blade that swings back and forth like a pendulum over a narrow walkway."

### Triggered Hazards

These activate in response to the player.

- "A platform that starts falling 1 second after the player steps on it, then respawns in its original position after 3 seconds."
- "An arrow trap on the wall that fires when the player walks in front of it."
- "A boulder that starts rolling when the player picks up the treasure, chasing them back through the level."

### Combination Hazards

The most interesting challenges combine multiple hazard types.

- "A corridor with timed fireballs from the left and spike pits on the floor. The player must time their jumps to avoid both."
- "A vertical shaft with swinging blades on alternating sides and crumbling platforms as the only footholds."

---

## Part 3: Visual Telegraphing

Telegraphing means giving the player a warning before something dangerous happens. Without it, deaths feel unfair. With it, deaths feel like the player's mistake — which is what you want.

### Why Telegraphing Matters

If a platform suddenly falls with zero warning, the player feels cheated. If the platform shakes and cracks for a full second before falling, the player thinks "I should have jumped sooner!" Same death, completely different emotional response.

### How to Direct AI to Add Telegraphing

Here are prompt patterns for common telegraphs:

**Visual Warning:**
- "Before the platform falls, make it shake for 1 second so the player knows to jump."
- "Before the spikes come up, make the floor flash red twice."
- "Before the enemy charges, make it crouch down and flash for half a second."
- "Before the boss slams the ground, make it raise its arms above its head for 1 second."

**Audio Warning:**
- "Play a rumbling sound half a second before the platform falls."
- "Play a charging-up sound when the enemy is about to shoot."
- "Play a warning chime when the player enters the range of a trap."

**Environmental Warning:**
- "Put cracks on the floor before a spike trap so the player learns to watch for them."
- "Put scorch marks on the wall where fireballs will come from."
- "Make the area around a trap slightly darker so it feels ominous."

> **Tip:** A good rule of thumb is to always telegraph for at least half a second before a hazard activates. For big, deadly hazards, telegraph for a full second or more.

---

## Part 4: Game Juice and Polish

"Juice" is the game design term for all the little effects and feedback that make a game feel satisfying. A game without juice feels flat and lifeless, like clicking buttons on a spreadsheet. A game with juice feels responsive, impactful, and fun — even if the core mechanics are the same.

The good news: adding juice is one of the easiest things to direct AI to do, because you can describe exactly what you want to happen.

### Screen Effects

These affect the whole screen to emphasize big moments.

- **Screen shake:** "Add a small screen shake when the player takes damage. Just a quick jolt, maybe 3-4 pixels of movement for a quarter of a second."
- **Screen shake on landing:** "Add a very subtle screen shake when the player lands from a high fall. Bigger fall, bigger shake."
- **Screen flash:** "Flash the screen white for one frame when the player hits an enemy. It should feel like an impact."
- **Freeze frame:** "When the player defeats a boss, freeze the game for half a second before the death animation plays. It makes the final hit feel powerful."
- **Slow motion:** "When the player is about to die, slow everything down to half speed for 1 second."

### Player Feedback

These are effects on or around the player character.

- **Invincibility flash:** "After the player takes damage, make them flash (alternate between visible and invisible) for 2 seconds. During this time, they can't take damage again."
- **Knockback:** "When the player takes damage, push them backward away from whatever hit them. They should slide back about 2 tiles."
- **Squash and stretch:** "When the player jumps, squash them slightly (wider, shorter) on launch and stretch them slightly (taller, thinner) at the peak. When they land, squash them again briefly."
- **Dust particles:** "Add small dust particles when the player lands after a jump."
- **Run particles:** "Add tiny puffs behind the player's feet when they're running."
- **Death animation:** "When the player dies, have them shrink, spin, and fade out over half a second instead of just disappearing."

### Collectible Feedback

These make picking things up feel satisfying.

- **Coin spin:** "Make coins spin continuously in place, like they're rotating on an axis."
- **Float animation:** "Make collectibles float up and down gently, about half a tile, so they catch the player's eye."
- **Pickup burst:** "When the player collects a coin, create a small burst of golden particles."
- **Score popup:** "When the player collects a coin, show '+10' floating up from where the coin was and fading out."
- **Satisfying sound:** "Play a bright, short pop sound when collecting a coin. If the player collects several in a row quickly, make each one slightly higher pitched."
- **Magnetism:** "When the player gets within 2 tiles of a coin, the coin should slide toward the player and get collected automatically. It feels generous and satisfying."

### Enemy Feedback

These make combat feel impactful.

- **Hit reaction:** "When an enemy takes damage, make it flash white for a tenth of a second and bounce back slightly."
- **Death effect:** "When an enemy dies, it should poof into a small cloud of smoke particles. Don't just make it disappear."
- **Patrol animation:** "Give idle enemies a simple bouncing animation so they look alive even when standing still."
- **Alert indicator:** "When an enemy spots the player, show a small exclamation mark above its head for half a second."

---

## Part 5: The Polish Pass

A "polish pass" is when you take a working game and systematically make every interaction feel better. This is where good games become great games. Here's how to do it:

### Step 1: List Every Interaction That Feels Flat

Play through your game slowly and write down every moment something happens without satisfying feedback:

- "When I jump, nothing happens except the character goes up."
- "When I land, it just stops. No impact."
- "When I collect a coin, it just vanishes."
- "When I hit an enemy, it just disappears."
- "When I take damage, there's no reaction."
- "When I die, the screen just resets."
- "When I finish the level, nothing celebrates."

### Step 2: Describe the Feedback You Want

For each flat moment, describe what would make it feel right:

- "Jumping should have a small puff of dust and a squash animation."
- "Landing should have a thud sound, dust particles, and a brief squash."
- "Coins should pop with particles and a satisfying chime."
- "Enemies should flash, bounce back, and explode into particles when defeated."
- "Damage should have a screen shake, player knockback, and a flash."
- "Death should have a slow-motion moment and a dramatic fade."
- "Level completion should have fireworks or a fanfare."

### Step 3: Give AI One Task at a Time

Don't dump all the polish requests at once. Give them one at a time so you can test each one:

1. "Add a squash-and-stretch animation to the player's jump."
2. *Test it. Does it look right? Too much? Too little? Adjust.*
3. "Add dust particles when the player lands."
4. *Test it. Good? Move on.*
5. "Add screen shake when the player takes damage."
6. *Test it. Too intense? "Make the screen shake smaller and shorter."*

This one-at-a-time approach gives you control and prevents problems from stacking up.

---

## Before and After: Polish Prompt Examples

### Before: Basic Coin Collection
**What happens:** Player touches coin. Coin disappears. Score goes up.
**What it feels like:** Nothing. The player barely notices.

**Polish prompts in sequence:**
1. "Make the coin spin slowly in place."
2. "Make the coin float gently up and down."
3. "When collected, show a particle burst of golden sparkles."
4. "When collected, show '+10' text floating up and fading out."
5. "Play a short, bright chime sound on collection."
6. "If collecting multiple coins quickly, make each chime slightly higher pitched."

**After:** The coin feels alive, and collecting it is a tiny celebration every time.

---

### Before: Basic Enemy Defeat
**What happens:** Player jumps on enemy. Enemy disappears.
**What it feels like:** Unsatisfying. Did I even do something?

**Polish prompts in sequence:**
1. "When the player lands on the enemy, freeze the game for 2 frames."
2. "Make the enemy flash white, then burst into smoke particles."
3. "Bounce the player slightly upward after defeating the enemy."
4. "Play a satisfying squish sound effect."
5. "Add a small screen shake on enemy defeat."

**After:** Every enemy defeat feels like a small victory.

---

### Before: Basic Player Death
**What happens:** Player touches hazard. Screen resets to checkpoint.
**What it feels like:** Jarring and confusing.

**Polish prompts in sequence:**
1. "When the player dies, slow everything to half speed for half a second."
2. "Make the player character shrink, spin, and fade out."
3. "Play a descending tone sound effect."
4. "Fade the screen to black over half a second."
5. "Fade back in at the checkpoint."

**After:** Death is clear, dramatic, and gives the player a moment to process what happened.

---

## Activity: The Polish Pass Challenge

Take your game from the previous lesson (or any basic game you've built with AI) and direct AI through a complete polish pass:

1. **Play through** the game and list at least 5 interactions that feel flat
2. **Write a feedback description** for each one (what should happen instead)
3. **Direct AI** to implement each polish effect, one at a time
4. **Test each change** and adjust if needed ("too much shake," "not enough particles," "sound is too loud")
5. **Play the full game** again and appreciate the difference

> **Tip:** Save your list of polish descriptions. Over time, you'll build your own library of "go-to" juice effects that you can apply to any game you direct AI to build.

---

## Lesson Checklist

Before moving on, make sure you can:

- [ ] Describe an enemy's behavior to AI using plain language (what it looks like, idle behavior, alert behavior, vulnerability, damage method)
- [ ] Describe at least 3 types of hazards (static, timed, triggered) with clear behavior descriptions
- [ ] Explain what visual telegraphing is and why it matters for fair game design
- [ ] Direct AI to add telegraphing to a hazard or enemy attack
- [ ] Name at least 5 types of game juice/polish effects
- [ ] Walk through the 3-step polish pass process (list flat moments, describe feedback, implement one at a time)
- [ ] Successfully direct AI to add polish to a basic game interaction
- [ ] Describe enemy behaviors, hazards, and polish effects without using any technical or code terminology
