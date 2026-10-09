# Lesson 8.3: Portfolio Guide -- Turning Your Game Into a Portfolio Piece

---

## Overview

You shipped a game. That is worth more than most portfolio items because it is a complete, playable thing. This guide helps you present your game professionally, document your process, and set yourself up for continued growth as a developer.

---

## Part 1: What Makes a Good Portfolio Piece

A portfolio piece is not just the finished product. It is the story of how you built it and what you learned. Employers, collaborators, and fellow developers want to see three things:

1. **The result.** A playable game or clear demonstration of what you built.
2. **The process.** How you approached the problem, what decisions you made, and why.
3. **The growth.** What you learned and how it changed your skills.

### Common Mistakes

- Showing only a screenshot with no context. People need to know what they are looking at.
- Writing a wall of text that nobody reads. Keep descriptions focused.
- Underselling the work. You built a game. That is a real accomplishment. Present it like one.
- Not including a playable link. If someone cannot play or watch your game, they will move on.

---

## Part 2: Writing a Project Description

Your project description should be concise and structured. Here is a template:

### Template

```
## [Game Title]

[One sentence describing the game and what makes it interesting.]

**Play it:** [link to itch.io or hosted version]
**Source code:** [link to GitHub repo]
**Built with:** [Game engine], AI-assisted development
**Development time:** [approximate total hours or weeks]

### About the Game
[2-3 sentences about the gameplay. What does the player do? What is the goal?
What is the core mechanic?]

### Design and Development Highlights
- [Interesting design challenge you solved]
- [A game system or feature you directed AI to build]
- [Something you are most proud of in the game]

### What I Learned
[1-2 sentences about your biggest takeaway from this project.]
```

### Tips for Writing

- **Lead with what is interesting.** If your game has a unique mechanic, mention it first.
- **Be honest about scope.** "A small arcade game built in four weeks" is more impressive than vaguely implying it is a massive project.
- **Mention specific design decisions.** "Directed AI to build a state machine for enemy AI with three distinct behaviors" tells more than "made enemies."
- **Credit your tools and assets.** Transparency about AI assistance, asset packs, and tutorials builds trust.

---

## Part 3: Choosing Screenshots and GIFs

### Screenshots

Pick 3-5 images that show your game at its best:

- **Hero image:** The most visually striking moment in your game. This goes at the top.
- **Gameplay variety:** Show different mechanics, levels, or situations.
- **UI and menus:** If your UI is polished, show it. If it is not, skip it.
- **Before/after:** If you have early prototype screenshots, a comparison can show growth.

### GIFs

A short GIF is worth more than five screenshots. It shows how the game feels in motion.

**How to capture a GIF:**

- **ScreenToGif** (Windows, free): https://www.screentogif.com -- Record a region of your screen and export as GIF.
- **ShareX** (Windows, free): Can capture GIFs and short videos.
- **LICEcap** (Windows/Mac, free): Lightweight GIF capture tool.

**GIF tips:**

- Keep them under 10 seconds. Short and focused.
- Show one mechanic or moment per GIF.
- Capture at a reasonable resolution (480p-720p). Giant GIFs load slowly.
- Loop cleanly if possible -- start and end in a similar state.

---

## Part 4: Documenting Your Development Process

A development log (devlog) adds depth to your portfolio. You do not need to write one retroactively -- even a summary is valuable.

### What to Include

- **Initial concept:** What was your original idea? How did it change?
- **Key decisions:** Why did you choose this mechanic? Why did you cut that feature?
- **Problems and solutions:** What broke? How did you fix it?
- **AI integration:** How did you use AI during development? What worked and what did not?
- **Evolution:** If you have screenshots or builds from different stages, show the progression.

### Where to Post a Devlog

- **GitHub README:** The most common and accessible option.
- **itch.io devlog:** itch.io has a built-in devlog feature on every project page.
- **Personal blog or website:** If you have one, a detailed write-up lives well here.

---

## Part 5: Setting Up a GitHub Repository Page

A clean GitHub repo makes your project look professional and makes it easy for others to understand.

### Repository Structure

```
your-game/
  README.md
  scenes/
  assets/
  builds/         (optional -- or link to itch.io instead)
  screenshots/    (images used in the README)
```

### README Template

```markdown
# [Game Title]

![Hero Screenshot](screenshots/hero.png)

[One-sentence description of your game.]

**Play it here:** [itch.io link]

## About

[2-3 sentences about the game, its mechanics, and its target audience.]

## Screenshots

![Gameplay 1](screenshots/gameplay1.png)
![Gameplay 2](screenshots/gameplay2.png)

## How to Play

| Input     | Action        |
|-----------|---------------|
| Arrow keys| Move          |
| Space     | Jump          |
| Z         | Attack        |

## Built With

- [Game engine] -- Game engine
- AI-assisted development (Claude, Gemini, etc.)
- [Asset source] -- Art / Audio credits

## Development

Built over [timeframe] as part of the Game Development with AI workshop.
[Briefly describe your development process or link to a devlog.]

## License

[Choose a license. MIT is common for game projects. Art assets may have
their own licenses.]
```

