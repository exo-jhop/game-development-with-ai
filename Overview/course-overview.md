# Game Development with AI — Course Overview

## Course Philosophy

**Student = Director. AI = Developer.**

Students learn to direct AI tools to build complete games. They never write code, read code, or learn engine internals. Instead, they master the skills that make AI effective: precise communication, game design vocabulary, iterative feedback, and project management.

By the end of the course, every student will have designed, directed, and shipped an original game — built entirely through AI collaboration.

---

## Course Arc

**Foundation (Lessons 1–2):** Learn the tools and build the vocabulary
**Building (Lessons 3–5):** Direct AI to build game mechanics, assets, and polish
**Independence (Lessons 6–8):** Plan, build, and ship an original game

---

## Tools

**Code AI:** OpenCode / Claude — generates GDScript, debugs, plans, refactors
**Asset AI:** Gemini / Google Flow/music — generates sprites, tilesets, UI, audio
**Engine:** Godot 4 — students run and test games, but never learn the interface in depth
**Version Control:** GitHub — commit history as portfolio evidence

---

## Technical Safety Nets

Zero engine knowledge creates real failure points if left unaddressed: AI can guess the wrong scene structure, hallucinate outdated Godot syntax, or generate assets that don't actually work once imported. We don't fix these by teaching Godot internals — that would undo the whole premise of the course. Instead, every risk is handled by a technique the student can use without ever reading code or opening a node inspector:

| Risk | Fix | Why it doesn't require engine knowledge |
|---|---|---|
| AI assumes a scene structure that doesn't match the project, and the game breaks | Every project starts from an **instructor-provided starter template** with a fixed, documented structure. AI is given that structure as context automatically — students never design it themselves | The structure is fixed and given, not something the student builds or reasons about |
| AI tools quietly mix up Godot 3 and Godot 4 syntax, causing repeated broken fixes | A **Godot 4.x lock-in line** goes at the top of every project prompt (see prompt-cheatsheet.md, Lesson 1.1): "Target Godot 4.x syntax only. Do not use deprecated Godot 3 APIs." | It's one guardrail sentence the student pastes — pure prompt engineering |
| "It feels wrong" is too vague for AI to fix efficiently | Students pair their symptom description with the **exact error text** copied from Godot's Output panel, when one appears | Copying red text is not reading or understanding code — it's evidence, like a screenshot |
| AI-generated art doesn't "just work" once imported — sprite sheets need slicing, tiles need collision, UI needs anchoring | These are **explicit AI directives**, never manual steps: "slice this into 4 equal frames," "set up a collision shape matching the sprite bounds," "anchor this button to the bottom-right corner" | The student describes the desired outcome; AI performs the integration |

These four techniques are woven into Lessons 1.1, 1.2, 3.3, and 4 below — look for the 🛡️ marker.

---

## Lesson Map

### PRE-WORK — Before Lesson 1

**Lesson 0: Setup**
- 0.1 Pre-Work Setup Checklist

### FOUNDATION PHASE — Learning to Direct AI

**Lesson 1: AI Fundamentals for Game Dev**
- 1.1 Prompting Strategies for Game Dev
- 1.2 Diagnosing Problems with AI
- 1.3 The AI Development Loop

**Lesson 2: Game Design Vocabulary**
- 2.1 Core Game Concepts
- 2.2 Describing Game Feel to AI
- 2.3 Visual & Audio Direction

### BUILDING PHASE — Directing AI to Build a Game

**Lesson 3: Directing AI for Core Mechanics**
- 3.1 Breaking a Game into AI-Sized Tasks
- 3.2 Iterating When AI Gets It Wrong
- 3.3 Directing AI for Game Systems

**Lesson 4: AI-Generated Assets**
- 4.1 Character & Environment Art with AI
- 4.2 UI Art, Audio & Animation Assets

**Lesson 5: Level Design & Game Feel**
- 5.1 Level Design as Direction
- 5.2 Directing AI for Enemies, Hazards & Game Feel

### INDEPENDENCE PHASE — Your Own Game

**Lesson 6: Planning Your Game**
- 6.1 Game Design Document as AI Brief
- 6.2 Project Planning for AI Development

