# Lesson 3.2: Iterating When AI Gets It Wrong

## What You'll Learn

- Why AI mistakes are normal and expected, not a sign of failure
- How to identify the three types of AI mistakes
- How to describe problems to AI without reading any code
- When to ask AI to fix something versus when to start fresh
- How to stack changes without AI overwriting your previous work
- How to escalate when simple re-prompting isn't working

---

## The Iteration Mindset

Here's a truth that will save you a lot of frustration: **the first attempt is almost never the final product.**

When you ask AI to add a feature to your game, think of the result as a first draft. Sometimes the draft is great and you move on. Sometimes it needs a revision. Sometimes you throw it out and try a different approach.

This is completely normal. Professional developers iterate constantly. The difference is that with AI, your iterations happen through conversation instead of through editing files. Your job is to test the result, identify what's wrong, and describe the problem clearly so AI can fix it.

The students who succeed with AI aren't the ones who get perfect results on the first try. They're the ones who get comfortable saying "that's not quite right, here's what I need instead."

---

## Three Types of AI Mistakes

When something goes wrong, it usually falls into one of these categories:

### Type 1: It Does the Wrong Thing

You asked for one thing, and AI did something else entirely.

- You asked for enemies that patrol, but they stand still.
- You asked for a main menu, but it created a settings screen.
- You asked for coins, but it added health pickups.

**What to do:** Re-read your original prompt. Was it ambiguous? Could AI have interpreted it differently? Rewrite the prompt with more specific language and try again.

### Type 2: It Does the Right Thing Badly

AI understood what you wanted, but the execution is off.

- The jumping works, but it feels floaty and weird.
- The enemy patrols, but it jitters back and forth instead of moving smoothly.
- The score updates, but it's in the wrong corner or too small to read.
- The coins are there, but they're positioned inside the ground where the player can't reach them.

**What to do:** Describe the specific behavior problem. "The jumping works, but the player goes too high and falls too slowly. I want shorter, snappier jumps." Give AI a clear picture of what "right" looks like.

### Type 3: It Breaks Something That Used to Work

The new feature works, but something from a previous task is now broken.

- You added enemies, and now the player can't jump.
- You added a menu, and now the game crashes when you start a level.
- You added sound effects, and now coin collection doesn't work.

**What to do:** Tell AI exactly what broke and when it broke. "After adding the enemy, the player can no longer jump. Jumping was working before we added the enemy. Please fix jumping without removing the enemy."

---

## Describing Problems Without Reading Code

You don't need to look at code to describe a problem. You just need to play the game and describe what you see.

Focus on **behavior**, not implementation. You're describing what happens when you play, not what you think the code is doing.

Here are examples of strong problem descriptions:

**Movement issues:**
- "When I press the right arrow key, the player moves to the right, but it's way too fast. It crosses the entire screen in less than a second."
- "The player moves left and right fine, but when I press the jump button, nothing happens at all."
- "The player can jump, but if I hold the jump button, it keeps going up forever instead of reaching a peak and coming back down."

**Collision issues:**
- "The player falls right through the platforms instead of landing on them."
- "The player gets stuck inside walls when moving toward them. I have to jump to get unstuck."
- "The enemy walks through walls instead of turning around at the edge of the platform."

**Game logic issues:**
- "The coin disappears when I touch it, but the score stays at zero. The score counter is there, it just doesn't change."
- "When I die, the Game Over screen shows up, but the Retry button doesn't do anything when I click it."
- "The win condition triggers even when I haven't collected all the coins. It should only trigger when all coins are collected."

**Visual issues:**
- "The score text is in the top-left corner, but it overlaps with the health display. They need to be spaced apart."
- "The player character is so small that I can barely see it. It needs to be at least twice as big."
- "The background is the same color as the platforms, so I can't tell where the platforms are."

> **Tip:** The more specific your description, the better AI can fix the problem. "It doesn't work" is unhelpful. "The player can move left but not right, and pressing jump makes the player teleport to the top of the screen" is useful.

---

## The Re-Prompt vs. Refine Decision

When something goes wrong, you have two choices:

### Option A: Refine (Ask AI to Fix It)

Use this when:
- The feature mostly works but needs adjustment
- The problem is small and specific
- You can clearly describe what's wrong and what you want instead
- Previous features are still working

Example: "The jumping works, but the player jumps too high. Make the jump about half as high."

### Option B: Re-Prompt (Start That Feature Over)

Use this when:
- The feature is fundamentally wrong
- AI seems confused about what you wanted
- Multiple things are broken and you can't untangle them
- You realize your original prompt was unclear and you want to try a completely different description

Example: "Let's try the enemy again from scratch. Forget the previous attempt. I want a simple enemy: a red square that slides back and forth horizontally on the same platform where it starts. It should move slowly and smoothly, reversing direction when it reaches the edge of the platform."

There's no shame in starting a feature over. Sometimes it's faster to re-prompt clearly than to fix a confusing result.

---

## Providing Context from Previous Attempts

When you're iterating on a feature, AI needs to know what happened before. Don't just describe the problem -- describe the history.

**Good iteration prompt:**
"I asked you to add jumping to my platformer. Here's what happened: the player can now press spacebar and goes up, but they never come back down. They just float up and off the screen. The player needs gravity so they come back down after jumping."

**Better iteration prompt:**
"I asked you to add jumping to my platformer. The jump launches the player upward, but there's no gravity pulling them back down. The player floats up and off the top of the screen. I need the player to jump up to about 3 tiles high, then fall back down due to gravity, and land on whatever platform is below them."

