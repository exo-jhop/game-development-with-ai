# Lesson 7.1: Directed Implementation

## What You'll Learn

- How to work through your milestone plan with AI, building feature by feature
- Context strategies for managing large projects that outgrow a single prompt
- How to handle regressions when AI breaks something that used to work
- When to use multiple AI sessions versus one long conversation
- How to pace your development and avoid common traps

---

## From Plan to Game: Working Your Milestone Plan

You have a milestone plan from the earlier lessons. Now it is time to turn that plan into a real, playable game. The key insight is this: you are not building the whole game at once. You are building it one feature at a time, testing each feature before moving on, and keeping everything organized so AI can help you effectively at every step.

Think of yourself as a construction manager. You have blueprints (your milestone plan), you have a skilled builder (AI), and your job is to direct the work in the right order, check the quality at each stage, and make sure new work does not damage what has already been built.

### The Feature-by-Feature Approach

Take your milestone plan and break each milestone into individual features. Then work through them one at a time:

1. Pick the next feature from your list
2. Describe it clearly to AI
3. Let AI implement it
4. Test it thoroughly
5. Save your progress (commit your work)
6. Move to the next feature

This sounds simple, and for the first few features it is. The challenge comes when your project grows beyond what AI can hold in its memory at once.

---

## Managing Complexity: When the Project Gets Big

Early in your project, you can describe the whole game in one prompt and AI understands everything. But as your game grows, you will hit a wall. AI cannot see all your files at once. It does not remember what it built for you yesterday. It does not automatically know that adding a new enemy type might interfere with the scoring system it built last week.

This is normal. Every large project hits this point. The difference between students who succeed and students who get frustrated is how they manage this complexity.

### The Core Problem

AI works with a limited context window. Think of it like a desk with limited space. You can spread out a few documents and work with all of them, but if you try to put fifty documents on the desk, things start falling off the edges. Your job is to be strategic about which documents go on the desk for each task.

---

## Context Strategies for Large Projects

### Strategy 1: Project Summaries

At the start of every AI session, give AI a brief summary of your entire project. This is not a detailed description of every feature. It is a high-level overview that helps AI understand the big picture before you ask for something specific.

A good project summary includes:
- What kind of game it is (genre, perspective, core mechanic)
- What the player does (the game loop in plain language)
- What features are already built and working
- What you are working on right now

For example, you might start a session by telling AI: "My game is a 2D platformer where the player collects coins across three levels. The player can move left and right, jump, and double-jump. There are two enemy types that patrol back and forth. Coins are scattered across each level and there is a score counter in the top-left corner. The level ends when the player reaches the flag at the right side. I am now working on adding a timer so each level has a time limit."

This gives AI everything it needs to work on the timer without accidentally breaking the coin system or the enemy behavior.

### Strategy 2: File Descriptions

When you ask AI to work on a specific feature, tell it which files exist in your project and what each one does. You do not need to paste the entire contents of every file. A brief description is enough to help AI understand the structure.

For example: "My project has these files: the main character script handles movement, jumping, and double-jumping. The enemy script handles patrol movement and collision with the player. The coin script handles pickup detection and adds to the score. The level script handles loading the level layout and the end-of-level flag. The HUD script displays the score counter."

This way, when AI needs to add a timer, it knows where to look and what not to touch.

### Strategy 3: Incremental Context

Sometimes a feature is too complex for a single prompt. In these cases, build AI's understanding step by step across multiple prompts in the same session.

Start with the overview: "I want to add a boss fight at the end of Level 3."

Then add details one at a time: "The boss should have three attack patterns that cycle in order."

Then refine: "After each attack pattern, the boss should pause for two seconds and that is when the player can hit it."

Each prompt builds on the last. AI accumulates understanding within the same session. This is much more effective than trying to cram everything into one enormous prompt.

---

## When AI Breaks Something That Used to Work

This will happen. It is not a question of if, but when. You ask AI to add enemies, and suddenly jumping does not work anymore. You ask for a new level, and the coins disappear. This is called a regression, and handling regressions is one of the most important skills in AI-directed development.

### How to Describe Regressions

Be specific about what changed. Do not just say "the game is broken." Tell AI exactly what used to work and what stopped working, and connect it to the most recent change.

Good regression descriptions follow this pattern:
- What was working: "The player could jump and land on platforms correctly"
- What changed: "After you added the enemy patrol code"
- What is broken now: "The player falls through platforms instead of landing on them"
- What still works: "Moving left and right still works fine"

The more specific you are, the faster AI can find and fix the problem.

