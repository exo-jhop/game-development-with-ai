# Lesson 4.1 Reference: AI Art Prompt Examples

## What You'll Learn

- Ready-to-use prompt templates for generating every category of game art
- How style modifiers, size specifications, and format notes affect output quality
- Tips for getting consistent results across multiple generations

Use these prompts as starting points. Copy them, paste them into your AI image tool, and customize the details (colors, themes, character features) to match your game's style guide.

---

## Style Prefix (Paste Before Every Prompt)

Before each prompt below, paste your style prefix from your style guide. Here is an example you can customize:

> "Pixel art, 32x32 pixels, side-view platformer perspective, limited palette of forest green, warm gold, deep purple, and soft cream, light source from the upper left, bright and cheerful cartoon style, clean outlines, no anti-aliasing."

Replace this with your own style prefix and keep it identical across all prompts.

---

## Character Sprites

### Idle Pose

> "[Your style prefix]. A small knight character standing still, facing right. Silver armor, red plume on the helmet, short sword held at the side. Chibi proportions with a head slightly larger than the body. Transparent background."

**Style modifiers to add:** "no shading gradients, flat color fills, 1-pixel black outline"
**Size/format:** 32x48 pixels, PNG with transparency
**Consistency tip:** Save this result as your character reference. Describe the character the same way in every future prompt.

### Walk Cycle (4 Frames)

> "[Your style prefix]. The same knight character (silver armor, red plume, short sword) in a walking animation, facing right. Generate 4 separate frames arranged in a horizontal sprite sheet: Frame 1 -- standing with feet together. Frame 2 -- left foot stepping forward, right arm swinging forward. Frame 3 -- passing position, feet together, mid-stride. Frame 4 -- right foot stepping forward, left arm swinging forward. Transparent background."

**Style modifiers to add:** "consistent proportions across all frames, same colors in every frame"
**Size/format:** 128x48 pixels (4 frames at 32x48 each), PNG with transparency
**Consistency tip:** If the tool cannot generate a sprite sheet, generate each frame individually with the same character description.

### Jump Pose

> "[Your style prefix]. The same knight character (silver armor, red plume, short sword) jumping in the air, facing right. Knees slightly bent, arms raised, looking upward. Feet off the ground. Transparent background."

**Size/format:** 32x48 pixels, PNG with transparency
**Consistency tip:** Reference the exact same armor colors and proportions as the idle pose.

### Attack Pose

> "[Your style prefix]. The same knight character (silver armor, red plume) mid-sword-swing facing right. The sword is extended forward in a horizontal slash. Body leaning slightly forward, legs in a lunge stance. Transparent background."

**Size/format:** 48x48 pixels (wider to accommodate the sword swing), PNG with transparency

---

## Environment Tilesets

### Ground Tileset

> "[Your style prefix]. A platformer ground tileset sprite sheet. Include these tiles in a grid: top-left corner, top edge, top-right corner, left edge, center fill, right edge, bottom-left corner, bottom edge, bottom-right corner. The top surface should be grassy green with slight texture. The fill should be brown earth with small pebble details. All edges must connect seamlessly when placed next to each other. Transparent background around the tileset."

**Style modifiers to add:** "low detail near tile edges for seamless connection, consistent earth tone throughout"
**Size/format:** Each tile 32x32 pixels, full sheet 96x96 pixels (3x3 grid), PNG with transparency
**Consistency tip:** Generate the full set together so colors and textures match across all nine tiles.

### Platform Tiles

> "[Your style prefix]. A set of floating platform tiles for a platformer game: left end cap, middle section (repeatable), and right end cap. The platform should look like mossy stone with a flat top surface and rough underside. The middle section must tile seamlessly when repeated horizontally. Arranged in a horizontal row. Transparent background."

**Size/format:** Each tile 32x32 pixels, full sheet 96x32 pixels, PNG with transparency

### Wall Tiles

> "[Your style prefix]. Vertical wall tiles for a platformer cave level: top cap (where the wall meets the ceiling), middle fill (repeatable vertically), and bottom base. Gray stone texture with occasional cracks. The middle section must tile seamlessly when stacked vertically. Arranged in a vertical column. Transparent background."

**Size/format:** Each tile 32x32 pixels, full sheet 32x96 pixels, PNG with transparency

### Decorative Elements

> "[Your style prefix]. A set of small environment decorations for a forest platformer: a tuft of grass (2-3 blades), a small mushroom, a tiny flower, a pebble cluster, and a fallen leaf. Each on its own transparent background, arranged in a horizontal row. Each decoration should be smaller than a full tile."

**Size/format:** Each element approximately 16x16 pixels, PNG with transparency

---

## Backgrounds

### Far Background (Sky Layer)

> "[Your style prefix]. A far background layer for a side-scrolling platformer. A gradient sky transitioning from pale blue at the top to warm orange near the horizon. Distant mountain silhouettes in soft purple along the bottom third. Very low detail, soft shapes. The left and right edges must connect seamlessly when the image is repeated horizontally."

**Style modifiers to add:** "no sharp details, atmospheric perspective, muted colors"
**Size/format:** 512x256 pixels, PNG
**Consistency tip:** Keep the color temperature consistent with your game's mood.

### Mid Background

