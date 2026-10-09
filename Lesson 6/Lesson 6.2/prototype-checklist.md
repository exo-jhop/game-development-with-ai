# Prototype Validation Checklist

Before you invest time in art, sound, levels, and polish, your prototype needs to answer one question: is this game worth building? This checklist helps you evaluate your greybox prototype honestly and decide whether to move forward, pivot, or start over.

---

## What is a Greybox Prototype?

A greybox prototype is a version of your game built with placeholder art (colored rectangles, simple shapes) that tests your core mechanics. It exists to answer whether the game FEELS right, not whether it LOOKS right.

A good greybox prototype:
- Uses simple shapes (rectangles, circles) for all visuals
- Has all core mechanics functional
- Is playable from start to some kind of ending
- Takes less than a week to build

---

## Part 1: Core Mechanic Feel Check

The core mechanic is the thing the player does most often. If this does not feel good, no amount of art or content will save the game.

### Movement and Controls

- [ ] Does the player respond instantly to input? (No noticeable delay)
- [ ] Does movement feel smooth, not jerky or floaty?
- [ ] Can the player do what they want to do without fighting the controls?
- [ ] Are the controls simple enough to explain in one sentence?
- [ ] Does the default speed feel right? (Not too fast, not too slow)

### The Core Action

- [ ] Is the primary action (jumping, shooting, matching, building) satisfying to perform?
- [ ] Would you want to do this action 1000 more times? That is how many times a player will do it.
- [ ] Is there a skill element -- can the player get better at it with practice?
- [ ] Does the action have clear feedback? (Visual, audio, or screen response)

### Challenge and Difficulty

- [ ] Is there something that can go wrong? (A way to fail or make mistakes)
- [ ] Is recovery possible? (Failing does not feel unfair or permanent)
- [ ] Can you imagine this being harder without being frustrating?
- [ ] Is the difficulty in the right place? (Challenge should come from the game, not from bad controls)

---

## Part 2: Questions to Answer Before Moving to Production

Play your prototype for at least 15 minutes. Then answer these questions honestly.

### The Fun Test

- [ ] Did you have fun playing it? (Not "it will be fun later" -- right now, with rectangles.)
- [ ] Can you describe in one sentence what makes it fun?
- [ ] Would you play this for another 15 minutes voluntarily?
- [ ] Did you find yourself wanting to "try one more time" after failing?

If you answered "no" to most of these, stop and fix the core mechanic before going further.

### The Clarity Test

- [ ] Could a new player figure out what to do without instructions?
- [ ] Is the goal obvious? (What is the player trying to accomplish?)
- [ ] Is failure obvious? (Does the player know when they messed up and why?)
- [ ] Is progress obvious? (Does the player know they are getting closer to winning?)

### The Scope Test

- [ ] Can you build the full version of this game in your remaining time?
- [ ] Have you identified any features that are harder than you expected?
- [ ] Is the prototype's scope close to your GDD's Must-Have list?
- [ ] Are there Must-Have features you have not prototyped yet that worry you?

---

## Part 3: Kill Your Darlings

"Kill your darlings" means cutting features or ideas you love but that are not working. This is the hardest part of game development and the most important.

### The Decision Framework

For each feature in your prototype, ask:

**Does it serve the core mechanic?**
- YES: Keep it.
- NO: Does it add variety or progression?
  - YES: Move it to Should-Have.
  - NO: Cut it.

**Is it working as intended?**
- YES: Keep it.
- NO: Can you fix it in less than 2 hours?
  - YES: Fix it.
  - NO: Cut it or simplify it dramatically.

**Would the game be worse without it?**
- YES: Keep it.
- NO: Cut it. Every feature has a maintenance cost, even if building it was easy.

### Signs a Feature Should Be Cut

- You keep making excuses for why it does not feel right yet
- It requires three other features to work properly
- You have spent more time on it than on the core mechanic
- Players do not notice or use it during playtesting
- It made sense in the GDD but does not fit the actual game

### How to Cut Gracefully

1. Disable the feature but keep it in the project (do not delete it)
2. Move the feature to your Won't Have list
3. Write a one-line note about why you cut it
4. Move on without looking back

---

## Part 4: Playtest Questions

Have someone else play your prototype. Do NOT explain how it works -- just hand them the controls and watch. Then ask these questions.

### During Playtesting (Observe Silently)

- [ ] Did the player figure out the controls without help?
- [ ] Did they understand the goal?
- [ ] Did they smile, laugh, or show signs of engagement?
- [ ] Did they look confused or frustrated at any point? (Note when and where)
- [ ] Did they try the same section more than once voluntarily?
- [ ] How long did they play before stopping?

### After Playtesting (Ask the Player)

- [ ] "What were you trying to do?" (Tests if the goal was clear)
- [ ] "What was the most fun part?" (Identifies your strongest mechanic)
- [ ] "What was the most frustrating part?" (Identifies your biggest problem)
- [ ] "Would you play this again?" (Honest engagement check)
- [ ] "What did you wish you could do?" (Reveals missing features that matter)

### What to Do with Feedback

- If everyone mentions the same problem: fix it immediately
- If everyone enjoyed the same thing: build more around that
- If feedback contradicts itself: trust the majority and your own judgment
- If nobody had fun: revisit your core mechanic before adding anything else

---

## Part 5: Go / Pivot / Stop Decision

After completing this checklist, make a clear decision.

**GO -- Move to production.**
Your core mechanic is fun, controls feel good, scope is realistic, and playtesters enjoyed it. Start replacing placeholders with real art and building out content.

**PIVOT -- Change direction, keep the base.**
Something is not working, but the foundation is solid. Identify what needs to change (different enemy types, different level structure, different win condition) and rebuild that piece. Do not start content production until the pivot is validated.

**STOP -- Start a new prototype.**
The core mechanic is not fun and no reasonable change will fix it. This is not failure -- this is the prototype doing its job. You found out now instead of after weeks of art and level design. Take what you learned and start a new idea.

---

## Final Validation Checklist

Before closing out the prototype phase:

- [ ] Core mechanic feels fun with placeholder art
- [ ] Controls are responsive and intuitive
- [ ] At least one other person has playtested it
- [ ] All Must-Have features are proven possible (prototyped or confidently estimated)
- [ ] Scope has been validated against your timeline
- [ ] You have made a clear GO / PIVOT / STOP decision
- [ ] Your GDD has been updated to reflect what you learned from prototyping
- [ ] Features that did not work have been moved to the Won't Have list