### GitHub Tips

- Ask AI to set up a proper `.gitignore` for your game engine so you do not commit unnecessary files.
- Write commit messages that describe what changed: "Add enemy patrol behavior" is better than "update."
- If your repo has large binary files (sprites, audio), consider using Git LFS or keeping assets separate.

---

## Part 6: Continued Learning Resources

You have the foundation. Here is where to go next.

### Game Development Learning

- **Game Design Concepts:** Study game design theory to become a better director. Understanding what makes games fun will improve every game you make.
- **GDQuest:** https://www.gdquest.com -- High-quality game development tutorials.
- **Brackeys:** Search YouTube for Brackeys tutorials -- clear, beginner-friendly game development videos.
- **Game Maker's Toolkit (YouTube):** Excellent game design analysis that helps you think like a designer.

### Game Jams

Game jams are the single best way to keep building games. They give you a deadline, a theme, and a community.

- **Ludum Dare:** https://ldjam.com -- The most well-known jam. Runs twice a year. 48 or 72-hour formats.
- **Global Game Jam:** https://globalgamejam.org -- Annual worldwide jam, usually in January.
- **itch.io Jams:** https://itch.io/jams -- Dozens of jams running at any given time, all sizes and themes.
- **One-Hour Game Jam:** A great starting point for quick prototyping practice.

> Tip: Start with a jam that runs over a weekend. Make the smallest possible game. Finish it. The goal is to ship, not to impress.

### Communities

- **r/gamedev:** Reddit community for sharing projects and asking questions about game development.
- **itch.io Community:** Follow other developers, play their games, leave feedback.
- **Game dev Discord servers:** Many active communities exist for indie game developers at every skill level.

### YouTube Channels for Game Development

- **Game Maker's Toolkit** -- Game design theory and analysis. Essential for thinking like a designer.
- **Brackeys** -- General game development tutorials, clear and beginner-friendly.
- **Sebastian Lague** -- Deep dives into algorithms and procedural generation.
- **GDQuest** -- High-quality game development content.

---

## Part 7: AI Tools as a Long-Term Development Partner

You used AI to help build your game during this workshop. Here is how to keep that partnership productive as you grow.

### When AI Helps Most

- **Building game systems:** Describe what you want and let AI handle the implementation. Your job is to be a clear, specific director.
- **Debugging:** When something does not work as expected, describe the problem to AI and let it investigate and fix the issue.
- **Rapid prototyping:** Let AI build quick versions of your ideas so you can test them and iterate on what works.
- **Brainstorming:** Use AI to generate game ideas, mechanic variations, or level concepts when you are stuck.

### When to Rely on Yourself

- **Design decisions:** AI can suggest options, but you need to decide what makes your game fun and unique.
- **Game feel:** No AI can tell you if your jump feels right. That requires playing and iterating.
- **Creative vision:** AI can build, but the game's identity and direction comes from you.
- **Quality judgment:** You are the one who plays the game and decides what is good enough to ship.

### Growing as a Director

As your skills improve, your direction to AI should become more precise and ambitious. Early on, you might say "Make a character that jumps." Later, you will say "The jump should have variable height based on how long the button is held, with coyote time and a small dust effect on landing." The direction gets more specific and the results get better. That is growth.

---

## Part 8: Setting Personal Learning Goals

Finishing this workshop is a starting point. Set yourself up with clear next steps.

### Goal-Setting Template

**In the next month, I want to:**
_[One specific, achievable goal. Example: "Complete a weekend game jam." or "Build a game with a mechanic I have not tried before."]_

**In the next three months, I want to:**
_[A larger goal. Example: "Build a second game with a new mechanic I have not tried." or "Direct AI to build a game in a genre I have never attempted."]_

**In the next year, I want to:**
_[A stretch goal. Example: "Release a game with online multiplayer." or "Build a portfolio with three completed projects."]_

### Accountability

- Tell someone your goals. A classmate, a friend, a community member.
- Set calendar reminders to check in with yourself.
- Join a game jam with a deadline -- external deadlines work better than self-imposed ones.
- Ship small things often. Three small games teach you more than one unfinished big game.

---

## Portfolio Checklist

- [ ] Game is playable via a public link (itch.io or similar)
- [ ] Project description is written (concise, specific, honest)
- [ ] At least 3 screenshots are chosen and included
- [ ] At least 1 GIF showing gameplay is captured (recommended)
- [ ] GitHub repo has a clean README with screenshots and a play link
- [ ] Credits and asset sources are documented
- [ ] Development process is summarized (README, devlog, or retrospective)
- [ ] AI usage is acknowledged transparently
- [ ] At least one personal learning goal is written down
- [ ] You know about at least two communities or resources to continue learning

---

## Final Word

You built a game from concept to shipped product. You used modern tools including AI to get there. You presented your work and received feedback. That is a complete development cycle, and it is exactly what working in games looks like -- just with shorter timelines.

Put this game in your portfolio. Be proud of it. Then go make the next one.
