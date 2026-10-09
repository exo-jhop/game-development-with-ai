# Context Management Guide

## A Practical Reference for Managing AI Context in Large Projects

---

## The Context Problem

AI does not have permanent memory of your project. Every time you start a new session, AI starts with a blank slate. Even within a single session, if the conversation gets long enough, AI may lose track of details from earlier messages.

This is not a flaw you can fix. It is a constraint you must work around. The students who manage context well build bigger, more complex games with fewer frustrations. The students who ignore context management spend half their time re-explaining things and fixing problems caused by AI not understanding the full picture.

The solution is simple: develop templates and habits that make it fast and easy to give AI the context it needs, every time.

---

## Project Summary Template

Copy this template, fill in the blanks, and paste it at the start of every new AI session. Update it as your project grows.

---

**My Game Summary**

My game is a [genre] game where the player [core action/goal].

The game is built in [engine/framework].

**What the player does:**
- [Primary action, e.g., "moves left and right and jumps between platforms"]
- [Secondary action, e.g., "collects coins scattered across each level"]
- [Win/lose condition, e.g., "reaches the flag at the end of each level to progress"]

**Features that are DONE and WORKING:**
- [Feature 1, e.g., "Player movement and jumping"]
- [Feature 2, e.g., "Coin collection with score counter"]
- [Feature 3, e.g., "Two enemy types that patrol and can hurt the player"]
- [Add more as needed]

**What I am working on RIGHT NOW:**
- [Current task, e.g., "Adding a timer to each level"]

---

Keep this summary short. A paragraph or two plus bullet lists is ideal. If your summary is longer than half a page, you are including too much detail. Save the detail for when AI needs it for a specific task.

---

## File Context Template

When AI needs to work on a specific feature, tell it what files exist and what each one is responsible for. You do not need to paste file contents. A one-sentence description per file is enough.

---

**My Project Files**

- [File/scene 1]: [What it does, e.g., "The main character scene and script -- handles movement, jumping, double-jump, and collision with the ground"]
- [File/scene 2]: [What it does, e.g., "The enemy scene and script -- handles patrol movement back and forth, and hurting the player on contact"]
- [File/scene 3]: [What it does, e.g., "The coin scene and script -- handles pickup detection and adding to the score"]
- [File/scene 4]: [What it does, e.g., "The HUD scene and script -- displays the score counter and lives remaining"]
- [File/scene 5]: [What it does, e.g., "The main level scene -- the layout of platforms, enemies, and coins for Level 1"]
- [Add more as needed]

---

Update this list every time you add a new file or scene. It takes ten seconds and saves you minutes of confusion later.

---

## Feature Context Template

When asking AI to build something that interacts with existing features, describe what is already built in enough detail that AI knows how things connect.

---

**What is already built:**

[Feature name]: [How it works in plain language]
- [Important detail 1]
- [Important detail 2]
- [How it connects to other features]

**Example:**

Scoring system: The player earns 10 points for each coin collected. The score is displayed in the top-left corner of the screen. The score resets to zero at the start of each level. There is no high score system yet.

Enemy system: Two enemy types exist. Walkers patrol back and forth on platforms. Flyers move in a sine wave pattern through the air. Both deal one point of damage on contact with the player. Neither type can be defeated yet.

---

## The "Don't Touch" List

This is one of the most useful tools in your context management kit. When you ask AI to add or change something, explicitly list the features that are working correctly and must not be modified.

---

**Do NOT change the following (these are working correctly):**

- [ ] [Feature 1, e.g., "Player movement speed and jump height"]
- [ ] [Feature 2, e.g., "Coin pickup detection and score counting"]
- [ ] [Feature 3, e.g., "Enemy patrol paths and collision"]
- [ ] [Add more as needed]

**Only modify:**
- [The specific thing you want changed]

---

Paste this list directly into your prompt when asking AI to work on something that might affect existing features. It acts as a guardrail that reduces the chance of regressions.

---

## Session Strategies

### When to Continue the Current Session

- You are still working on the same feature or a closely related one
- AI made something that needs adjustments or fixes
- You want to iterate (try different values, tweak behavior, refine feel)

### When to Start a Fresh Session

- You finished a milestone and are starting a new one
- The conversation is so long that AI seems confused or forgetful
- You are switching to a completely unrelated part of the game
- AI keeps repeating the same mistake despite corrections

### How to Transfer Context

When starting a fresh session, paste the following in order:
1. Your Project Summary (updated to reflect current state)
2. Your File Context list
3. Your "Don't Touch" list
4. Your specific request for this session

This takes about sixty seconds to assemble and saves enormous amounts of time.

---

## Emergency Context: When Everything Is Broken

Sometimes things go badly wrong. The game crashes, multiple features are broken, and you are not sure what happened. Here is what to tell AI in that situation:

---

**Emergency Fix Request**

My game was working until [describe the last change that was made].

**What is broken:**
- [Symptom 1, e.g., "The game crashes immediately on launch"]
- [Symptom 2, e.g., "The player character is invisible"]
- [Symptom 3, e.g., "Error messages appear in the console"]

**What was working before:**
- [List the features that were functioning before things broke]

**The last change I made was:**
- [Describe exactly what you asked AI to do or what you changed]

**Please diagnose the problem and fix it without changing anything unrelated to the issue.**

---

If you have been saving checkpoints (and you should be), you can also tell AI: "Here is the version that was working. Compare it to the current version and find what went wrong." This is often the fastest path to a fix.

---

## Quick Reference Card

| Situation | What to Give AI |
|---|---|
| Starting a new session | Project Summary + File Context |
| Adding a new feature | Project Summary + File Context + Don't Touch List + Feature Request |
| Fixing a bug | What was working + What broke + When it broke |
| Everything is broken | Emergency context template |
| Iterating on a feature | Continue the same session, reference earlier messages |
| Switching to a new milestone | Start fresh session with updated Project Summary |

---

## Checklist

- [ ] I have a Project Summary written and ready to paste
- [ ] I have a File Context list that I update as I add files
- [ ] I know how to write a "Don't Touch" list for each AI request
- [ ] I know when to continue a session vs. start fresh
- [ ] I have a plan for what to do when everything breaks
- [ ] I am saving checkpoints before each new feature so I can always roll back
