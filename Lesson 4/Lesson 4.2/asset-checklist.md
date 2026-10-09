# Lesson 4.2 Reference: Asset Production Checklist

## What This Is

This is a tracking checklist for every asset your game needs. Use it to plan what to generate, record which AI tool and prompt produced each asset, and track each asset's status from initial generation through final integration into the game.

**Status key:**
- **Not Started** -- Haven't generated this yet
- **Generated** -- AI produced it, but not yet reviewed
- **Reviewed** -- Checked for quality and approved
- **Integrated** -- Added to the game and working correctly
- **Redo** -- Needs to be regenerated (note the reason)

---

## Character Art

### Player Character

| Asset Name | AI Tool Used | Prompt Used | Status | Notes |
|---|---|---|---|---|
| player_knight_idle.png | (example) ChatGPT / DALL-E | "Pixel art, 32x48, knight standing facing right, silver armor, red plume..." | Reviewed | Approved as base reference |
| player_knight_walk_01.png | | | Not Started | Frame 1 of walk cycle |
| player_knight_walk_02.png | | | Not Started | Frame 2 of walk cycle |
| player_knight_walk_03.png | | | Not Started | Frame 3 of walk cycle |
| player_knight_walk_04.png | | | Not Started | Frame 4 of walk cycle |
| player_knight_jump.png | | | Not Started | Mid-air pose |
| player_knight_attack.png | | | Not Started | Sword swing pose |
| player_knight_damage.png | | | Not Started | Hit reaction pose |
| player_knight_death.png | | | Not Started | Death/defeat pose |

### Enemy Characters

| Asset Name | AI Tool Used | Prompt Used | Status | Notes |
|---|---|---|---|---|
| enemy_slime_idle.png | (example) Midjourney | "Pixel art green slime, blobby shape, dot eyes, frown, 24x20..." | Generated | Check transparency |
| enemy_slime_move_01.png | | | Not Started | Squish frame 1 |
| enemy_slime_move_02.png | | | Not Started | Squish frame 2 |
| enemy_bat_idle.png | | | Not Started | Wings spread |
| enemy_bat_flap_01.png | | | Not Started | Wings up |
| enemy_bat_flap_02.png | | | Not Started | Wings down |
| enemy_skeleton_idle.png | | | Not Started | Standing with shield |

---

## Environment Art

### Tilesets

| Asset Name | AI Tool Used | Prompt Used | Status | Notes |
|---|---|---|---|---|
| tile_ground_topleft.png | | | Not Started | Corner piece |
| tile_ground_top.png | | | Not Started | Top edge, grassy |
| tile_ground_topright.png | | | Not Started | Corner piece |
| tile_ground_left.png | | | Not Started | Left edge |
| tile_ground_center.png | | | Not Started | Fill tile, must tile seamlessly |
| tile_ground_right.png | | | Not Started | Right edge |
| tile_ground_bottomleft.png | | | Not Started | Corner piece |
| tile_ground_bottom.png | | | Not Started | Bottom edge |
| tile_ground_bottomright.png | | | Not Started | Corner piece |
| tile_platform_left.png | | | Not Started | Floating platform left cap |
| tile_platform_mid.png | | | Not Started | Floating platform middle (tileable) |
| tile_platform_right.png | | | Not Started | Floating platform right cap |

### Backgrounds

| Asset Name | AI Tool Used | Prompt Used | Status | Notes |
|---|---|---|---|---|
| bg_sky_far.png | | | Not Started | Far parallax layer, tiles horizontally |
| bg_hills_mid.png | | | Not Started | Mid parallax layer |
| bg_trees_near.png | | | Not Started | Near parallax layer |

### Decorations

| Asset Name | AI Tool Used | Prompt Used | Status | Notes |
|---|---|---|---|---|
| deco_grass_tuft.png | | | Not Started | Small foreground decoration |
| deco_mushroom.png | | | Not Started | |
| deco_flower.png | | | Not Started | |
| deco_rock.png | | | Not Started | |

---

## UI Art