Include:
- What you originally asked for
- What happened (the behavior you observed)
- What should have happened instead
- Any additional detail that might help AI understand what went wrong

---

## The Escalation Ladder

When a fix doesn't work on the first try, follow this ladder:

**Level 1: Describe the symptom.**
"The player can't jump."

**Level 2: Add more context.**
"The player can't jump. I press spacebar and nothing happens. The player used to be able to jump before I added the enemy feature. Movement left and right still works fine."

**Level 3: Ask AI to review its own work.**
"The player still can't jump after your fix. Can you check all the pieces involved in jumping and make sure nothing is interfering? The player should jump when I press spacebar, go up about 3 tiles, and fall back down with gravity."

**Level 4: Try a different approach.**
"We've tried fixing the jump three times and it's still not working. Let's try a completely different approach to jumping. Rebuild the jump feature from scratch without changing anything else in the game."

**Level 5: Start fresh.**
"The game has gotten into a state where I can't tell what's working and what's broken. Let's start this level over. Here's what I need: [full description of the game as it should be at this point]."

Most problems get resolved at Level 1 or 2. If you find yourself at Level 4 or 5, that's OK -- it happens. It's still faster than trying to fix things yourself.

---

## Stacking Changes: Adding Features on Top of Features

As your game grows, each new feature needs to work alongside all the previous ones. Here's how to prevent AI from accidentally overwriting your earlier work.

**Always mention what exists.** Start every prompt with a summary of what's already in the game. "My game currently has player movement, jumping, coins with scoring, and one patrolling enemy."

**Be explicit about what to keep.** "Add a pause menu. Do NOT change anything about the player, enemies, or coins. Only add the pause functionality."

**Test everything after each addition.** After AI adds a feature, don't just test the new feature. Test everything. Walk around. Jump. Collect a coin. Touch an enemy. Open the menu. If something broke, catch it now while it's easy to fix.

**Keep your task list updated.** After each completed task, note what was built and whether it's working. This becomes your running context.

---

## Real Examples: 3-Round Iteration Cycles

### Example 1: Fixing Floaty Jumping

**Round 1 -- Original prompt:**
"Add jumping to the player character with the spacebar."

**Result:** The player jumps, but it's very floaty. The player goes up slowly and comes down slowly, like they're on the moon.

**Round 2 -- First fix:**
"The jumping works, but it feels floaty. The player goes up slowly and comes down slowly. I want the jump to feel snappy: quick rise, fast fall. Like a normal platformer jump, not a moon jump."

**Result:** Better, but now the jump is so fast that it's hard to control. The player barely gets off the ground.

**Round 3 -- Second fix:**
"The jump is too short now. The player barely leaves the ground. I want the player to jump about 3 tiles high with a quick, snappy feel. The rise should be fast, and the fall should be slightly faster than the rise so it feels responsive."

**Result:** Jump feels great. Move to next task.

### Example 2: Fixing Enemy Behavior

**Round 1 -- Original prompt:**
"Add an enemy that patrols back and forth on a platform."

**Result:** The enemy exists but doesn't move. It just sits on the platform.

**Round 2 -- Re-describe:**
"The enemy is on the platform but it's not moving at all. It should continuously slide back and forth. It starts moving to the right, and when it reaches the right edge of the platform, it turns around and moves to the left, and keeps going back and forth forever."

**Result:** The enemy moves but falls off the edge of the platform instead of turning around.

**Round 3 -- More specific:**
"The enemy moves to the right, but when it reaches the edge of the platform, it falls off instead of turning around. The enemy needs to detect the edge of the platform and reverse direction BEFORE it falls off. It should never leave the platform."

**Result:** Enemy patrols correctly. Move to next task.

### Example 3: Fixing a Broken Feature After Adding Something New

**Round 1 -- Adding sound effects:**
"Add a coin pickup sound effect when the player collects a coin."

**Result:** Sound plays when collecting coins, but now the coins don't disappear anymore. They just play the sound and stay on screen.

**Round 2 -- Report the break:**
"The sound effect plays when I touch a coin, but now the coins don't disappear. Before adding the sound, coins would disappear when touched. The coins need to both play the sound AND disappear when collected."

**Result:** Coins play the sound and disappear. Score still updates correctly. Issue fixed.

---

## When to Start Over

Sometimes iteration isn't working and you need a fresh start. Here are the signs:

- You've gone back and forth more than 4-5 times on the same feature
- Multiple features are broken and you can't figure out which fix broke what
- AI seems confused and keeps making the same mistake despite different prompts
- The game is in a state you can't clearly describe anymore

Starting over doesn't mean losing everything. You still have your task list, your context notes, and the experience of knowing what prompts work and what doesn't. The second attempt is almost always faster than the first because you know what you want.

---

## Checklist

Before moving to Lesson 3.3, make sure you can:

- [ ] Identify which type of mistake AI made (wrong thing, right thing done badly, broke something)
- [ ] Describe a game problem using only what you see when you play, not code
- [ ] Decide whether to ask for a fix or re-prompt from scratch
- [ ] Write an iteration prompt that includes what you originally asked, what happened, and what you want instead
- [ ] Follow the escalation ladder when simple fixes aren't working
- [ ] Test ALL existing features after adding a new one, not just the new feature
- [ ] Recognize when it's time to start a feature or a whole section over