> "[Your style prefix]. A mid-ground background layer for a side-scrolling forest platformer. Rolling green hills with clusters of rounded trees in dark green and emerald. More detail than the sky layer but still softer than foreground elements. The left and right edges must connect seamlessly for horizontal tiling. No ground line at the bottom edge."

**Size/format:** 512x256 pixels, PNG

### Near Background

> "[Your style prefix]. A near background layer for a side-scrolling forest platformer. Tall tree trunks with visible bark texture, leafy canopy at the top, occasional hanging vines. This is the most detailed background layer. The left and right edges must connect seamlessly. Colors slightly desaturated compared to the playable foreground to show depth."

**Size/format:** 512x256 pixels, PNG

---

## Items and Collectibles

### Coins

> "[Your style prefix]. A gold coin collectible for a platformer game. Circular, shiny gold with a simple star or emblem stamped on the face. Slight highlight on the upper left to match the game's lighting direction. Transparent background."

**Size/format:** 16x16 pixels, PNG with transparency
**Consistency tip:** Use this same gold color for all gold items in the game.

### Gems

> "[Your style prefix]. A set of four gemstone collectibles: red ruby, blue sapphire, green emerald, and purple amethyst. Each is a small faceted gem shape with a bright highlight. Arranged in a horizontal row. Transparent background."

**Size/format:** Each gem 16x16 pixels, PNG with transparency

### Power-Ups

> "[Your style prefix]. A heart-shaped health power-up. Bright red with a white highlight on the upper left. Clean shape, easy to recognize at small sizes. Transparent background."

**Size/format:** 16x16 pixels, PNG with transparency

### Key

> "[Your style prefix]. A small golden key collectible. Simple silhouette with a round bow (top) and two teeth on the bit (bottom). Matches the gold color of the coin collectible. Transparent background."

**Size/format:** 16x16 pixels, PNG with transparency

---

## Enemies

### Slime

> "[Your style prefix]. A green slime enemy for a platformer. Blobby, semi-circular shape sitting on the ground. Simple dot eyes and a small frowning mouth. Slightly darker green at the base, lighter green at the top with a white highlight. Transparent background."

**Style anchor:** "same pixel art style and outline weight as the player knight character"
**Size/format:** 24x20 pixels, PNG with transparency

### Bat

> "[Your style prefix]. A small bat enemy with wings spread, facing left. Dark purple body, lighter purple wing membranes. Simple angry eyes, small fangs. Same style and outline weight as the player character. Transparent background."

**Size/format:** 28x20 pixels, PNG with transparency

### Skeleton

> "[Your style prefix]. A skeleton warrior enemy standing facing left, holding a small round shield. White bones, dark eye sockets, same chibi proportions as the player knight. Slightly taller than the slime but shorter than the player. Same pixel art style and outline weight. Transparent background."

**Size/format:** 32x44 pixels, PNG with transparency

---

## UI Elements

### Button

> "[Your style prefix]. A rectangular UI button for a game menu. Dark border (2 pixels), bright warm gold fill, slightly rounded corners. Sized to hold text like 'PLAY' or 'OPTIONS'. Simple, clean, readable at small sizes. Transparent background."

**Size/format:** 96x32 pixels, PNG with transparency

### Panel Background

> "[Your style prefix]. A UI panel background for a game menu or dialog box. Dark border, parchment-colored fill with subtle texture. Rectangular with slightly rounded corners. Should look like it belongs in the same game as the character sprites. Transparent background."

**Size/format:** 200x150 pixels, PNG with transparency

### HUD Icons

> "[Your style prefix]. A set of small HUD icons arranged in a row: a heart (for health), a coin (for currency), a clock (for time), and a star (for score). Each icon should be simple and readable at small size. Same style as the game's collectibles. Transparent background."

**Size/format:** Each icon 16x16 pixels, PNG with transparency

### Health Bar

> "[Your style prefix]. A horizontal health bar UI element. Dark border frame, bright red fill that represents full health. The fill area should be separate from the frame so the fill can be resized. Simple and clean. Transparent background."

**Size/format:** 64x12 pixels, PNG with transparency

---

## General Tips for All Prompts

1. **Always start with your style prefix.** Consistency starts with the prompt.
2. **Specify exact pixel dimensions.** "32x32 pixels" is better than "small."
3. **Always request transparent backgrounds** for sprites, tiles, and UI elements.
4. **Name specific colors** rather than general ones. "Forest green" beats "green."
5. **Reference existing assets** when generating new ones. "Same style as the player character" anchors the AI.
6. **Generate sets together** when possible. A tileset made in one prompt is more consistent than tiles made separately.
7. **Iterate by describing changes**, not by starting from scratch. "Same as before but with the arms raised" preserves what works.
8. **Save every approved asset** with a clear filename. You'll reference them later when integrating.

---

## Lesson 4.1 Prompt Reference Checklist

- [ ] I have customized the style prefix to match my game's visual identity
- [ ] I have generated and approved a character idle sprite
- [ ] I have generated walk cycle frames for the character
- [ ] I have generated at least one ground tileset
- [ ] I have generated at least one background layer
- [ ] I have generated collectible items (coins, gems, or power-ups)
- [ ] I have generated at least one enemy sprite
- [ ] I have generated basic UI elements (button, panel, or health bar)
- [ ] All assets share a consistent style when viewed side by side
