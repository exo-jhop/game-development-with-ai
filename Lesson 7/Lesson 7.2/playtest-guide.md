# Lesson 7.3: Playtesting & Feedback

## What You'll Learn

- How to run an effective playtest session
- What to watch for while someone plays your game
- What questions to ask and when to ask them
- How to triage feedback into actionable categories
- How to decide when your game is "done enough"

---

## Why Playtest

You cannot objectively evaluate your own game. You know every mechanic, every shortcut, every hidden trick. You know where the enemies spawn and how the puzzle works. A playtester does not. They will find every confusing moment, every unclear instruction, and every frustrating interaction that you have become blind to.

Playtesting is not about asking people if your game is good. It is about watching where they struggle and listening to what they say out loud while they play.

---

## Preparing for a Playtest

### Before the Session

1. **Build a stable version.** Export or prepare a build that will not crash. Playtest the build yourself first to catch any show-stopping bugs.

2. **Define what you are testing.** Are you testing the tutorial? The difficulty curve? Whether the controls make sense? Having a focus helps you know what to watch for.

3. **Prepare the feedback form.** Print or share the feedback template (see `feedback-template.md`) so testers can write their thoughts immediately after playing.

4. **Set up the environment.** The tester should play on a setup similar to the target platform. If your game uses a controller, have one ready. If it is a keyboard game, make sure the keyboard is comfortable.

5. **Decide on your role.** You are an observer, not a guide. Write down your questions but do not answer theirs during play (unless they are truly stuck and the session would end otherwise).

### What to Tell Testers Before They Start

Keep it brief:

- "This is [game name]. It is still in development."
- "Play it however you want. There is no wrong way."
- "Think out loud -- say what you are thinking, what you expect, what confuses you."
- "I will not help you unless you are completely stuck. That is intentional."
- "It will take about [X] minutes."

Do **not** explain the controls, the story, or the mechanics. If the game does not teach these things on its own, that is valuable feedback.

---

## During the Playtest

### What to Watch For

Observe silently and take notes on these things:

**Confusion Points**
- Where does the player stop and look around, unsure what to do?
- Where do they try something that does not work?
- Where do they miss an important element (a pickup, a door, a clue)?

**Frustration Points**
- Where do they die repeatedly?
- Where do they sigh, groan, or express annoyance?
- Where do they try the same failed approach multiple times?

**Delight Points**
- Where do they smile, laugh, or say "cool"?
- Where do they try something and it works as expected?
- Where do they voluntarily explore or experiment?

**Control Issues**
- Do they press the wrong buttons?
- Do they expect a control that does not exist (trying to jump in a no-jump game)?
- Do they find the controls responsive or sluggish?

**Pacing**
- Are there long stretches where nothing happens?
- Does the difficulty ramp up too fast or too slow?
- Do they get bored at any point?

### The Silent Observer Rule

This is the hardest part. When a tester is confused, your instinct will be to say "oh, you just press X to do Y." Resist this. Every time you have to explain something, that is a design problem, not a player problem. Write it down instead.

Exceptions where you should intervene:
- The game has a genuine bug that blocks progress
- The tester has been stuck for more than two minutes on something that is not the focus of the test
- The tester asks to stop

### Taking Notes

Use shorthand while observing:

```
0:30 -- tried to jump, no jump in this game (expectation mismatch)
1:15 -- walked past the key, did not see it (visibility issue)
2:00 -- died to spikes, said "I didn't see those" (readability)
2:30 -- found the sword, said "nice!" (positive moment)
3:45 -- stuck at locked door, tried everything except the key (backtracking issue)
4:00 -- I told them about the key (intervention -- this needs fixing)
```

---

## After the Playtest

### The Debrief (5-10 Minutes)

Ask these questions in this order. Let the tester talk. Do not defend your design choices.

1. **"What was the game about?"** -- Tests whether your core concept is clear.

2. **"What did you enjoy most?"** -- Identifies your strengths. Protect these in future iterations.

3. **"What was the most confusing part?"** -- Confirms your observation notes.

4. **"Was there anything you wanted to do but couldn't?"** -- Reveals expected features and controls.

5. **"How did the difficulty feel?"** -- Too easy? Too hard? Uneven?

6. **"Would you play more of this?"** -- Honest gut reaction. Do not press for details.

### Collecting Written Feedback