**Lesson 7: Building & Polishing Your Game**
- 7.1 Directed Implementation
- 7.2 Polish, Playtest & Iterate

**Lesson 8: Ship It**
- 8.1 Export & Publish
- 8.2 Present & Reflect

*(Full learning objectives, key content, activities, deliverables, and materials for every sub-lesson are listed below.)*

---

## PRE-WORK — Before Lesson 1

### Lesson 0: Setup

*Goal: Every student arrives at Lesson 1 with a working toolchain, so class time is spent directing AI, not troubleshooting installs.*

---

#### Lesson 0.1: Pre-Work Setup Checklist

**Learning Objectives:**
- Install and launch Godot 4
- Confirm access to a working code AI tool and asset AI tool
- Create a GitHub account
- Open the course starter template and confirm it runs

**Key Content:**
- Installing Godot 4.x (not Godot 3 — the whole course locks AI prompts to Godot 4 syntax)
- Verifying AI tool access with a throwaway test prompt/image
- Opening the starter template: Import → select folder → Import & Edit → Play — the only four clicks in the editor this checklist requires
- Basic file management: locating and moving the template folder

**Activities:**
- Work through the setup checklist and check off each item

**Deliverables:**
- Confirmed working Godot install, AI tool access, GitHub account, and a running starter template

**Materials:** setup-checklist.md

---

## FOUNDATION PHASE — Learning to Direct AI

### Lesson 1: AI Fundamentals for Game Dev

*Goal: Students learn which AI tools to use, how to talk to them, and the core development loop.*

---

#### Lesson 1.1: Prompting Strategies for Game Dev

**Learning Objectives:**
- Name 3 game dev tasks AI handles well, and 3 it doesn't
- Write prompts that get useful, specific results
- Choose the right AI tool for each task type

**Key Content:**
- Code tools (OpenCode/Claude) vs asset tools (Gemini/Google Flow)
- 6 prompting strategies: Be Specific, One Feature Per Prompt, Describe Symptoms, Share Files, Ask for Explanations, Right Tool for the Job
- 🛡️ The Godot 4.x lock-in line: a guardrail sentence added to every project prompt so AI never hallucinates outdated Godot 3 syntax

**Activities:**
- 8-scenario exercise: pick tools and write prompts

**Deliverables:**
- Completed exercise with tool choices and real prompts

**Materials:** guide.md, prompt-cheatsheet.md, exercise.md

---

#### Lesson 1.2: Diagnosing Problems with AI

**Learning Objectives:**
- Play a game and notice when something feels wrong
- Describe a bug to an AI tool clearly enough to get a fix
- Apply a fix and verify it works

**Key Content:**
- Symptom-first debugging: describe what you see, not what you guess
- Using AI to locate and fix bugs without reading code
- You never need to look at the code — just describe the problem
- 🛡️ Pairing symptoms with error text: when Godot shows a red error message in the Output panel, copy-paste it alongside your symptom description. This is not code reading — it's handing AI more precise evidence, the same way you'd forward an error screenshot to tech support

**Activities:**
- Live demo: platformer-hazard-demo (damage every frame bug)
- Hands-on: visual-bug-hunt with 3 variants (speed, gravity, collision)

**Deliverables:**
- Fixed bug in assigned variant
- Clear description of what was wrong and how AI helped

**Materials:** guide.md, platformer-hazard-demo/, visual-bug-hunt/, bug-hunt-exercise/

---

#### Lesson 1.3: The AI Development Loop

**Learning Objectives:**
- Use the Prompt → Review → Test → Commit loop
- Generate and refine a game spec with AI
- Build a working game from a spec using iterative AI prompts

**Key Content:**
- The core development loop: Prompt → Review → Test → Commit
- "Review" means playtesting the result, not reading code
- Writing a game spec collaboratively with AI
- Git workflow: commit after each working feature
- 🛡️ Starting from the course starter template: every project begins from an instructor-provided Godot 4 project with a fixed, documented structure. AI is told this structure up front, so it never has to guess — and students never have to design or explain one themselves

