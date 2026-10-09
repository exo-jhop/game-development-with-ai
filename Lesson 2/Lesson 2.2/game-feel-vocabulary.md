# Lesson 2.2: Describing Game Feel to AI

## What You'll Learn

"Game feel" is the invisible ingredient that separates a game that feels amazing from one that feels like a school project. It's the weight of a jump, the snap of a dash, the crunch of a hit. And here's the problem: most people can **feel** it but can't **describe** it.

In this lesson, you'll learn the precise vocabulary to describe game feel so that when you prompt AI, you get movement that feels right, combat that feels satisfying, and controls that feel tight.

By the end of this lesson, you will:
- Use specific terms to describe how movement, combat, and interactions should feel
- Reference well-known games as shorthand for complex feel
- Translate vague feelings into concrete, promptable descriptions
- Build a personal vocabulary reference for your AI prompts

---

## Why Game Feel Vocabulary Matters

Here's a prompt that every AI will struggle with:

> "Make the jumping feel good."

What does "good" mean? Fast? Floaty? Precise? Heavy? The AI has to guess — and it will probably guess wrong.

Now here's the same idea with game feel vocabulary:

> "Make the jumping feel snappy with a fast rise, a slower floaty fall, and coyote time of about 0.1 seconds. The player should feel precise control in the air, similar to Celeste."

That prompt will produce exactly the jumping you imagined. The difference is vocabulary.

---

## Core Feel Descriptors

These are the fundamental words game designers use to describe how something feels in a game. Learn these and you can describe almost any game feel.

### Responsive
The game reacts **immediately** to your input. No delay between pressing a button and seeing the result. The opposite of "laggy" or "sluggish."

*Use it when:* You want controls that feel instant and direct.

### Floaty
Movement has **low gravity and slow acceleration**. The character hangs in the air longer and drifts. Think of floating in water or on the moon.

*Use it when:* You want a dreamlike, weightless, or underwater quality.

### Tight
Controls are **precise and exact**. The character goes exactly where you point with minimal drift or overshoot. The player feels total control.

*Use it when:* You want precision platforming or exact movement.

### Snappy
Actions happen **fast and sharply**. Quick start, quick stop, no lingering. Things pop into place rather than easing into them.

*Use it when:* You want punchy, energetic, fast-paced action.

### Heavy
Movement has **weight and momentum**. The character takes time to get moving and time to stop. Actions feel powerful but committed — once you start, you can't easily change direction.

*Use it when:* You want characters to feel powerful, grounded, or realistic.

### Slippery
The character **slides and overshoots** when stopping or changing direction. Low friction. Think of walking on ice.

*Use it when:* You want an intentional challenge from imprecise controls, or an ice-level mechanic.

### Punchy
Impacts feel **strong and forceful**. Hits land with weight, enemies react dramatically, and the screen might shake. Actions have visible consequences.

*Use it when:* You want combat or actions that feel powerful and satisfying.

### Weighty
Similar to heavy, but focused on the **feeling of mass** in every action. Jumps have strong gravity pull. Landings feel impactful. Swings feel like they have momentum.

*Use it when:* You want the player to feel the physical weight of their character or weapons.

### Crisp
Every action has a **clean, defined start and end**. Animations snap to their key poses. There's no mushiness or ambiguity about what state the character is in.

*Use it when:* You want clarity and readability in movement and combat.

---

## Movement Descriptors

When describing how a character moves through your game, use these specific terms:

### Speed
How **fast** the character moves across the ground. Describe in relative terms: slow walk, brisk jog, full sprint, blazing fast.

### Acceleration
How quickly the character **reaches top speed** from standing still. High acceleration means instant top speed (snappy). Low acceleration means a gradual ramp-up (heavy, realistic).

### Deceleration
How quickly the character **stops** after releasing the input. High deceleration means instant stop (tight). Low deceleration means the character slides to a stop (slippery).

