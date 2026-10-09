# Prompt Cheatsheet for Game Dev

Quick-reference prompt templates. Copy, fill in the blanks, and use.

---

## Planning & Architecture

### Start a new feature
> I'm building a [game type] in Godot 4 with GDScript. I want to add [feature]. What scenes and scripts do I need? Describe the structure before writing any code.

### Brainstorm mechanics
> I have a simple 2D [game type] in Godot 4. Suggest 3 ways to add [difficulty / variety / progression]. Keep it simple — I'm a beginner.

### Plan scene structure
> My game has [describe what exists so far]. I need to add [new element]. Should it be a new scene, a child node of an existing scene, or something else? Explain why.

---

## Writing Code

### New script from scratch
> Create a GDScript for Godot 4. Node type: [CharacterBody2D / Area2D / etc]. It should [describe behavior]. Use [specific controls / physics method / signals].

### Add a feature to existing code
> Here is my current [filename]. Add [feature] to it. Don't change the existing behavior, just add the new part.

### Connect two scripts
> I have [script A] on [node type] and [script B] on [node type]. I need them to communicate when [event happens]. Show me how to connect them using [signals / direct reference / groups].

---

## Debugging

### Describe the symptom
> In my Godot 4 project, [what happens] when I [action]. I expected [what should happen]. Here's [relevant script/scene]. What's wrong?

### Physics / collision bugs
> My [node type] is [falling through / not detecting / behaving strangely] when it interacts with [other node]. Here are the collision layers: [player layer/mask], [other layer/mask]. Here's the relevant code.

### Signal not firing
> I connected [signal name] on [node] to [method] on [other node]. The method never runs. Here's how I set up the connection and the method.

---

## Refactoring

### Split a long script
> This script is [X lines] and handles [list of responsibilities]. Help me split it into separate scripts. Show me the new file structure and how they communicate.

### Clean up code
> Here's my [filename]. Review it for readability. Rename unclear variables, remove duplicate code, and add any missing type hints. Don't change the behavior.

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

## Meta Prompts (Prompts About Prompting)

### When you're stuck
> I'm building a [game type] in Godot 4. I'm stuck on [problem]. I'm a beginner. Ask me 3 questions that would help you give me a useful answer.

### When the AI gives too much
> That's more than I need. Just show me the [specific part] and explain it in 2 sentences.

### When you don't understand the output
> Explain this code line by line. I don't know what [specific concept / function / syntax] means.
