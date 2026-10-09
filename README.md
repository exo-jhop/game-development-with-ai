# Game Development with AI

A structured course teaching game development using AI coding assistants and AI asset tools as a core part of the workflow. Built with **Godot 4** and **GDScript**.

**Code tools:** OpenCode, Claude, Godot, GitHub
**Asset tools:** Gemini, Google Flow

---

## Course Structure

```
Game Development with AI/
└── Lesson 1/
    ├── Lesson 1.1/ — Prompting Strategies for Game Dev
    │   └── prompting-strategies/
    │       ├── guide.md
    │       ├── prompt-cheatsheet.md
    │       └── exercise.md
    ├── Lesson 1.2/ — Diagnosing Bugs with AI
    │   ├── guide.md
    │   ├── platformer-hazard-demo/        ← Live demo
    │   └── visual-bug-hunt/               ← Hands-on exercise
    │       ├── variant-a-speed/
    │       ├── variant-b-gravity/
    │       └── variant-c-collision/
    └── Lesson 1.3/ — Setting Up an AI-Assisted Workflow
        └── ai-assisted-workflow/
            ├── guide.md
            ├── spec-template.md
            └── workflow-log-template.md
```

---

## Lesson 1.1 — Prompting Strategies for Game Dev

Students learn which AI tool to use for which task, and how to write prompts that get useful results. This is the foundation — everything in later lessons builds on these skills.

### Key Concepts
- **Code tools** (OpenCode/Claude) for writing GDScript, debugging, planning, refactoring
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

## Lesson 1.2 — Diagnosing Bugs with AI

Students apply their prompting skills to real bugs. They play buggy games, describe what feels wrong to an AI tool, and fix the problem — no code reading required.

### Live Demo: `platformer-hazard-demo`
The instructor plays a simple 2D platformer live. The player touches a spike hazard and health drains far too fast — a realistic bug caused by damage being applied every physics frame instead of once per contact. Students watch the instructor describe the symptom to an AI tool and apply the fix in real time.

**Bug:** `hazard.gd` uses `_physics_process` + `get_overlapping_bodies()` with no cooldown, dealing damage every frame (~60x/sec) instead of once per hit.

### Hands-on Exercise: `visual-bug-hunt`
Students open their assigned variant, play the level, and describe what feels wrong to an AI coding assistant. Three variants, each with one intentional bug:

| Variant | Folder | Bug |
|---|---|---|
| A | `variant-a-speed` | Player moves ~3.75x too fast — twitchy, uncontrollable |
| B | `variant-b-gravity` | Gravity is ~5x too weak — jump feels floaty, moon-like |
| C | `variant-c-collision` | Raised ledge is on a different collision layer — player falls through it |

Each variant is a fully independent Godot 4 project. Students only ever open their assigned folder.

---

## Lesson 1.3 — Setting Up an AI-Assisted Workflow

Students bring together everything from Lessons 1.1 and 1.2 to build a game from scratch using the core development loop: **Prompt → Review → Test → Commit**.

1. **Generate a game spec with AI** — students prompt an AI tool to co-create a small game spec, then refine it
2. **Build from the spec** — using the loop, they implement the game feature by feature, committing after each working step
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

## How to Open a Godot Project

1. Open **Godot 4**
2. Click **Import** → navigate to the project folder (e.g. `Lesson 1/Lesson 1.2/platformer-hazard-demo/`)
3. Select `project.godot` → **Import & Edit**
4. Press **F5** (or the Play button) to run

**Controls:** `A` / `D` or arrow keys to move — `Space` or `Up` to jump

---

## Tech

- Engine: Godot 4.x
- Language: GDScript
- No external plugins or addons
