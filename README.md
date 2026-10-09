# Game Development with AI

A structured workshop teaching game development by **directing AI tools** to build complete games in **Godot 4**. Students never write or read code — they learn game design vocabulary and AI direction skills, then let AI handle implementation.

**Philosophy:** Student = Director. AI = Developer.

**Code tools:** OpenCode, Claude, Godot, GitHub
**Asset tools:** Gemini, Google Flow

See [`Overview/course-overview.md`](Overview/course-overview.md) for the complete course plan — philosophy, lesson map, learning objectives, activities, and deliverables for every sub-lesson.

---

## Course Structure

```
Game Development with AI/
├── Overview/
│   └── course-overview.md          — Full course plan, philosophy, and lesson map
│
├── Lesson 0/ — Pre-Work Setup (do before Lesson 1)
│   └── setup/
│       └── setup-checklist.md
│
├── Lesson 1/ — AI Fundamentals for Game Dev
│   ├── Lesson 1.1/ — Prompting Strategies for Game Dev
│   │   └── prompting-strategies/
│   │       ├── guide.md
│   │       ├── prompt-cheatsheet.md
│   │       └── exercise.md
│   ├── Lesson 1.2/ — Diagnosing Problems with AI
│   │   ├── guide.md
│   │   ├── platformer-hazard-demo/     ← Live demo
│   │   ├── visual-bug-hunt/            ← Hands-on exercise (3 variants)
│   │   └── bug-hunt-exercise/          ← Simplified standalone version
│   └── Lesson 1.3/ — The AI Development Loop
│       └── ai-assisted-workflow/
│           ├── guide.md
│           ├── spec-template.md
│           └── workflow-log-template.md
│
├── Lesson 2/ — Game Design Vocabulary
│   ├── Lesson 2.1/ — Core Game Concepts
│   ├── Lesson 2.2/ — Describing Game Feel to AI
│   └── Lesson 2.3/ — Visual & Audio Direction
│
├── Lesson 3/ — Directing AI for Core Mechanics
│   ├── Lesson 3.1/ — Breaking a Game into AI-Sized Tasks
│   ├── Lesson 3.2/ — Iterating When AI Gets It Wrong
│   └── Lesson 3.3/ — Directing AI for Game Systems
│
├── Lesson 4/ — AI-Generated Assets
│   ├── Lesson 4.1/ — Character & Environment Art with AI
│   └── Lesson 4.2/ — UI Art, Audio & Animation Assets
│
├── Lesson 5/ — Level Design & Game Feel
│   ├── Lesson 5.1/ — Level Design as Direction
│   └── Lesson 5.2/ — Directing AI for Enemies, Hazards & Game Feel
│
├── Lesson 6/ — Planning Your Game
│   ├── Lesson 6.1/ — Game Design Document as AI Brief
│   └── Lesson 6.2/ — Project Planning for AI Development
│
├── Lesson 7/ — Building & Polishing Your Game
│   ├── Lesson 7.1/ — Directed Implementation
│   └── Lesson 7.2/ — Polish, Playtest & Iterate
│
├── Lesson 8/ — Ship It
│   ├── Lesson 8.1/ — Export & Publish
│   └── Lesson 8.2/ — Present & Reflect
│
├── assets/
└── resources/
```

---

## Course Arc

**Foundation (Lessons 1–2):** Learn the AI tools and build game design vocabulary
**Building (Lessons 3–5):** Direct AI to build mechanics, assets, levels, and polish
**Independence (Lessons 6–8):** Plan, build, and ship an original game

---

## Lesson 0 — Pre-Work Setup Checklist

Before Lesson 1, students install Godot 4, confirm access to a code AI tool and an asset AI tool, create a GitHub account, and open the starter template once to confirm it runs. This is pure logistics — not a Godot tutorial. Students click exactly four things in the editor (Import → select folder → Import & Edit → Play) and nothing else.

