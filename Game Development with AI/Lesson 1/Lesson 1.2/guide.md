# Lesson 1.2: Diagnosing Bugs with AI

## What You'll Learn

Bugs are a normal part of game development. This lesson teaches you how to use AI to find and fix them — not by reading code line by line, but by describing what you see.

By the end, you'll be able to:
- Play a game and notice when something feels wrong
- Describe the problem to an AI tool clearly enough to get a useful fix
- Apply the fix and verify it works

---

## Part 1: Live Demo — `platformer-hazard-demo`

Your instructor will play a simple platformer live. The player walks into a spike hazard and their health drains almost instantly — way too fast to react.

**The bug:** The hazard deals damage every physics frame (~60 times per second) instead of once per contact. A 10-damage hazard becomes 600 damage per second.

Watch how the instructor:
1. Notices the symptom (health drops too fast)
2. Describes it to an AI tool using what they see, not what they guess
3. Gets a fix and applies it
4. Tests to confirm it works

**Key takeaway:** You don't need to know what's wrong in the code. You just need to describe what you see happening vs. what should happen.

---

## Part 2: Hands-on Exercise — `visual-bug-hunt`

Now it's your turn. You'll get one of three game variants. Each has exactly one bug.

### Instructions

1. Open your assigned variant in Godot 4 (your instructor will tell you which one: A, B, or C)
2. Press F5 to play
3. Move around and jump — something will feel wrong
4. Describe what feels wrong to your AI tool (use what you learned in Lesson 1.1)
5. Ask the AI to help you find and fix the bug
6. Apply the fix and test again

### Tips

- **Don't read the code first.** Play the game and describe the symptom.
- **Be specific.** "It feels weird" won't help. "The player moves so fast I can't control it" will.
- **Compare to what's normal.** If you're not sure, say "I expected the player to move at a normal walking speed, but they fly across the screen."

### What You're Looking For

Each variant has a different bug. You won't know which one you have — that's the point. The bugs are:
- Something about how the player moves
- Something about how physics feel
- Something about how the level is set up

All three are common mistakes that beginners actually make.

---

## How to Open Your Project

1. Open **Godot 4**
2. Click **Import** → navigate to your variant folder (e.g. `visual-bug-hunt/variant-a-speed/`)
3. Select `project.godot` → **Import & Edit**
4. Press **F5** to play

**Controls:** `A` / `D` or arrow keys to move — `Space` or `Up` to jump

---

## When You're Done

- [ ] I played the game and noticed something wrong
- [ ] I described the problem to an AI tool
- [ ] I got a suggestion and understood why it fixes the problem
- [ ] I applied the fix and tested it
- [ ] The game feels right now