### Asking AI to Fix Without Overwriting

When AI fixes a bug, there is a risk that it will rewrite parts of the code you did not want changed. Be explicit about boundaries.

Tell AI exactly what to fix and what to leave alone. For example: "Fix the platform collision so the player lands on platforms again, but do not change anything about how the player moves or jumps. The movement and jumping code is working perfectly and should stay exactly as it is."

You can also ask AI to explain what it changed and why. This helps you understand whether the fix is safe or whether it might cause new problems.

### The Checkpoint Strategy

This is the single most important habit for AI-directed development: save your progress before every new feature.

Before you ask AI to add enemies, save. Before you ask AI to change the level layout, save. Before you ask AI to add sounds, save. If something goes wrong, you can always go back to the last working version.

In practice, this means using version control (like Git) to create a commit after each successful feature addition. If you are not using version control, at minimum copy your project folder and label it with the date and what was working at that point.

The checkpoint strategy turns every regression from a crisis into a minor inconvenience. Instead of "the game is broken and I do not know how to fix it," it becomes "let me go back to the version from before this change and try again."

---

## Multiple Sessions vs. One Long Conversation

### When to Use One Long Session

Stay in the same AI session when:
- You are working on closely related features that build on each other
- AI needs to remember decisions it made earlier in the conversation
- You are iterating on the same feature (adjusting, tweaking, refining)
- The total conversation is not yet so long that AI starts forgetting early details

### When to Start a Fresh Session

Start a new AI session when:
- You are switching to a completely different feature area
- The current session has become very long and AI seems to be losing track
- You finished a major milestone and are starting the next one
- AI keeps making the same mistake despite corrections, which sometimes happens when the conversation history is cluttered with failed attempts

### Transferring Context Between Sessions

When you start a new session, you need to bring AI up to speed. This is where your project summary and file descriptions come in. Paste them at the start of the new session so AI understands where things stand.

A good session handoff sounds like: "I am continuing work on my platformer game. Here is where things stand: [project summary]. In the last session, I added the enemy patrol system and it is working. Now I want to work on adding a health system for the player."

---

## Pacing Your Development

The order in which you build features matters enormously. Here is the recommended sequence:

### Phase 1: Core Mechanics

Build the foundational actions that the player performs constantly. Movement, jumping, the basic interaction. These need to feel right before you build anything else, because everything else depends on them.

### Phase 2: Core Systems

Add the systems that make the game function: scoring, health, level progression, win and lose conditions. These create the structure that turns a toy into a game.

### Phase 3: Content

Now add the stuff that fills the game: levels, enemies, items, obstacles, variety. This is where the game gets interesting and replayable.

### Phase 4: Polish

Last, add the elements that make the game feel professional: sounds, particles, screen shake, menus, transitions. Polish is the last phase because it depends on everything else being stable.

Resist the urge to jump ahead. Do not add particle effects before your jumping works. Do not design five levels before your first level is fun. Do not add background music before the game loop is complete.

---

## Common Traps to Avoid

### Feature Creep

You start with a simple platformer and suddenly you want crafting, dialogue trees, weather systems, and multiplayer. Every new idea sounds exciting, but each one adds complexity that makes the project harder to manage and more likely to break.

Stick to your milestone plan. Write down new ideas in a "future features" list, but do not add them to the current project unless you deliberately choose to cut something else to make room.

### Premature Polish

You spend three hours getting the perfect screen shake for coin collection before the coin system actually works correctly. Polish is satisfying because the results are visible, but it is wasted effort if you later need to change how coins work.

Build first, polish last. Functional before beautiful.

### Ignoring the Milestone Plan

The milestone plan exists for a reason. When you skip ahead or work on whatever seems exciting in the moment, you end up with a half-built game that has gorgeous menus and broken gameplay. Follow the plan. Check off milestones. Stay disciplined.

### Not Testing After Every Change

Every time AI makes a change, test the game. Not just the new feature, but also the features that were already working. This catches regressions early, when they are easy to fix, instead of late, when you have no idea which change caused the problem.

---

## Milestone Checklist

- [ ] I have my milestone plan broken into individual features
- [ ] I understand how to write a project summary for AI
- [ ] I know how to describe my files and existing features to AI
- [ ] I have a strategy for saving my progress before each new feature
- [ ] I know how to describe regressions clearly to AI
- [ ] I know when to continue a session vs. start a fresh one
- [ ] I am following the build order: mechanics, systems, content, polish
- [ ] I am resisting feature creep and sticking to my plan
- [ ] I am testing the entire game after every change, not just the new feature
