# Scoping Guide: How to Plan a Game You Can Actually Finish

The number one reason game projects fail is scope. Not bugs, not bad art, not lack of skill -- scope. This guide teaches you how to plan a project that you can realistically complete.

---

## Why Scoping Matters

Every game idea feels simple in your head. Then you start building and discover that "simple" still means hundreds of decisions, dozens of assets, and countless interconnected systems. Scoping is the practice of deciding what your game IS and -- equally important -- what it IS NOT.

A well-scoped project:
- Has a clear finish line you can reach
- Stays motivating because you see progress
- Produces a playable result, not an abandoned folder

A poorly-scoped project:
- Keeps growing with "one more feature"
- Never feels done
- Gets abandoned when motivation drops

---

## Estimating Complexity

Before you commit to a feature, ask yourself three questions:

**1. Have I built something like this before?**
- Yes: You can estimate time reasonably well.
- No: Multiply your guess by 3. Seriously.

**2. How many systems does this feature touch?**
- A feature that only involves the player (like a double jump) is simpler than one that involves the player, enemies, AND the level (like a grappling hook).
- Count the systems. More systems = more complexity = more time.

**3. Does this feature need custom art or audio?**
- Every custom asset adds time: creating it, importing it, integrating it, testing it.
- Placeholder art is your friend during development.

### Complexity Ratings

Use this scale when evaluating features:

| Rating | Description | Example | Estimated Time |
|--------|-------------|---------|----------------|
| Trivial | One small change, no art | Change jump height | 15 minutes |
| Simple | One behavior, basic art | Add a collectible coin | 1-2 hours |
| Medium | Multiple behaviors, some art | Enemy with patrol AI | 3-6 hours |
| Complex | Multiple systems, custom art | Boss fight with phases | 1-2 days |
| Major | New system from scratch | Save/load system | 2-5 days |

**Tip:** Beginners consistently underestimate by 2-5x. If you think it takes 2 hours, plan for 6.

---

## The Vertical Slice

A vertical slice is a single, complete piece of your game that demonstrates the full experience. Think of it as one perfect level instead of ten broken ones.

**What a vertical slice includes:**
- Core gameplay working and feeling good
- One complete level or area
- Basic UI (health, score, whatever the player needs)
- Win and lose conditions
- Placeholder art is fine, but gameplay must feel right

**What a vertical slice does NOT include:**
- Multiple levels
- All enemy types
- Menus and settings screens
- Polish and juice effects
- Story or cutscenes

**Why build a vertical slice first?**
- You discover problems early, before you build 10 levels on a broken foundation
- You have something playable to test and share for feedback
- You can judge if the game is actually fun before investing more time
- It keeps you motivated -- you have a working game, just a small one

**Milestone target:** Your first milestone should always be a vertical slice.

---

## Feature Prioritization: MoSCoW Method

Organize every feature in your GDD using the MoSCoW method:

### Must Have
Features the game literally cannot function without. If you removed this feature, the game would not be playable.

_Examples: Player movement, collision, at least one level, a way to win or lose._

**Test:** "Can a person play and understand my game without this?" If yes, it is not a Must.

### Should Have
Features that are important for the game to feel complete, but the game technically works without them.

_Examples: Sound effects, score display, multiple levels, a main menu._

### Could Have
Features that would improve the experience but are not essential. Add them if you have time.

_Examples: Particle effects, screen shake, animations for transitions, collectibles._

### Won't Have (This Time)
Features you want but are explicitly saving for later. Writing them down prevents scope creep because you acknowledge the idea without committing to it.

_Examples: Online multiplayer, procedural generation, modding support, a level editor._

**Rule of thumb:**
- Must Have = 40% of your total estimated time
- Should Have = 30%
- Could Have = 20%
- Won't Have = 0% (that is the point)
- The remaining 10% is for bug fixes and unexpected problems

---

## Common Beginner Scoping Mistakes

### Mistake 1: "Just One More Feature"
You finish the core mechanic and think "this would be so much better with X." Then Y. Then Z. Suddenly your simple game needs a crafting system, a skill tree, and dynamic weather.

**Fix:** Write your feature list before you start building. If a new idea comes up, it goes on the Won't Have list unless you remove something else.

### Mistake 2: Planning for Content Before Mechanics
Building 20 levels before your jump mechanic feels right means rebuilding 20 levels when you change the jump.

**Fix:** Get one level perfect first. Then scale up.

### Mistake 3: Comparing to Commercial Games
Commercial games are made by teams of 10-500 people over 2-5 years with millions in funding. Your game does not need to compete with them.

**Fix:** Compare your scope to other solo/student projects. Look at game jam entries for realistic scope references.

### Mistake 4: Underestimating "Simple" Features
"I'll just add a save system" -- save systems involve storing game data, handling files, designing data structures, and testing across every game state. Nothing is "just."

**Fix:** Before calling something simple, list every step needed to build it. If the list is longer than 5 steps, it is not simple.

### Mistake 5: All Design, No Prototype
Spending weeks writing a 50-page GDD before building anything. Your GDD is a living document -- it changes as you build.

**Fix:** Keep your GDD to 2-3 pages. Start prototyping within the first session.

---

## Using AI to Validate Your Scope

AI tools are excellent scope-checkers. Here are prompts you can use:

**Scope Check:**
"Here is my game concept and feature list: [paste your Must-Have list]. I am a beginner game developer directing AI to build a 2D game. I have [X weeks] to complete this project. Is this scope realistic? What should I cut?"

**Complexity Estimate:**
"I want [specific feature] in my game. What systems and assets would this require? How complex is this for a beginner project?"

**Feature Decomposition:**
"Break down [feature] into individual tasks that can be completed one at a time. List them in order of dependency."

**Alternative Suggestions:**
"I want [complex feature] in my game but I think it might be too complex. Suggest a simpler version that gives a similar feeling."

**Warning Signs AI Can Catch:**
- Features that depend on systems you have not planned
- Scope that exceeds typical solo developer timelines
- Missing features that your game type requires (e.g., a platformer without checkpoints)

---

## Practical Exercise: Scope Your Game

Use this worksheet to scope the game you described in your GDD.

### Step 1: List Every Feature
Write down every feature your game needs. Do not filter yet -- get everything out of your head.

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.

### Step 2: Rate Complexity
Go back and rate each feature: Trivial / Simple / Medium / Complex / Major.

### Step 3: Categorize with MoSCoW
Label each feature: Must / Should / Could / Won't.

### Step 4: Add Up Time
Using the complexity table above, estimate total hours for your Must-Have features only. Is this realistic for your timeline?

### Step 5: The Reality Check
Answer these questions honestly:

- Total estimated hours for Must-Have features: ___
- Hours per week I can dedicate to this project: ___
- Weeks until my deadline: ___
- Total available hours: ___

**If estimated hours > 60% of available hours, cut features.** You need that remaining 40% for bugs, learning, and unexpected problems.

### Step 6: Final Feature List
Rewrite your Must-Have list after cutting. This is your real project scope.

1.
2.
3.
4.
5.

---

## Summary

- Scope is the most important planning decision you make
- Build a vertical slice before building content
- Use MoSCoW to prioritize ruthlessly
- Beginners underestimate by 2-5x -- plan accordingly
- Use AI to validate your scope and catch blind spots
- A finished small game is worth more than an abandoned big one
