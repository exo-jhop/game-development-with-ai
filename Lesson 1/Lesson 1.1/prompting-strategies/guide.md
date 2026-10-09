# Lesson 1.1: Prompting Strategies for Game Dev

## What You'll Learn

Not all AI tools are the same. Different tools are better at different tasks. This lesson teaches you:

1. Which tool to reach for depending on what you're doing
2. How to write prompts that get useful results for game development
3. When to use a code-focused tool vs. an asset-focused tool

You are the director. The AI is the developer. You never need to read or write code, learn Godot's interface, or know what a "node" is. Your job is to describe what you want, play the result, and say what to change.

---

## Your Toolkit

### Code & Logic Tools

These are for building your game's behavior — movement, rules, scoring, bugs. You describe what you want in plain language; the AI writes and wires everything up.

| Tool | What It Is | Cost | Best For |
|---|---|---|---|
| **OpenCode** | AI-powered development assistant | Free | Building features, fixing bugs, structuring your project |
| **Godot** | The game engine | Free | Running and playing your game |
| **GitHub** | Version control + collaboration | Free | Saving your progress, tracking changes, sharing projects |

#### Installing OpenCode

```bash
npm install -g @opencode/cli
```

OpenCode works best with Claude as its AI backend (paid), but can be configured with other models.

#### When to Use Code Tools

- **Planning a new feature** — "I want to add a scoring system. What would I need to build for that?"
- **Brainstorming mechanics** — "What are 3 simple ways to add difficulty progression to a collect-the-coins game?"
- **Building something new** — "Make my player move left and right and jump. I want it to feel snappy and responsive, not floaty."
- **Simplifying something that's grown complicated** — "My game has a lot going on now and it's getting harder to add things without breaking other things. Can we clean this up?"
- **Describing a problem across features** — "The player takes damage but the health bar on screen doesn't update when it happens."
- **Debugging** — "When I jump and land on a moving platform, my character slides off instead of standing on it."

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

### Strategy 1: Be Specific About Behavior and Feel

Bad prompt:
> Make a player script

Good prompt:
> My player should move left and right with A/D at a brisk walking speed, and jump with Space. It should feel tight and responsive — no floaty landings, no sliding around after you stop pressing a key.

**Why it works:** You described exactly how it should behave and how it should feel, not just what it is. "Feels tight and responsive" and "no sliding after stopping" give the AI real targets to hit — and give you something concrete to check for when you playtest.

---

### Strategy 2: One Feature Per Prompt

Bad prompt:
> Build my whole game with a player, 3 enemies, a scoring system, health bar, game over screen, and a main menu

Good prompt:
> Add a coin that disappears when the player touches it and adds 1 to the score.

**Why it works:** Small prompts give you one thing you can actually playtest and confirm works. Big prompts give you a pile of changes where something is quietly broken and you have no idea where.

---

### Strategy 3: Describe Symptoms, Not Solutions

Bad prompt:
> Fix my collision

Good prompt:
> When my player jumps onto the platform, they fall through it instead of landing on top. The ground floor works fine.

**Why it works:** You described what you see happening vs. what should happen, and let the AI figure out the cause. If you say "fix my collision," you're guessing at a cause you can't actually verify — let the AI do that work.

---

### Strategy 4: Hand Over the Exact Error, Not a Paraphrase

When something breaks, Godot's Output or Debugger panel often shows a red error message. You don't need to understand a word of it — just copy the exact text and paste it into your prompt alongside what you saw happen. This is the single most useful thing you can hand the AI: it's like forwarding an error screenshot to tech support instead of describing it from memory.

Bad prompt:
> My enemy doesn't chase the player, something's broken

Good prompt:
> My enemy doesn't chase the player. Here's the exact error Godot showed in red: "Invalid get index 'position' (on base: 'null instance')". The enemy should move toward the player when the player gets close.

**Why it works:** The exact error text is precise evidence. Paraphrasing it ("something about null") loses the one detail that would let the AI find the bug immediately.

---

### Strategy 5: Ask AI to Explain Its Design Decisions

Don't just accept what the AI builds — ask it to explain *why* it made the choices it made, in plain terms, so you can decide if you agree.

> Why did you make the jump feel the way it does? What would change if we made it floatier or snappier?

> You said enemies should "lose interest" if the player gets too far away. Why did you design it that way instead of having them chase forever?

**Why it works:** Understanding the reasoning behind a design decision — not the code that implements it — helps you direct more precisely next time and catch "that's not what I meant" moments faster.

---

### Strategy 6: Use the Right Tool for the Job

| Task | Use This |
|---|---|
| Build or change gameplay behavior | OpenCode / Claude |
| Plan out a new feature | OpenCode / Claude |
| Debug something that's broken | OpenCode / Claude |
| Simplify a game that's gotten tangled | OpenCode / Claude |
| Generate a sprite or tileset concept | Gemini / Google Flow |
| Mock up a UI layout | Gemini / Google Flow |
| Get a color palette for your game | Gemini / Google Flow |
| Describe what your game should look like | Gemini / Google Flow |

The rule is simple: **gameplay and behavior questions go to code tools, visual questions go to visual tools.**

---

## Guardrails: Keep the AI on Target

Two habits protect you from AI mistakes without requiring you to read or write anything:

**Always start from the starter template.** Every project begins from the instructor-provided Godot 4 starter project. It has a fixed, known structure before you ever touch it. You never design or build this structure yourself — it's given to you, and it means the AI always has consistent, reliable context about "what already exists" in your project without you needing to describe or understand it.

**Add the Godot 4.x lock-in line to your prompts.** AI models sometimes default to outdated syntax from older versions of Godot. Add this sentence to prompts, especially early ones or ones involving something new:

> Target Godot 4.x syntax only. Do not use deprecated Godot 3 APIs.

This is pure prompt engineering — you're not touching code, just telling the AI which rulebook to follow.

---

## Common Mistakes

| Mistake | Why It Fails | Instead |
|---|---|---|
| Asking for the whole game at once | Too much changes at once, impossible to playtest properly | Ask for one feature at a time |
| Using vague prompts | AI guesses wrong, you waste time going back and forth | Be specific about behavior and feel |
| Only using one tool for everything | Code tools are bad at images, image tools are bad at gameplay | Match the tool to the task |
| Never asking "why" | You can't direct precisely or catch mismatched expectations | Ask the AI to explain its design choices |
| Describing a bug from memory instead of pasting the error | You lose the exact detail that would solve it fast | Copy-paste the exact error text Godot shows you |