### Air Control
How much the player can **steer the character while in the air**. Full air control means you can completely change direction mid-jump. No air control means once you jump, your arc is committed.

### Gravity Weight
How **strong gravity pulls** the character down. Light gravity means floaty, high jumps. Heavy gravity means quick, grounded jumps. Many great platformers use asymmetric gravity — lighter on the way up, heavier on the way down.

### Jump Height
How **high** the character goes. But more importantly, describe the *shape* of the jump: is it a tall narrow arc or a wide flat arc? Does holding the button give a higher jump?

### Coyote Time
A small window of time (usually 0.05 to 0.15 seconds) where the player can still jump **after walking off a platform edge**. Named after cartoon characters running off cliffs. This makes platforming feel forgiving without the player noticing why.

### Jump Buffering
When the player presses jump **slightly before landing**, the game remembers the input and jumps as soon as they touch the ground. Another invisible forgiveness mechanic that makes games feel responsive.

---

## Feedback Vocabulary

Feedback is how the game **responds** to player actions. Good feedback makes every action feel meaningful and satisfying.

### Screen Shake
The camera **vibrates briefly** on impact. Small shakes for minor hits, big shakes for explosions or boss attacks. Too much becomes annoying; too little makes impacts feel weak.

### Hitstop / Freeze Frame
The game **pauses for a fraction of a second** (usually 2-5 frames) when an attack connects. This tiny freeze makes hits feel incredibly powerful. Used heavily in fighting games and action games like Hollow Knight.

### Squash and Stretch
The character's shape **compresses on landing** (squash) and **elongates when jumping** (stretch). This is borrowed from animation and makes movement feel alive and dynamic rather than rigid.

### Particles
Small **visual effects** that burst out from actions: dust clouds when landing, sparks when hitting metal, little stars when collecting items, trail effects behind fast movement.

### Flash / Blink
The character or enemy **briefly changes color or flashes white** when hit. This gives instant visual confirmation that damage was dealt.

### Knockback
When hit, the character or enemy gets **pushed away** from the source of damage. Adds physical weight to impacts and creates spatial consequences for getting hit.

### Camera Effects
**Zoom, pan, or slow motion** that emphasizes important moments. A slight zoom on a powerful attack, a slow-motion effect on the final hit of a combo, camera tracking that leads slightly ahead of the player's movement.

### Sound Cues
The **audio response** to actions: a meaty thwack on hit, a satisfying ding when collecting items, a whoosh on a dash, a crunch on landing from a height. Sound is half of game feel.

---

## Using Reference Games as Shorthand

One of the fastest ways to communicate game feel to AI is by referencing games that already nailed a specific feeling. Here are common reference points:

### Movement References
- **"Mario-style jumping"** — Variable jump height (tap vs hold), moderate air control, fast and joyful
- **"Celeste-style movement"** — Snappy ground movement, dash mechanic, generous coyote time, tight air control, demanding but fair
- **"Hollow Knight-style movement"** — Weighty and deliberate, committed jump arcs, sharp dash, momentum-based
- **"Sonic-style speed"** — Momentum-based running, rolling physics, speed as a reward for good play
- **"Mega Man-style movement"** — Precise, no acceleration, immediate direction changes, dedicated slide mechanic

### Combat References
- **"Dark Souls-style combat"** — Heavy, committed attacks, stamina management, punishing but fair, deliberate pacing
- **"Hades-style combat"** — Fast, snappy, dash-heavy, lots of visual feedback, feels empowering
- **"Undertale-style combat"** — Turn-based with real-time dodge mechanics, creative and surprising
- **"Smash Bros-style combat"** — Knockback-focused, directional attacks, percentage-based damage

### General Feel References
- **"Juice it up"** — Add screen shake, particles, squash/stretch, sound effects, and camera effects to make actions feel satisfying
- **"Nintendo polish"** — Every interaction gives clear, satisfying feedback. Nothing feels unfinished.

