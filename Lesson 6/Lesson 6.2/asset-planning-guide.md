# Asset Planning Guide

Every visual, sound, and UI element in your game is an asset. This guide helps you create a complete asset list from your GDD, organize your files, and use AI tools efficiently to generate what you need.

---

## Step 1: Extract Assets from Your GDD

Go through your GDD section by section and write down every asset your game needs. Be specific -- "player sprite" is not enough. You need "player idle animation (4 frames)," "player run animation (6 frames)," "player jump frame," and so on.

### Asset Categories

**Sprites (Characters and Objects)**
- Player character (all animation states)
- Enemies (all animation states)
- Collectibles (coins, power-ups, keys)
- Interactive objects (doors, switches, chests)
- Projectiles (bullets, fireballs, arrows)

**Tilesets and Environment**
- Ground/floor tiles
- Wall tiles
- Platform tiles
- Decorative tiles (grass, flowers, rocks)
- Hazard tiles (spikes, lava)
- Background layers (parallax)

**UI Elements**
- Buttons (normal, hovered, pressed states)
- Health/lives display (heart icons, health bar)
- Score display (number font or counter graphic)
- Menu backgrounds
- Dialog boxes
- Icons (inventory items, abilities)

**Audio - Music**
- Main menu theme
- Gameplay music (per level or mood)
- Victory/win music
- Game over music

**Audio - Sound Effects**
- Player actions (jump, land, attack, hurt, death)
- Enemy actions (attack, hurt, death)
- Collectible pickup
- UI sounds (button click, menu open/close)
- Environmental sounds (ambient, hazard triggers)

**Fonts**
- Main game font (HUD, menus)
- Title font (if different)
- Dialog font (if applicable)

---

## Step 2: Create Your Asset List

Use this template to list every asset your game needs. Fill in each row. Mark the status as you work.

### Sprites

| Asset Name | Description | Size (px) | Frames | Status |
|------------|-------------|-----------|--------|--------|
| | | | | |
| | | | | |
| | | | | |
| | | | | |
| | | | | |

_Example:_

| Asset Name | Description | Size (px) | Frames | Status |
|------------|-------------|-----------|--------|--------|
| player_idle | Player standing still | 32x32 | 4 | Not started |
| player_run | Player running | 32x32 | 6 | Not started |
| player_jump | Player in the air | 32x32 | 2 | Not started |
| player_hurt | Player taking damage | 32x32 | 2 | Not started |
| coin | Spinning coin collectible | 16x16 | 4 | Not started |
| enemy_slime | Slime enemy bouncing | 32x32 | 4 | Not started |

### Tilesets

| Asset Name | Description | Tile Size | Tiles Needed | Status |
|------------|-------------|-----------|-------------|--------|
| | | | | |
| | | | | |
| | | | | |

### UI

| Asset Name | Description | Size (px) | States | Status |
|------------|-------------|-----------|--------|--------|
| | | | | |
| | | | | |
| | | | | |

### Audio

| Asset Name | Description | Format | Duration | Status |
|------------|-------------|--------|----------|--------|
| | | | | |
| | | | | |
| | | | | |
| | | | | |

---

## Step 3: The Asset Pipeline

Follow this pipeline for every asset. Do not skip steps -- importing a badly named, wrong-sized asset and fixing it later wastes more time than doing it right the first time.

### Pipeline Stages

```
1. LIST        -- Identify what you need (this guide)
      |
2. GENERATE    -- Create or find the asset
      |         (AI generation, drawing, free asset sites)
      |
3. PREPARE     -- Resize, crop, format correctly
      |         (Correct dimensions, transparent backgrounds, proper format)
      |
4. NAME        -- Follow naming conventions (see below)
      |
5. IMPORT      -- Place in the correct project folder
      |
6. CONFIGURE   -- Direct AI to set up import settings
      |         (Pixel filtering, animation frames, audio settings)
      |
7. INTEGRATE   -- Direct AI to use the asset in your game
      |
8. TEST        -- Verify it looks/sounds right in-game
```

### Using AI to Generate Assets

**For sprites and art (Gemini / Google Flow / similar):**

Effective prompt formula:
> "[subject], [style], [color palette], [perspective], [purpose], transparent background"