**Activities:**
- Generate a game spec with AI
- Build 3 features using the loop, committing after each
- Fill in workflow log template

**Deliverables:**
- Filled-in game spec (spec-template.md)
- Working Godot 4 project with at least 3 git commits
- Completed workflow log (workflow-log-template.md)

**Materials:** guide.md, spec-template.md, workflow-log-template.md

---

### Lesson 2: Game Design Vocabulary

*Goal: Students learn the language of game design so they can direct AI precisely. This is not about learning the engine — it's about building the vocabulary that makes prompts 10x more effective.*

---

#### Lesson 2.1: Core Game Concepts

**Learning Objectives:**
- Describe a game using the MDA framework (mechanics, dynamics, aesthetics)
- Identify genres by their defining mechanics
- Map out a game loop and list player verbs
- Write AI prompts that use game design vocabulary

**Key Content:**
- Mechanics, dynamics, aesthetics — simplified MDA framework
- Game genres and their defining mechanics (platformer, puzzle, shooter, etc.)
- The game loop: start → play → win/lose → restart
- Player verbs: what can the player DO? (move, jump, shoot, collect, avoid)
- Before/after prompt comparisons showing how vocabulary improves AI output

**Activities:**
- Analyze 3 games by listing their player verbs and core loop
- Write AI prompts describing a game using vocabulary from this lesson

**Deliverables:**
- Completed game analysis for 3 games
- AI prompts using game design vocabulary

**Materials:** game-concepts-guide.md, game-analysis-exercise.md

---

#### Lesson 2.2: Describing Game Feel to AI

**Learning Objectives:**
- Use precise vocabulary to describe how a game feels
- Translate feelings into specific AI prompts
- Use reference games as shorthand for complex behaviors

**Key Content:**
- Game feel vocabulary: responsive, floaty, tight, snappy, heavy, slippery, punchy, weighty, crisp
- Movement descriptors: speed, acceleration, air control, gravity weight, coyote time
- Feedback vocabulary: screen shake, hitstop, squash & stretch, particles, flash, knockback
- Reference games as shorthand: "Mario-style jumping" vs "Celeste-style dashing"
- Before/after examples showing how precise language gets better AI results

**Activities:**
- Play 3 different games, describe how each FEELS using precise vocabulary
- Write prompts that translate feel descriptions into AI instructions

**Deliverables:**
- Feel descriptions for 3 games using precise vocabulary
- AI prompts that recreate a specific game feel

**Materials:** game-feel-vocabulary.md, feel-description-exercise.md

---

#### Lesson 2.3: Visual & Audio Direction

**Learning Objectives:**
- Use art style and audio vocabulary to direct AI asset tools
- Write a visual style brief AI can follow consistently
- Maintain consistency across multiple AI generations

**Key Content:**
- Art style vocabulary: pixel art, hand-drawn, flat, minimal, retro, vibrant, cel-shaded
- Color palette language: complementary, warm, cool, contrast, saturation
- Audio vocabulary: 8-bit, orchestral, ambient, chiptune, lo-fi, synthwave
- Writing a style brief that keeps AI consistent across multiple generations
- Consistency strategies: reference images, style anchors, describing what you DON'T want

**Activities:**
- Create a visual style brief and audio direction document for a game concept
- Use AI to generate assets matching the brief, iterate on consistency

**Deliverables:**
- Completed style brief
- Set of AI-generated assets that match the brief

**Materials:** style-direction-guide.md, style-brief-template.md

---

## BUILDING PHASE — Directing AI to Build a Game

### Lesson 3: Directing AI for Core Mechanics

*Goal: Students learn to break a game into AI-sized tasks, iterate when AI gets it wrong, and direct AI to build complete game systems.*

---

#### Lesson 3.1: Breaking a Game into AI-Sized Tasks

**Learning Objectives:**
- Decompose a game idea into tasks AI can handle one at a time
- Order tasks so each builds on the previous one
- Provide context so AI integrates new features with existing ones

**Key Content:**
- Feature decomposition: turning a game idea into a task list
- Task sizing: what's too big for one prompt? What's too small?
- Task ordering: core mechanic → supporting systems → polish
- The "one feature per prompt" rule in practice
- Context management: telling AI about your existing project so new features fit

