# Lesson 1.3: Setting Up an AI-Assisted Workflow

## What You'll Learn

How to use an AI coding assistant as your development partner. By the end of this lesson, you'll have:

1. Generated a simple game spec with AI
2. Built the game from that spec using the **Prompt → Review → Test → Commit** loop
3. Documented each step in your workflow log

---

## The Workflow Loop

Every iteration follows four steps:

```
┌──────────┐     ┌──────────┐     ┌──────────┐     ┌──────────┐
│  PROMPT  │ ──▶ │  REVIEW  │ ──▶ │   TEST   │ ──▶ │  COMMIT  │
│          │     │          │     │          │     │          │
│ Describe │     │ Read the │     │ Run it   │     │ Save it  │
│ what you │     │ code it  │     │ in Godot │     │ with git │
│ want     │     │ gave you │     │          │     │          │
└──────────┘     └──────────┘     └──────────┘     └──────────┘
      ▲                                                  │
      └──────────────────────────────────────────────────┘
                     repeat for each feature
```

---

## Setup Checklist

Before you start, make sure you have:

- [ ] Godot 4 installed and working
- [ ] An AI coding tool ready (Claude Code, ChatGPT, or similar)
- [ ] Git installed (`git --version` in terminal to check)
- [ ] A folder for your project

---

## Step 0: Create Your Game Spec (with AI)

Open your AI tool and use a prompt like this:

> I'm a beginner learning game development with Godot 4. Help me write a simple game spec. It should be:
> - A 2D game
> - One core mechanic (collecting items, dodging obstacles, etc.)
> - Small enough to fit on one screen, no scrolling
> - No menus, no levels, just one playable scene
> - Placeholder art only (colored rectangles are fine)
>
> Write it as a short spec document I can follow to build it.

The AI will generate a spec. Read through it and make sure:

- You understand what the game does
- It has a clear player action (move, jump, click, etc.)
- It has a clear goal or feedback (score, timer, "you win", etc.)
- It feels small enough to finish in this session

Save the spec into your `spec-template.md` file (fill in the template with what the AI gave you).

---

## Step 1: Initialize Your Project

Create a new Godot 4 project for your game. Then initialize git:

```bash
cd your-project-folder
git init
git add project.godot
git commit -m "Initial project setup"
```

---

## Step 2: Build with the Loop

Now build your game feature by feature. Each feature is one loop iteration.

### Iteration 1: Player movement

**PROMPT** — Ask the AI to create the player scene and movement script based on your spec.

**REVIEW** — Read the code it gives you before adding it to your project. Ask yourself:
- Does it match what my spec says?
- Do I roughly understand what each part does?
- If something looks wrong, ask the AI to explain it

**TEST** — Add the files to your Godot project. Press F5 to run. Does the player move the way you expected?

**COMMIT** — If it works:
```bash
git add .
git commit -m "Add player with basic movement"
```

### Iteration 2: The core mechanic

**PROMPT** — Ask the AI to add the main gameplay element from your spec (items to collect, obstacles to dodge, a target to reach, etc.)

**REVIEW** — Read the new code. Does it connect to the player correctly?

**TEST** — Run the project. Try the mechanic. Does it work? Does it feel right?

**COMMIT** — If it works:
```bash
git add .
git commit -m "Add [your mechanic here]"
```

### Iteration 3: Feedback / win condition

**PROMPT** — Ask the AI to add a score display, a "you win" message, or whatever feedback your spec describes.

**REVIEW** — Check the UI code. Is it reading from the right variables?

**TEST** — Play through the whole thing. Does the feedback show up at the right time?

**COMMIT** — If it works:
```bash
git add .
git commit -m "Add score display and win condition"
```

---

## Step 3: Document Your Workflow

Fill in the `workflow-log-template.md` with what you did at each step. This is your deliverable for this lesson — proof that you practiced the loop, not just the end result.

---

## Tips

- **Small prompts beat big prompts.** Ask for one feature at a time, not the whole game at once.
- **If something breaks, describe the symptom.** "The player falls through the floor" is a better prompt than "fix my code."
- **Commit after each working feature.** If something breaks later, you can always go back.
- **You don't need to understand every line.** But you should understand what each file does and how they connect.
- **The AI is your partner, not your boss.** If it suggests something that doesn't match your spec, push back.

---

## When You're Done

You should have:
- [ ] A filled-in game spec (`spec-template.md`)
- [ ] A working Godot 4 project with at least 3 commits
- [ ] A completed workflow log (`workflow-log-template.md`)