| Asset Name | AI Tool Used | Prompt Used | Status | Notes |
|---|---|---|---|---|
| ui_menu_bg.png | | | Not Started | Main menu background |
| ui_button_normal.png | (example) Stable Diffusion | "Pixel art button, dark border, gold fill, 96x32..." | Reviewed | Matches palette |
| ui_button_pressed.png | | | Not Started | Must match normal state shape exactly |
| ui_button_hover.png | | | Not Started | Slightly brighter than normal |
| ui_panel.png | | | Not Started | Dialog/menu panel background |
| ui_icon_heart.png | | | Not Started | Health indicator, 16x16 |
| ui_icon_coin.png | | | Not Started | Currency indicator, 16x16 |
| ui_icon_star.png | | | Not Started | Score indicator, 16x16 |
| ui_healthbar_frame.png | | | Not Started | Health bar border |
| ui_healthbar_fill.png | | | Not Started | Health bar fill (red) |

---

## Audio -- Sound Effects

| Asset Name | AI Tool Used | Prompt Used | Status | Notes |
|---|---|---|---|---|
| sfx_jump.wav | (example) Suno / ElevenLabs | "Short, airy whoosh, character jumping, 0.2 seconds, 8-bit style" | Generated | Review for clean loop |
| sfx_land.wav | | | Not Started | Soft thud, 0.15 seconds |
| sfx_coin_collect.wav | | | Not Started | Bright pop, satisfying, 0.2 seconds |
| sfx_damage.wav | | | Not Started | Sharp hit, 0.3 seconds |
| sfx_death.wav | | | Not Started | Descending tone, 0.5 seconds |
| sfx_enemy_defeat.wav | | | Not Started | Pop or poof, 0.3 seconds |
| sfx_menu_click.wav | | | Not Started | Clean click, 0.1 seconds |
| sfx_menu_hover.wav | | | Not Started | Soft tick, 0.1 seconds |
| sfx_level_complete.wav | | | Not Started | Ascending jingle, 1-2 seconds |
| sfx_game_over.wav | | | Not Started | Descending jingle, 1-2 seconds |
| sfx_door_open.wav | | | Not Started | Creaking or sliding, 0.5 seconds |
| sfx_powerup.wav | | | Not Started | Sparkly ascending tone, 0.5 seconds |

---

## Audio -- Music

| Asset Name | AI Tool Used | Prompt Used | Status | Notes |
|---|---|---|---|---|
| music_menu.ogg | | | Not Started | Moderate tempo, inviting, loops, 1-2 min |
| music_gameplay.ogg | | | Not Started | Upbeat, adventurous, loops, 1-2 min |
| music_boss.ogg | | | Not Started | Intense, dramatic, loops, 1 min |
| music_victory.ogg | | | Not Started | Short triumphant jingle, 3-5 seconds |
| music_gameover.ogg | | | Not Started | Short somber jingle, 3-5 seconds |
| music_credits.ogg | | | Not Started | Relaxed, reflective, 2-3 min |

---

## Animation Summary

| Character/Object | Animation | Frames Needed | Sprite Sheet? | Status | Notes |
|---|---|---|---|---|---|
| Player knight | Idle bob | 2-4 | Yes | Not Started | Subtle breathing motion |
| Player knight | Walk cycle | 4 | Yes | Not Started | Matches walk speed |
| Player knight | Jump | 3 | Yes | Not Started | Crouch, air, land |
| Player knight | Attack | 3-4 | Yes | Not Started | Wind-up, strike, recover |
| Slime enemy | Bounce | 2 | Yes | Not Started | Squish and stretch |
| Bat enemy | Wing flap | 2-4 | Yes | Not Started | Wings up and down |
| Coin | Spin | 4-6 | Yes | Not Started | Rotation around vertical axis |
| Explosion | Burst | 4-6 | Yes | Not Started | For enemy defeat effect |

---

## Production Status Overview

Use this summary to track overall progress at a glance:

| Category | Total Assets | Not Started | Generated | Reviewed | Integrated |
|---|---|---|---|---|---|
| Player Character | 9 | | | | |
| Enemy Characters | 7 | | | | |
| Tilesets | 12 | | | | |
| Backgrounds | 3 | | | | |
| Decorations | 4 | | | | |
| UI Art | 10 | | | | |
| Sound Effects | 12 | | | | |
| Music | 6 | | | | |
| Animations | 8 | | | | |
| **TOTAL** | **71** | | | | |

---

## Notes

Use this space to record style decisions, prompt templates that worked well, or lessons learned during asset production:

- Style prefix used: ___
- Best AI image tool for this project: ___
- Best AI audio tool for this project: ___
- Color palette hex codes: ___
- Key lesson learned: ___
