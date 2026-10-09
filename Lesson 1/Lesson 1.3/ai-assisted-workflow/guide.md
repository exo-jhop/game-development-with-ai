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
│ Describe │     │ Playtest │     │ Run it   │     │ Save it  │
│ what you │     │ the      │     │ in Godot │     │ with git │
│ want     │     │ result   │     │          │     │          │
└──────────┘     └──────────┘     └──────────┘     └──────────┘
      ▲                                                  │
      └──────────────────────────────────────────────────┘
                     repeat for each feature
```

**REVIEW means playtesting the result, not reading code.** You are the director — you never need to open a script or inspect what the AI wrote. REVIEW is where you actually play what was just built and judge it against your spec: does it match what you asked for, and does it feel right? TEST, right after, is where you run the full game to make sure nothing else broke. Together they're your only checkpoint before you commit.

---

## Setup Checklist

Before you start, make sure you have:

- [ ] Godot 4 installed and working
- [ ] An AI coding tool ready (Claude Code, ChatGPT, or similar)
- [ ] Git installed (`git --version` in terminal to check)
- [ ] The instructor-provided Godot 4 starter template copied into your project folder

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
> Target Godot 4.x syntax only. Do not use deprecated Godot 3 APIs.
>
> Write it as a short spec document I can follow to build it.

The AI will generate a spec. Read through it and make sure:

- You understand what the game does
- It has a clear player action (move, jump, click, etc.)
- It has a clear goal or feedback (score, timer, "you win", etc.)
- It feels small enough to finish in this session

Save the spec into your `spec-template.md` file (fill in the template with what the AI gave you).

---

## Step 1: Start from the Starter Template

Don't start from a blank project. Copy the instructor-provided Godot 4 starter template into your project folder — it has a fixed, known structure already in place, so the AI always has reliable context about what exists without you needing to describe or understand it.

If the template doesn't already have git set up, initialize it once at the start:

```bash
cd your-project-folder
git init
git add .
git commit -m "Start from starter template"
```

If git is already initialized in the template, just confirm it with `git status` and move on.

---

## Step 2: Build with the Loop

Now build your game feature by feature. Each feature is one loop iteration.

### Iteration 1: Player movement

**PROMPT** — Ask the AI to build the player and movement based on your spec. Include the Godot 4.x lock-in line: "Target Godot 4.x syntax only. Do not use deprecated Godot 3 APIs."

**REVIEW** — Playtest it. Ask yourself:
- Does it match what my spec says?
- Does the movement feel the way I pictured it — right speed, right responsiveness?
- If something feels off, describe what's off to the AI and ask it to adjust

**TEST** — Press F5 to run the full project. Does the player move the way you expected? Does everything else still work?

**COMMIT** — If it works:
```bash
git add .
git commit -m "Add player with basic movement"
```

### Iteration 2: The core mechanic

**PROMPT** — Ask the AI to add the main gameplay element from your spec (items to collect, obstacles to dodge, a target to reach, etc.)

**REVIEW** — Playtest the new feature. Does it do what your spec describes? Does it interact correctly with the player — for example, does touching it actually trigger the effect you expected?

**TEST** — Run the project. Try the mechanic several times. Does it work consistently? Does it feel right?

**COMMIT** — If it works:
```bash
git add .
git commit -m "Add [your mechanic here]"
```

### Iteration 3: Feedback / win condition

**PROMPT** — Ask the AI to add a score display, a "you win" message, or whatever feedback your spec describes.

**REVIEW** — Playtest it. Does the feedback appear at the right moment? Does it show the right information (correct score, right message)?

**TEST** — Play through the whole thing start to finish. Does everything connect — does the feedback respond to what's actually happening in the game?

**COMMIT** — If it works:
```bash
git add .
git commit -m "Add score display and win condition"
```

### If something breaks during testing

Don't guess at what went wrong. Describe the symptom, and if Godot's Output or Debugger panel shows a red error message, copy-paste that exact text into your next prompt alongside the symptom:

> Here's what I see: [describe what happened]. Here's the exact error Godot showed: [paste the error text].

You don't need to understand the error — handing it over precisely is what matters.

---

## Step 3: Document Your Workflow

Fill in the `workflow-log-template.md` with what you did at each step. This is your deliverable for this lesson — proof that you practiced the loop, not just the end result.

---

## Tips

- **Small prompts beat big prompts.** Ask for one feature at a time, not the whole game at once.
- **If something breaks, describe the symptom — and paste the exact error if Godot shows one.** "The player falls through the floor" plus the red error text is far more useful than "fix my code."
- **Commit after each working feature.** If something breaks later, you can always go back.
- **Keep a running description of what exists, not an understanding of how it works.** Tell the AI in plain language what's in your game so far — "I have a player that jumps, coins that add to score, and a win screen" — rather than trying to understand the files yourself. The AI handles the how; you track the what.
- **The AI is your partner, not your boss.** If it suggests something that doesn't match your spec, push back.

---

## When You're Done

You should have:
- [ ] A filled-in game spec (`spec-template.md`)
- [ ] A working Godot 4 project with at least 3 commits
- [ ] A completed workflow log (`workflow-log-template.md`)