Hand them the feedback template after the debrief. Written feedback captures things they might not say out loud and gives them time to reflect.

---

## Feedback Triage

Not all feedback is equal. After collecting feedback from multiple testers, sort every piece into one of four categories.

### Must-Fix

Issues that prevent players from understanding or completing the game:

- Players cannot figure out the controls
- A core mechanic is confusing or does not work as intended
- Players consistently get stuck at the same point
- A bug breaks the game

These get fixed before the next playtest.

### Should-Fix

Issues that hurt the experience but do not block progress:

- A section is too hard or too easy
- An interaction feels unsatisfying
- Players miss important information
- Audio or visual feedback is insufficient

Fix these if time allows.

### Nice-to-Have

Suggestions that would improve the game but are not problems:

- "It would be cool if you could also..."
- "I wish there were more levels"
- "The art style could be more [X]"
- Feature requests and expansion ideas

Write these down for future development. Do not implement them now.

### Out-of-Scope

Feedback that does not apply to this project:

- Suggestions that contradict your core design vision
- Requests for a different genre or game type
- "I don't like this kind of game" (the tester is not your target audience)
- Technical requests beyond the scope of the workshop

Acknowledge the feedback politely. Move on.

### The Pattern Rule

A single tester's feedback is an anecdote. If three testers independently report the same issue, it is a pattern. Patterns are almost always real problems. Single reports might be preference or bad luck.

---

## Definition of "Done Enough"

Your game does not need to be perfect. It needs to be done enough. Here is how to know when you have reached that point.

### The "Done Enough" Criteria

Your game is done enough when:

1. **A new player can start the game without external explanation.** The game teaches its own controls and mechanics, or they are intuitive enough to not need teaching.

2. **The core loop is complete.** Start -> play -> end -> restart all work without crashes.

3. **The game communicates its identity.** A player can describe what kind of game it is after playing for two minutes.

4. **Major frustration points are resolved.** No one gets stuck in the same place for more than a minute without making progress.

5. **It feels intentional.** Placeholder art is replaced (or is clearly a deliberate art style). Audio exists. Interactions have feedback.

6. **You are proud to show it.** Not "it's perfect" but "I made this and it works."

### What "Done Enough" Is Not

- Every feature from the GDD is implemented
- Zero bugs
- Balanced difficulty curve
- Professional-quality art and audio
- Multiple levels or extended content
- Replay value

These are goals for a production game, not a workshop project. Ship what you have. You can always keep working on it later.

---

## Running Multiple Playtest Rounds

If time allows, run at least two rounds:

### Round 1: Rough Playtest
- Core mechanics are in but polish is incomplete
- Focus on: "Is this understandable? Is this fun?"
- Fix must-fix issues from this round

### Round 2: Polish Playtest
- Polish is applied, major issues from Round 1 are fixed
- Focus on: "Does this feel good? Is the difficulty right?"
- Final adjustments based on this round

Two rounds of playtesting with fixes in between will dramatically improve your game. One round is the minimum. Three rounds is ideal if time permits.

---

## Common Playtesting Mistakes

**Mistake: Explaining the game before the tester plays.**
Why it hurts: You will never be there to explain it to every player. The game must speak for itself.

**Mistake: Arguing with feedback.**
Why it hurts: The tester's experience is real. "But it's supposed to work that way" does not change the fact that they were confused.

**Mistake: Only testing with other developers.**
Why it hurts: Developers are not representative players. They are more patient, more comfortable with complex controls, and more forgiving of missing polish.

**Mistake: Changing everything after one session.**
Why it hurts: One tester's experience is not statistically significant. Wait for patterns across multiple testers.

**Mistake: Ignoring positive feedback.**
Why it hurts: You need to know what works so you do not accidentally remove it. Protect your strengths.

---

## Checklist

- [ ] Prepared a stable build for playtesting
- [ ] Defined a focus area for the playtest session
- [ ] Printed or shared feedback templates
- [ ] Observed at least one tester playing without assistance
- [ ] Took timestamped notes during observation
- [ ] Conducted a post-play debrief
- [ ] Collected written feedback
- [ ] Triaged all feedback into must-fix, should-fix, nice-to-have, and out-of-scope
- [ ] Identified patterns from multiple testers (if applicable)
- [ ] Fixed must-fix issues
- [ ] Determined whether the game meets the "done enough" criteria