Examples:
- "A small blue slime enemy, pixel art style, 32x32 pixels, side view, game character sprite, transparent background"
- "A grassy ground tileset, pixel art, 16x16 tile grid, top-down view, seamless edges, earthy green and brown palette"
- "A golden coin spinning animation, 4 frames in a horizontal sprite sheet, pixel art, 16x16 per frame, transparent background"

**Tips for AI-generated art:**
- Always specify "transparent background" for game sprites
- Request specific pixel dimensions
- Ask for "sprite sheet" if you need animation frames
- Generate in a consistent style -- use the same style description for all assets
- You will almost always need to clean up AI output (resize, remove artifacts, adjust colors)

**For audio (AI tools or free sound libraries):**
- Freesound.org for sound effects (check licenses)
- AI music generators for background tracks
- Keep audio files short -- a 30-second loop is enough for most game music

---

## Step 4: File Naming Conventions

Consistent naming prevents confusion as your project grows. Follow these rules:

### Rules

1. **All lowercase** -- no capital letters
2. **Underscores for spaces** -- `player_idle.png` not `Player Idle.png`
3. **Descriptive names** -- `enemy_slime_walk.png` not `sprite_03.png`
4. **Category prefix** -- group related assets by name
5. **No special characters** -- no spaces, dashes, parentheses, or accented letters

### Naming Patterns

**Sprites:** `[character]_[action].[ext]`
- `player_idle.png`
- `player_run.png`
- `enemy_bat_fly.png`

**Tilesets:** `tileset_[environment].[ext]`
- `tileset_grass.png`
- `tileset_cave.png`

**UI:** `ui_[element]_[state].[ext]`
- `ui_button_normal.png`
- `ui_button_hover.png`
- `ui_heart_full.png`
- `ui_heart_empty.png`

**Audio - Music:** `music_[location_or_mood].[ext]`
- `music_menu.ogg`
- `music_level1.ogg`
- `music_boss.ogg`

**Audio - SFX:** `sfx_[action].[ext]`
- `sfx_jump.wav`
- `sfx_coin_pickup.wav`
- `sfx_enemy_death.wav`

---

## Step 5: Folder Organization

Place every asset in the correct folder from the start. Moving files later breaks references throughout your project.

```
assets/
  +-- sprites/
  |     +-- player/
  |     |     +-- player_idle.png
  |     |     +-- player_run.png
  |     |     +-- player_jump.png
  |     +-- enemies/
  |     |     +-- enemy_slime_walk.png
  |     |     +-- enemy_bat_fly.png
  |     +-- collectibles/
  |     |     +-- coin_spin.png
  |     |     +-- gem.png
  |     +-- environment/
  |     |     +-- tileset_grass.png
  |     |     +-- background_sky.png
  |     +-- ui/
  |           +-- ui_heart_full.png
  |           +-- ui_heart_empty.png
  |           +-- ui_button_normal.png
  +-- audio/
  |     +-- music/
  |     |     +-- music_menu.ogg
  |     |     +-- music_gameplay.ogg
  |     +-- sfx/
  |           +-- sfx_jump.wav
  |           +-- sfx_coin_pickup.wav
  +-- fonts/
        +-- main_font.ttf
        +-- title_font.ttf
```

### Asset Format Tips

- **Pixel art:** Tell AI to configure pixel art filtering so pixels stay sharp (not blurry)
- **Audio music:** Use .ogg format for music (smaller file size, loops well)
- **Audio SFX:** Use .wav format for short sound effects (no decoding delay)
- **Fonts:** Use .ttf or .otf font files

---

## Step 6: Prioritize Your Asset Work

Not all assets are needed at the same time. Match your asset work to your milestones.

**Milestone 1 (Vertical Slice):** Use placeholder assets. Colored rectangles, simple shapes, and free sounds are fine. Focus on gameplay, not looks.

**Milestone 2 (Core Complete):** Replace key placeholders. Get the player character, main enemies, and basic UI looking close to final. Music and sound effects are still optional.

**Milestone 3 (Polish and Ship):** All final art, all sound effects, all music. This is where your AI-generated assets and polished visuals go in.

---

## Summary

1. Extract every asset from your GDD -- be thorough and specific
2. Use the asset list template to track what you need and your progress
3. Follow the pipeline: list, generate, prepare, name, import, configure, integrate, test
4. Use consistent naming conventions from the start
5. Organize folders before importing anything
6. Match asset work to milestones -- placeholders first, polish last
