# Lesson 1.3: Prompting Strategies for Game Dev

## What You'll Learn

Not all AI tools are the same. Different tools are better at different tasks. This lesson teaches you:

1. Which tool to reach for depending on what you're doing
2. How to write prompts that get useful results for game development
3. When to use a code-focused tool vs. an asset-focused tool

---

## Your Toolkit

### Code & Logic Tools

These are for writing code, planning architecture, debugging, and reasoning across multiple files.

| Tool | What It Is | Cost | Best For |
|---|---|---|---|
| **OpenCode** | AI-powered code editor in your terminal | Free | Writing GDScript, planning, refactoring, multi-file edits |
| **Godot** | The game engine | Free | Running and testing your game |
| **GitHub** | Version control + collaboration | Free | Storing code, tracking changes, sharing projects |

#### Installing OpenCode

```bash
npm install -g @opencode/cli
```

OpenCode works best with Claude as its AI backend (paid), but can be configured with other models.

#### When to Use Code Tools

- **Planning a new feature** — "I want to add a scoring system. What scenes and scripts do I need?"
- **Brainstorming mechanics** — "What are 3 simple ways to add difficulty progression to a collect-the-coins game?"
- **Writing new scripts** — "Create a player.gd script for a CharacterBody2D with left/right movement and jump"
- **Refactoring** — "This script is getting long. Help me split the player logic into separate movement and combat scripts"
- **Multi-file reasoning** — "The player takes damage but the health bar doesn't update. Here are both scripts — what's wrong?"
- **Debugging** — "When I jump and land on a moving platform, the player slides off. Here's my code."

---

### Asset & Visual Tools

These are for generating images, concept art, sprites, textures, and visual references. They understand visual descriptions better than code tools do.

| Tool | What It Is | Cost | Best For |
|---|---|---|---|
| **Gemini** | Google's AI model | Free | Describing visuals, generating sprite concepts, UI mockups |
| **Google Flow** | AI creative tool by Google | Free | Generating and iterating on images, game art concepts |

#### When to Use Asset Tools

- **Concept art** — "Draw a top-down 2D pixel art forest tileset, 16x16 tiles, green and brown palette"
- **Sprite ideas** — "Show me 4 character designs for a knight in pixel art style, 32x32, side view"
- **UI mockups** — "Sketch a simple HUD layout for a platformer: health bar top-left, score top-right, ability icon bottom-center"
- **Texture generation** — "Create a seamless stone wall texture for a dungeon game, pixel art style"
- **Color palettes** — "Suggest a 5-color palette for a spooky forest game level"

---

## Prompting Strategies

### Strategy 1: Be Specific About Context

Bad prompt:
> Make a player script

Good prompt:
> Create a GDScript for a CharacterBody2D in Godot 4. The player should move left/right with A/D keys at 200 pixels per second and jump with Space. Use move_and_slide() for physics.

**Why it works:** You told the AI the engine (Godot 4), the language (GDScript), the node type (CharacterBody2D), the controls, the speed, and the physics method. No guessing needed.

---

### Strategy 2: One Feature Per Prompt

Bad prompt:
> Build my whole game with a player, 3 enemies, a scoring system, health bar, game over screen, and a main menu

Good prompt:
> Add a coin scene (Area2D) that disappears when the player touches it and adds 1 to a score variable on the player.

**Why it works:** Small prompts give you code you can actually review and test. Big prompts give you a mountain of code with bugs hiding everywhere.

---

### Strategy 3: Describe Symptoms, Not Solutions

Bad prompt:
> Fix my collision code

Good prompt:
> When my player jumps onto the platform, they fall through it instead of landing on top. The ground floor works fine. Here's my player scene and platform scene.

**Why it works:** You described what you see happening vs. what should happen. The AI can figure out the cause — maybe it's collision layers, maybe it's shape size, maybe it's something else. If you say "fix my collision code," you're assuming the collision code is the problem.

---

### Strategy 4: Give the AI Your Files

When debugging or refactoring, don't just describe the problem — share the actual code. In OpenCode, the AI can see your project files directly. In other tools, paste the relevant scripts.

Bad prompt:
> My enemy doesn't chase the player

Good prompt:
> My enemy doesn't chase the player. Here's enemy.gd and player.gd. The enemy should move toward the player when within 200 pixels.

**Why it works:** The AI can spot the actual bug instead of guessing what your code looks like.

---

### Strategy 5: Ask for Explanations, Not Just Code

Don't just copy-paste what the AI gives you. Ask it to teach you.

> Explain what `move_and_slide()` does differently from `move_and_collide()` in Godot 4. When would I use each one?

> I see you used a signal called `body_entered`. What is a signal in Godot and how does this one work?

**Why it works:** Understanding the "why" helps you write better prompts later and catch bugs faster.

---

### Strategy 6: Use the Right Tool for the Job

| Task | Use This |
|---|---|
| Write a new GDScript | OpenCode / Claude |
| Plan how to structure scenes | OpenCode / Claude |
| Debug a crash or logic error | OpenCode / Claude |
| Refactor code across files | OpenCode / Claude |
| Generate a sprite or tileset concept | Gemini / Google Flow |
| Mock up a UI layout | Gemini / Google Flow |
| Get a color palette for your game | Gemini / Google Flow |
| Describe what your game should look like | Gemini / Google Flow |

The rule is simple: **code questions go to code tools, visual questions go to visual tools.**

---

## Common Mistakes

| Mistake | Why It Fails | Instead |
|---|---|---|
| Asking for the whole game at once | Too much code, too many bugs, impossible to review | Ask for one feature at a time |
| Not reading the code before adding it | You won't catch bugs or understand what's happening | Always review, even briefly |
| Using vague prompts | AI guesses wrong, you waste time going back and forth | Be specific about engine, language, node types |
| Only using one tool for everything | Code tools are bad at images, image tools are bad at code | Match the tool to the task |
| Never asking "why" | You learn nothing and can't debug on your own | Ask the AI to explain its choices |