**Activities:**
- Take a game concept and decompose it into 10+ ordered AI tasks
- Build the first 3 features using the Prompt → Test → Iterate loop

**Deliverables:**
- Complete task decomposition for a game concept
- 3 features built and tested through AI direction

**Materials:** task-decomposition-guide.md, task-list-template.md

---

#### Lesson 3.2: Iterating When AI Gets It Wrong

**Learning Objectives:**
- Identify three types of AI mistakes and respond to each
- Describe problems without reading code
- Decide when to refine, re-prompt, or start fresh

**Key Content:**
- Three types of mistakes: wrong thing, right thing done badly, broke something that worked
- Describing bugs without code: focus on behavior ("when I press jump, nothing happens")
- The re-prompt vs refine decision
- Providing context from previous attempts
- The escalation ladder: describe symptom → share context → ask AI to review → start fresh
- Stacking changes without AI overwriting previous work

**Activities:**
- Build a feature, then direct AI through 3 rounds of iteration to improve it

**Deliverables:**
- Documented iteration cycle showing how prompts evolved across 3 rounds

**Materials:** iteration-guide.md, common-ai-mistakes.md

---

#### Lesson 3.3: Directing AI for Game Systems

**Learning Objectives:**
- Describe UI, menus, and HUD to AI clearly enough to get working results
- Direct AI to add audio, save/load, and game flow to an existing game
- Give system-level instructions that integrate without breaking existing features

**Key Content:**
- How to describe UI/menus to AI (reference screenshots, describe layout and behavior)
- How to describe audio needs ("play a coin sound when the player touches a coin")
- How to describe save/load ("save the player's score when they quit, load it when they start")
- How to describe game flow ("when the player dies, show a Game Over screen with Retry")
- Integration prompts: telling AI what exists and what NOT to change
- 🛡️ Wiring is an AI task, not a student skill: connecting a button to a scene change, hooking a signal to a sound, or linking a save file to a menu are described in plain language and performed entirely by AI

**Activities:**
- Direct AI to add a menu, HUD, sound effects, and save/load to an existing game

**Deliverables:**
- Game with working menu, HUD, audio, and save/load — all built through AI direction

**Materials:** systems-direction-guide.md, system-prompt-examples.md

---

### Lesson 4: AI-Generated Assets

*Goal: Students learn to direct AI art and audio tools to create consistent, game-ready assets and integrate them into their projects.*

---

#### Lesson 4.1: Character & Environment Art with AI

**Learning Objectives:**
- Direct AI to generate game-ready character sprites with style consistency
- Create tilesets and backgrounds that work together visually
- Use a style brief to maintain consistency across multiple generations

**Key Content:**
- Prompting for game-ready sprites: style consistency, transparency, size specifications
- Building a visual style guide AI can follow across multiple generations
- Tilesets: how to describe tiles so they connect properly
- Backgrounds: parallax layers, seamless tiling, depth
- Iteration: when the art doesn't match, how to redirect AI
- 🛡️ Integration is an AI task: generating an asset is only half the job. Slicing a sprite sheet into frames, setting up a collision shape, and configuring tile physics are directed in plain language ("slice this into 6 equal frames," "match the collision shape to the sprite bounds") — never a manual engine step the student performs

**Activities:**
- Generate a complete character sprite set and environment tileset using a style brief
- Direct AI to slice and integrate the generated assets into the starter project

**Deliverables:**
- Character sprite set with consistent style
- Working tileset that tiles correctly

**Materials:** art-direction-guide.md, art-prompt-examples.md

---

#### Lesson 4.2: UI Art, Audio & Animation Assets

**Learning Objectives:**
- Direct AI to create UI elements that match the game's visual style
- Generate sound effects and music that enhance the game feel
- Create animation frames and describe animation sequences to AI

**Key Content:**
- Directing AI for UI elements: buttons, panels, icons that match the game style
- AI audio generation: sound effects, background music, style matching
- Animation from AI sprites: describing frame sequences to AI
- Asset organization: keeping files structured for easy integration

**Activities:**
- Generate a complete asset set (UI, audio, animation frames) for a game

