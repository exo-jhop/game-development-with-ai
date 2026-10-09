# Lesson 8.1: Build & Export -- Ship Your Game to the World

---

## Overview

You built a game. Now it is time to get it into players' hands. This guide walks you through exporting your game for Windows and Web, preparing compelling store page materials, and uploading your finished build to itch.io.

By the end of this lesson you will have a playable build that anyone can download or play in a browser.

---

## Part 1: Exporting Your Game

Exporting turns your game project into a standalone build that players can run without needing the game engine installed. You will direct AI to help you configure and troubleshoot the export process.

### What to Tell AI

Ask AI to walk you through the export process for your specific game engine version. Here is what you need:

**For a Windows build:**
- "Help me set up a Windows desktop export for my game. I want a release build (not debug) that creates a standalone .exe file."
- "Create a `builds/windows/` folder in my project for the exported files."
- "Make sure the product name is set to [your game's title]."

**For a Web / HTML5 build:**
- "Help me set up a web export for my game so I can upload it to itch.io."
- "Create a `builds/web/` folder and export with the main file named `index.html`."
- "Make sure texture compression supports desktop browsers, and enable thread support for itch.io."

### Key Export Concepts

- **Export templates** are precompiled binaries that your project gets bundled into. The template version must match your engine version exactly.
- **Release vs Debug builds:** Always export a release build for distribution. Debug builds are larger, slower, and include development tools players do not need.
- **The exported build includes several files** (executable, game data, supporting libraries). All of these files must stay together for the game to run.

### Testing Your Build

- **Always run the exported build before distributing.** Play through your game and check for missing assets or broken features.
- **For web builds:** You cannot simply open the HTML file directly. Browsers block local file access for security. Ask AI to help you set up a local web server for testing, or upload directly to itch.io to test there.

---

## Part 2: Common Export Issues and Fixes

### Missing assets in the exported build
- Some assets loaded dynamically may not be included automatically. Ask AI: "Some of my assets are missing in the exported build. How do I make sure all files are included?"

### Web build shows a blank screen or errors
- Open the browser console (F12) and check for errors.
- Common cause: the hosting platform needs specific HTTP headers for modern web features. itch.io handles this automatically.
- Large textures can cause memory issues in web builds. Ask AI to help you reduce texture sizes if needed.

### Game runs slowly in the web build
- Web builds are inherently slower than native builds. This is normal.
- Ask AI: "My web build runs slowly. What can I optimize to improve performance?"

### Windows antivirus flags the .exe
- Unsigned executables often trigger antivirus warnings. This is expected for indie games and workshop projects.
- Code signing certificates cost money, so for a workshop project this is fine to leave as-is. Let players know it is safe.

---

## Part 3: Taking Good Screenshots

Screenshots are the first thing potential players see. They sell your game before anyone reads a word.

### What Makes a Good Screenshot

- **Show gameplay, not menus.** Your title screen is not a screenshot. Show the game being played.
- **Capture a moment of action or beauty.** A boss fight, a puzzle being solved, a dramatic landscape.
- **Show variety.** If your game has multiple levels or mechanics, show different ones.
- **Use the right resolution.** itch.io recommends at least 1920x1080.
- **No debug UI.** Turn off FPS counters, collision shapes, and debug overlays before capturing.

### Capturing Screenshots

Ask AI: "Add a screenshot feature to my game so I can press a key to save a screenshot during gameplay." AI can set up a simple key binding that captures the current screen and saves it as an image file.

Alternatively, use a screen capture tool (Windows Snipping Tool, ShareX, or similar) while playing your exported build.

### Recommended Screenshot Count

- **Cover image:** 1 wide image (630x500 for itch.io).
- **Screenshots:** 3 to 5 gameplay images showing different aspects of your game.

---

## Part 4: Writing Your Game Description

Your itch.io page description needs to accomplish three things: hook the reader, explain the game, and tell them how to play.

### Structure

```
[One-sentence hook -- what makes your game interesting]

[Game title] is a [genre] game where you [core gameplay verb] to [goal].

## How to Play
- [Control 1]: [Action]
- [Control 2]: [Action]
- [Control 3]: [Action]

## Features
- [Feature 1]
- [Feature 2]
- [Feature 3]

## About
Built for the Game Development with AI workshop.

## Credits
- Game Design & Direction: [Your name]
- Art: [Credit sources -- Kenney, OpenGameArt, original, AI-generated, etc.]
- Audio: [Credit sources]
- Made with assistance from AI tools
```

### Tips

- Lead with what is unique. "A platformer" is boring. "A platformer where gravity flips every 10 seconds" is interesting.
- Keep it short. Players skim. Bullet points work better than paragraphs.
- Credit your asset sources. This is respectful and sometimes legally required.

---

## Part 5: Uploading to itch.io

### Step 1: Create an itch.io Account

Go to https://itch.io and register if you have not already.

### Step 2: Create a New Project

1. Click your profile icon > **Upload new project** (or go to https://itch.io/game/new).
2. Fill in:
   - **Title:** Your game's name.
   - **Project URL:** A clean slug like `my-cool-game`.
   - **Kind of project:** "HTML" if you are uploading a web build, "Downloadable" for Windows, or both.
   - **Pricing:** "No payments" or "$0 or donate."
   - **Uploads:** This is where your build files go (see next step).

### Step 3: Upload Your Build Files

**For Web builds:**
1. Zip your entire web build folder contents (index.html and all companion files must be at the root of the zip, not inside a subfolder).
2. Upload the zip file.
3. Check the checkbox **"This file will be played in the browser."**
4. Set the viewport dimensions to match your game's window size (e.g., 1280x720).
5. Check **"SharedArrayBuffer support"** if your game engine version requires it.

**For Windows builds:**
1. Zip your entire Windows build folder contents.
2. Upload the zip file.
3. Mark the platform as **Windows**.

### Step 4: Configure Your Page

- Upload your cover image (630x500 recommended).
- Add your screenshots.
- Paste your game description.
- Add relevant tags: your genre, `game-jam` if applicable.
- Set the **Embed options** for web games: fullscreen button, mobile friendly, scroll bars.

### Step 5: Publish

- Set the visibility to **Public** (or "Restricted" if you only want to share the link).
- Click **Save** and then **Publish**.
- Share your link with the class.

---

## Pre-Ship Checklist

Before you call it done, walk through this list:

- [ ] Game loads without errors
- [ ] All core mechanics work in the exported build (not just during development)
- [ ] No debug output visible on screen
- [ ] Title screen or main menu is present
- [ ] The player knows how to play (tutorial, instructions, or intuitive design)
- [ ] The game has a win/lose condition or a clear loop
- [ ] Audio plays correctly (music, sound effects)
- [ ] The game does not crash during normal play
- [ ] Web build runs in Chrome and Firefox (if applicable)
- [ ] Windows build runs when double-clicked (no extra installs required)
- [ ] Cover image uploaded to itch.io
- [ ] At least 3 screenshots uploaded
- [ ] Game description is written and posted
- [ ] Credits are included for all assets used
- [ ] You have played your own exported build from start to finish at least once

---

## Milestone

Your game is live. Someone can click a link and play what you made. That is the milestone -- you shipped a game.