### Files
| File | Purpose |
|---|---|
| `setup-checklist.md` | Step-by-step pre-work checklist, done before or at the start of Lesson 1 |

---

## Lesson 1.1 — Prompting Strategies for Game Dev

Students learn which AI tool to use for which task, and how to write prompts that get useful results. This is the foundation — everything in later lessons builds on these skills.

### Key Concepts
- **Code tools** (OpenCode/Claude) for generating gameplay code, debugging, planning, refactoring
- **Asset tools** (Gemini/Google Flow) for sprites, tilesets, UI mockups, color palettes
- **6 prompting strategies:** Be Specific, One Feature Per Prompt, Describe Symptoms, Share Files, Ask for Explanations, Right Tool for the Job

### Deliverables
- Completed exercise with tool choices and real prompts for 8 scenarios

### Files
| File | Purpose |
|---|---|
| `guide.md` | Tools overview + prompting strategies with examples |
| `prompt-cheatsheet.md` | Copy-paste prompt templates by category |
| `exercise.md` | 8 scenarios where students pick tools and write prompts |

---

## Lesson 1.2 — Diagnosing Problems with AI

Students apply their prompting skills to real bugs. They play buggy games, describe what feels wrong to an AI tool, and fix the problem — no code reading required.

### Live Demo: `platformer-hazard-demo`
The instructor plays a simple 2D platformer live. The player touches a spike hazard and health drains far too fast — a realistic bug caused by damage being applied every physics frame instead of once per contact. Students watch the instructor describe the symptom to an AI tool and apply the fix in real time.

### Hands-on Exercise: `visual-bug-hunt`
Students open their assigned variant, play the level, and describe what feels wrong to an AI coding assistant. Three variants, each with one intentional bug:

| Variant | Folder | Bug |
|---|---|---|
| A | `variant-a-speed` | Player moves far too fast — twitchy, uncontrollable |
| B | `variant-b-gravity` | Gravity is far too weak — jump feels floaty, moon-like |
| C | `variant-c-collision` | Raised ledge is set up incorrectly — player falls through it |

Each variant is a fully independent Godot 4 project. Students only ever open their assigned folder.

### Standalone Version: `bug-hunt-exercise`
A simplified, self-contained version of the exercise for quick practice or makeup sessions.

---

## Lesson 1.3 — The AI Development Loop

Students bring together everything from Lessons 1.1 and 1.2 to build a game from scratch using the core development loop: **Prompt → Review → Test → Commit**.

1. **Generate a game spec with AI** — students prompt an AI tool to co-create a small game spec, then refine it
2. **Build from the spec** — using the loop, they direct AI to implement the game feature by feature, committing after each working step
3. **Document the process** — fill in the workflow log template to reflect on each iteration

### Deliverables
- A filled-in game spec (`spec-template.md`)
- A working Godot 4 project with at least 3 git commits
- A completed workflow log (`workflow-log-template.md`)

### Files
| File | Purpose |
|---|---|
| `guide.md` | Step-by-step walkthrough of the lesson |
| `spec-template.md` | Template for the game spec students create with AI |
| `workflow-log-template.md` | Template to document each loop iteration |

---

## Lessons 2–8

Full learning objectives, key content, activities, deliverables, and materials for every lesson and sub-lesson are documented in [`Overview/course-overview.md`](Overview/course-overview.md).

---

## How to Open a Godot Project

1. Open **Godot 4**
2. Click **Import** → navigate to the project folder (e.g. `Lesson 1/Lesson 1.2/platformer-hazard-demo/`)
3. Select `project.godot` → **Import & Edit**
4. Press **F5** (or the Play button) to run

**Controls:** `A` / `D` or arrow keys to move — `Space` or `Up` to jump

---

## Tech

- Engine: Godot 4.x
- Students never need to learn the editor interface or write GDScript — AI handles implementation
- No external plugins or addons