**Deliverables:**
- UI asset set matching the game's style
- Sound effects and music for key game events
- Animation frames for at least one character action

**Materials:** asset-production-guide.md, asset-checklist.md

---

### Lesson 5: Level Design & Game Feel

*Goal: Students learn level design principles and how to direct AI to implement engaging gameplay with polish and juice.*

---

#### Lesson 5.1: Level Design as Direction

**Learning Objectives:**
- Use level design vocabulary to plan engaging levels
- Apply the "introduce, develop, twist, conclude" pattern
- Describe level layouts to AI using sketches, references, and spatial descriptions

**Key Content:**
- Level design vocabulary: pacing, difficulty curve, flow, challenge/reward balance
- The "introduce, develop, twist, conclude" pattern (Nintendo's design philosophy)
- Difficulty curves: linear, staircase, sawtooth
- Pacing: alternating high-intensity and low-intensity sections
- Greyboxing: prototyping with placeholders before adding art
- Three ways to describe levels to AI: spatial descriptions, section-based, reference-based

**Activities:**
- Sketch a 3-section level on paper, then direct AI to build it

**Deliverables:**
- Level sketch with section-by-section plan
- Working level built through AI direction

**Materials:** level-design-guide.md, level-sketch-template.md

---

#### Lesson 5.2: Directing AI for Enemies, Hazards & Game Feel

**Learning Objectives:**
- Describe enemy behaviors and hazards to AI in plain language
- Direct AI to add visual telegraphing for fair gameplay
- Run a "polish pass" — directing AI to make a game feel great

**Key Content:**
- Describing enemy behaviors: "patrols back and forth, chases when player gets close"
- Describing hazards: "spikes that kill on touch," "platform that falls after 1 second"
- Visual telegraphing: asking AI to add warnings before hazards activate
- Game juice prompting: screen shake, particles, sound effects, visual feedback
- The polish pass: systematically directing AI to improve every interaction

**Activities:**
- Take a basic game and direct AI through a complete polish pass (enemies, hazards, juice)

**Deliverables:**
- Game with enemies, hazards, and polish — all described and iterated through AI

**Materials:** direction-for-gameplay-guide.md, polish-prompt-library.md

---

## INDEPENDENCE PHASE — Your Own Game

### Lesson 6: Planning Your Game

*Goal: Students design their own original game, creating a complete plan that serves as a brief for AI development.*

---

#### Lesson 6.1: Game Design Document as AI Brief

**Learning Objectives:**
- Write a Game Design Document that serves as a communication tool for AI
- Define concept, mechanics, and scope with AI-ready descriptions
- Scope a project that's achievable in the remaining lessons

**Key Content:**
- The GDD as a communication tool: writing it FOR AI, not just for yourself
- Concept, mechanics, art style, audio — with AI-ready descriptions
- Scoping with AI: what's achievable, what to cut, the "vertical slice" approach
- Using AI to brainstorm, refine, and validate ideas

**Activities:**
- Brainstorm 3 game concepts with AI, pick 1, write a complete GDD

**Deliverables:**
- Completed Game Design Document

**Materials:** gdd-template.md, scoping-guide.md

---

#### Lesson 6.2: Project Planning for AI Development

**Learning Objectives:**
- Break a GDD into milestones with AI task lists
- Plan an asset pipeline: what to generate, in what order
- Validate the core mechanic with a prototype before committing

**Key Content:**
- Breaking the GDD into milestones with ordered task lists
- Asset planning: what to generate, in what order, with what tools
- Risk management: what if AI can't do what you need?
- Prototype-first: validating core feel before building everything

**Activities:**
- Create a milestone plan and asset list
- Build a greybox prototype of the core mechanic with AI

**Deliverables:**
- Milestone plan with 3 milestones
- Asset list with categories and priorities
- Playable greybox prototype

**Materials:** milestone-template.md, asset-planning-guide.md, prototype-checklist.md, technical-planning-guide.md

---

### Lesson 7: Building & Polishing Your Game

*Goal: Students build their game by directing AI through their milestone plan, then polish and playtest it.*

---

#### Lesson 7.1: Directed Implementation

**Learning Objectives:**
- Work through a milestone plan by directing AI feature by feature
- Manage context when the project gets too big for one prompt
- Debug at scale: when AI breaks something that used to work

**Key Content:**
- Working through milestones: core mechanics → systems → content
- Managing complexity: project summaries, file context, "here's what exists so far"
- Context strategies for large projects
- Debugging at scale: when new features break old ones

**Activities:**
- Build through Milestone 1 (core mechanics) and Milestone 2 (systems and content)

**Deliverables:**
- Playable game with core mechanics and systems working
- Git history showing iterative development

**Materials:** implementation-guide.md, context-management-guide.md

---

#### Lesson 7.2: Polish, Playtest & Iterate

**Learning Objectives:**
- Direct a complete polish pass: game juice, audio, visual effects
- Run a playtest session and collect structured feedback
- Translate player feedback into AI prompts for fixes

**Key Content:**
- Directing the polish pass: game feel, audio, particles, animation
- Running a playtest: what to watch for, what questions to ask
- Translating feedback into AI prompts: "testers said jumping feels floaty" → specific prompt
- Feedback triage: must-fix vs nice-to-have vs out-of-scope
- Knowing when it's done: the definition of "good enough"

**Activities:**
- Playtest with a partner, document feedback, direct AI through fixes

**Deliverables:**
- Playtest feedback document
- Revised game with top-priority fixes applied

**Materials:** polish-guide.md, playtest-guide.md, feedback-template.md

---

### Lesson 8: Ship It

*Goal: Students export their game, present it to the class, and reflect on their development journey.*

---

#### Lesson 8.1: Export & Publish

**Learning Objectives:**
- Direct AI to help with export setup
- Create a game page with screenshots, description, and branding
- Publish a playable build

**Key Content:**
- Directing AI to help configure export settings
- Creating compelling screenshots and descriptions
- Publishing to itch.io or similar platforms
- Building a shareable game page

**Activities:**
- Export the game for at least one platform
- Create a game page with description and screenshots

**Deliverables:**
- Exported game build
- Published game page

**Materials:** export-guide.md

---

#### Lesson 8.2: Present & Reflect

**Learning Objectives:**
- Present a game to an audience with a live demo
- Give constructive feedback on classmates' games
- Reflect on the development process and set future learning goals

**Key Content:**
- Presentation structure: concept, demo, development story, what AI did
- Live demo best practices: have a backup, know your build, practice the path
- Constructive feedback: specific, actionable, kind
- Retrospective: what went well, what was hard, how AI helped
- Portfolio building: documenting your work for the future
- Continued learning: game dev communities, game jams, AI tools as long-term partner

**Activities:**
- 5-minute presentation + live demo to the class
- Written feedback for 3 classmates' games
- Development retrospective
- Portfolio entry for the game

**Deliverables:**
- Presentation (slides or outline)
- Written feedback for 3 games
- Completed retrospective
- Portfolio entry with screenshots, description, and game link

**Materials:** presentation-template.md, feedback-rubric.md, retrospective-template.md, portfolio-guide.md

---

## Workshop Outcomes

**What Students Walk Away With:**
- A working game they directed AI to build from scratch
- Confidence directing AI for code generation, debugging, and asset creation
- A repeatable workflow (Prompt → Review → Test → Commit) they can use on any project
- Game design vocabulary that makes their AI prompts 10x more effective
- A portfolio-ready project with git history showing their development process

**Workshop Checkpoints:**
- **Milestone 1 (Lessons 1–2):** Students can use AI tools effectively and describe games using design vocabulary
- **Milestone 2 (Lessons 3–5):** Students can direct AI to build mechanics, generate assets, design levels, and polish gameplay
- **Milestone 3 (Lessons 6–8):** Students have planned, directed, polished, and shipped an original game

---

## Prerequisites

Students need:
- A computer that can run Godot 4
- A GitHub account
- Access to at least one AI coding tool (OpenCode or Claude)
- Access to at least one AI image tool (Gemini or Google Flow)
- No prior game development or programming experience required
- Basic computer literacy (file management, web browsing, typing)