> **Tip:** When referencing a game, be specific about *what aspect* you're referencing. "Celeste-style" could mean the movement, the difficulty, the story, or the visual style. Say "Celeste-style dash mechanic" or "Celeste-style difficulty curve" to be precise.

---

## Translating Feelings Into Prompts

Here's a process for turning a vague feeling into a specific prompt:

### Step 1: Play (or remember) the feeling
Think about a game where something felt *just right*.

### Step 2: Name the feeling
Use the vocabulary from this guide. Is it snappy? Heavy? Tight? Punchy?

### Step 3: Identify the components
What specific elements create that feeling? Is it the acceleration? The feedback? The gravity?

### Step 4: Reference a game
Name a game that has this feeling so the AI has a concrete target.

### Step 5: Write the prompt
Combine all of this into a clear, specific prompt.

---

## Before/After Prompt Examples

### Movement

**Before:**
> "Make the character move."

**After:**
> "Set up the player character with tight, responsive ground movement — fast acceleration, instant deceleration, no sliding. The run speed should feel brisk but not overwhelming. Give the character a jump with fast rise and slightly slower fall, variable jump height based on how long the button is held, coyote time of 0.1 seconds, and jump buffering of 0.15 seconds. Movement should feel similar to Celeste — snappy and precise."

---

### Combat

**Before:**
> "Add attacks to the player."

**After:**
> "Give the player a melee attack with a quick, punchy swing animation. Add hitstop of 3-4 frames when the attack connects with an enemy. Enemies should flash white on hit and get knocked back slightly. Add a small screen shake on hit and a particle burst at the point of contact. Include a satisfying impact sound effect. The overall combat feel should be crisp and weighty, similar to Hollow Knight's nail attacks."

---

### Collectibles

**Before:**
> "Add coins to collect."

**After:**
> "Place collectible coins throughout the level. When the player touches a coin, it should disappear with a quick scale-up and fade-out animation, spawn a small burst of sparkle particles, play a bright chime sound, and add to a coin counter on the HUD. The collect feedback should feel crisp and satisfying — instant response, clear audio-visual confirmation. Think Mario coin blocks but with a modern polish."

---

## Game Feel Vocabulary Reference Table

Keep this table handy when writing your AI prompts:

| Category | Term | Meaning |
|----------|------|---------|
| **Overall Feel** | Responsive | Instant reaction to input |
| | Floaty | Low gravity, slow, drifty |
| | Tight | Precise, exact control |
| | Snappy | Fast, sharp, quick |
| | Heavy | Weighty, momentum-based |
| | Slippery | Slidey, low friction |
| | Punchy | Strong, forceful impacts |
| | Weighty | Feeling of mass and gravity |
| | Crisp | Clean start and end to actions |
| **Movement** | Acceleration | How fast you reach top speed |
| | Deceleration | How fast you stop |
| | Air control | Steering ability while airborne |
| | Gravity weight | Strength of downward pull |
| | Coyote time | Grace period to jump after leaving a ledge |
| | Jump buffering | Remembering early jump input |
| | Variable jump | Hold for higher, tap for lower |
| **Feedback** | Screen shake | Camera vibration on impact |
| | Hitstop | Brief freeze on hit |
| | Squash and stretch | Shape deformation for liveliness |
| | Particles | Visual effect bursts |
| | Flash / Blink | Color change on hit |
| | Knockback | Pushback from damage |
| | Camera effects | Zoom, pan, slow-mo emphasis |

---

## Checklist: Before You Move On

- [ ] I can use at least five feel descriptors (responsive, floaty, tight, snappy, heavy, etc.) correctly
- [ ] I can describe movement using specific terms (acceleration, coyote time, air control, etc.)
- [ ] I can name at least three feedback techniques (screen shake, hitstop, particles, etc.)
- [ ] I can reference well-known games to communicate a specific feel
- [ ] I've written at least one before/after prompt comparison for my own game idea

---

**Next up:** You'll practice describing game feel by analyzing games you've played and writing feel-focused AI prompts.
