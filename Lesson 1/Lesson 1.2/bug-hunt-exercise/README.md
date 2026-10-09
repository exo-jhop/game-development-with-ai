# Bug Hunt Exercise

You've been assigned ONE variant: A, B, or C. You only need to work on your assigned script.

## Setup

1. Open this folder in Godot 4 (Import > select this folder's `project.godot`)
2. Open a terminal **in this project folder** (not anywhere else, OpenCode needs to see your files)
3. Run your assigned scene once in Godot first, so you can see the broken behavior in the Output console at the bottom of the editor:
   - Variant A: open `scenes/VariantA.tscn`, press Play Scene
   - Variant B: open `scenes/VariantB.tscn`, press Play Scene
   - Variant C: open `scenes/VariantC.tscn`, press Play Scene

## Task

1. In your terminal, run `opencode` (or your assigned AI coding tool) from inside this project folder
2. Point it at your script file (e.g., `scripts/variant_a.gd`) and describe the symptom you saw in the Output console, don't tell it what you think the bug is, just describe what's happening
3. Let it propose a fix. Review the diff before accepting it.
4. Re-run your scene in Godot to confirm the output now looks correct
5. Write 2 sentences: what did the AI get right, and what (if anything) did you have to correct or double-check yourself?

## Notes

- Your script already runs a small test in `_ready()` so the bug shows up automatically in the Output console when you press Play, no extra setup needed.
- If your terminal tool asks which file to look at, point it only at your assigned script, not the whole project.
