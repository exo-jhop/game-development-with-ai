# Prompt Cheatsheet for Game Dev

Quick-reference prompt templates. Copy, fill in the blanks, and use.

Remember: you never need to read or write code. Every template below works with plain-language descriptions of behavior, feel, and what you observe when you play.

---

## Planning Features

### Start a new feature
> I'm building a [game type] in Godot 4. I want to add [feature]. Before building it, describe in plain language what will change and how it should behave and feel.

### Brainstorm mechanics
> I have a simple 2D [game type] in Godot 4. Suggest 3 ways to add [difficulty / variety / progression]. Keep it simple — I'm a beginner.

### Describe a new element
> My game currently has [describe what exists so far, in plain language]. I want to add [new element]. How should it behave, and how should it interact with what's already there?

### Build something new
> Add [feature] to my game. It should [describe behavior]. It should feel [describe the feel: snappy, slow and heavy, floaty, etc]. Target Godot 4.x syntax only. Do not use deprecated Godot 3 APIs.

---

## Fixing Problems

### Describe the symptom
> In my Godot 4 project, [what happens] when I [action]. I expected [what should happen instead].

### Hand over the exact error
> Here's what I see: [describe the symptom]. Here's the exact error Godot showed in the Output/Debugger panel: [paste the exact error text]. What's going on and how do we fix it?

### Physics / collision feels wrong
> My [character / object] is [falling through / not detecting / behaving strangely] when it touches [other object]. Here's what I expect to happen instead: [describe].

### Something isn't connecting
> I set up [button / object / event] to trigger [action], but nothing happens when I [test it]. Here's the exact error Godot showed, if any: [paste error, or say "no error shown"].

---

## Iterating & Redirecting

### Close but not quite right
> This is close, but [what's off]. Can you adjust it so [what you want instead]?

### Too much, too fast
> That changed more than I expected. Can we go back to how [feature] worked before, and only change [the specific thing]?

### Feel adjustment
> The [jump / movement / attack] feels [too slow / too floaty / too stiff]. Make it feel more [snappy / weighty / responsive] without changing anything else.

### Scope check before a big change
> Before you build this, tell me in plain language what's going to change and whether it affects anything I've already built.

---

## Asset & Visual Prompts (for Gemini / Google Flow)

### Sprite concept
> Draw a [style: pixel art / flat / cartoon] [subject] for a 2D game. Size: [WxH pixels]. View: [side / top-down / front]. Color palette: [describe or list colors].

### Tileset
> Create a [style] tileset for a [environment type] in a 2D game. Grid size: [16x16 / 32x32]. Include: [ground, walls, decorations, etc]. Seamless edges.

### UI mockup
> Sketch a simple game HUD for a [game type]. Show: [list elements like health bar, score, minimap]. Style: [minimal / retro / clean]. Dark background.

### Color palette
> Suggest a [N]-color palette for a [mood / theme] game level. Give hex codes. The palette should work for [backgrounds / characters / UI].

### Character design
> Show [N] character designs for a [role: hero / enemy / NPC] in a [game type]. Style: [pixel art / vector / hand-drawn]. [Size / view angle]. Include [weapon / armor / feature].

---

## Guardrails

Add these to prompts to keep the AI from drifting off target — no code reading required.

### The Godot 4.x lock-in line
> Target Godot 4.x syntax only. Do not use deprecated Godot 3 APIs.

Add this to any prompt where the AI is building or changing something, especially early in a project or when trying something new.

### Stay inside the starter template
> Work within the existing project structure from the starter template. Don't restructure or reorganize the project — only add or change what's needed for this feature.

This keeps every change predictable and keeps the AI from quietly rearranging things you didn't ask it to touch.

---

## Meta Prompts (Prompts About Prompting)

### When you're stuck
> I'm building a [game type] in Godot 4. I'm stuck on [problem]. I'm a beginner. Ask me 3 questions that would help you give me a useful answer.

### When the AI gives too much
> That's more than I need. Just do [specific part] and explain your decision in 2 sentences.

### When you don't understand why it did something
> Explain your design choice in plain terms. Why did you build it that way instead of [alternative]? What would change if we did it the other way?
