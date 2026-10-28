---
name: unslop
description: Turns vibecoded, AI-looking UI into a clean, designed interface by fixing spacing, color, icons, type, copy and details in that order. Use when the user asks to unslop, polish, clean up or redesign a screen so it stops looking AI-generated, or when a UI shows the usual tells like purple gradients, glows, gradient text, emoji labels, "New ✨" badges, uppercase tracked labels or uneven spacing. Works on React, Tailwind, HTML and CSS, for dashboards, apps and landing pages.
---

# Unslop

Vibecoded UI fails in the same predictable ways. Every surface glows, every label has an emoji, spacing is whatever the model typed that day, and the copy shouts. Unslopping fixes the craft and keeps the product. The layout regions, features and content stay. What changes is that every size, color and word becomes deliberate.

Work like a designer doing a redline pass, one layer at a time, across the whole screen.

## Run it

1. **Look at the screen.** Find the files that render it. If you can run the app or open the file in a browser and take a screenshot, do it, so you judge what people see and not only the code.
2. **Audit.** Go through [references/signs.md](references/signs.md) and list every sign you find, one line each with where it lives. Show the list to the user before editing.
3. **Fix in six passes, in order.** Finish a pass across the whole screen before starting the next. Spacing comes first because color and type read differently once the rhythm is right, and icons come before type because they change the columns the type sits in.
4. **Check.** Run the checklist at the end of this file, render again and compare with the audit list. Anything still on the list gets fixed.
5. **Report** in a few lines per pass what changed.

Exact values for every pass live in [references/tokens.md](references/tokens.md).

## 1. Spacing

- Everything sits on a 4px grid. Margins, paddings, gaps and fixed heights are multiples of 4. A 2px step is fine for nudges inside small controls.
- Same thing, same size. All rows in a list share one height and one gap, all cards in a row share one padding.
- Space shows grouping. Space inside a group is smaller than space between groups, so a list reads as one block and sections read as separate ones.
- Things line up. Icons sit in one column, labels start on one line, numbers align right in one column. Nothing is nudged off the line with a stray translate or odd margin.
- Padding follows density. Compact panels and sidebars around 16, cards 20 to 24, page edges 24 to 32.
- Remove one-off values like `mt-[13px]`, `ml-[7px]` or `py-[11px]` and replace them with steps from the scale.

## 2. Color

- Build from one neutral ramp. Background, raised surface, borders and text all come from the same family of greys, near black charcoal for dark themes and soft off white for light ones.
- Three text roles: primary, secondary and muted. Not ten slightly different lavenders.
- One accent, used rarely. It marks the primary action, the selection or the one number that matters. If the brand already has a color, keep it as the accent and take it off the surfaces.
- Semantic colors only carry meaning, like green for a good change and red for an error, and they are toned down to sit inside the palette.
- Remove hue gradients on surfaces, gradient text, colored glows and colored shadows, radial color washes and blobs behind content, and neon borders.
- Borders are quiet hairlines. On dark, white at 6 to 10% opacity. On light, black at 6 to 10%.
- On dark themes depth comes from surface steps and hairlines, not from shadows. On light themes shadows are neutral, soft and small.
- A gradient is allowed only as a small tone shift inside one neutral, for example an active row going from #2b2b2b to #1f1f1f. Never from one hue to another.

## 3. Icons

- Every emoji used as an icon or as decoration in a label becomes a line icon from one set. Use the set the project already has, otherwise lucide.
- One size and one stroke everywhere, 16 or 18px with a 1.5 stroke.
- Icons take the color of their text role, usually secondary or muted. They never get their own colors.
- The icon box has the same width in every row and the gap to the label is fixed, 8 or 10, so labels align.
- Drop icons that add nothing, like an emoji in every card title or before every section label. Categories that need color get a small status dot.

## 4. Type

- One family. Keep the project's font if it is good, otherwise use Geist, Inter or the system stack. A mono like Geist Mono is welcome for numbers, counts, shortcuts and small labels.
- A few sizes from a scale and two weights, 400 and 500, with 600 at most for rare emphasis. No 700 to 900 headings, no gradient text.
- Hierarchy comes from size and color, not from weight.
- Sentence case everywhere. Labels like `NAVIGATION` or `PAID THIS MONTH` with wide tracking become `Navigation` and `Paid this month`.
- Small text never gets negative letter spacing. Readability on small text means bigger, a bit bolder or slightly looser. Tight tracking is only for large display text.
- Numbers use `tabular-nums` and one format across the screen. If one figure is `$48,210`, the next is not `$124,860.40`.
- No italic for emphasis.

## 5. Copy

- No exclamation marks in interface text, and never `!!`.
- No greeting headlines like `Welcome back, Damir! 👋`. The title names the context, like the page name or the period, for example `October 2026`.
- Short labels. `Search`, not `Search anything...`.
- A change says what it compares to, like `+12% vs last month` or `3 fewer vs last month`.
- Labels, buttons, captions and other short interface strings end without a period. Body text in full sentences keeps its periods.
- No hype words like supercharge, seamless, unlock, magic or revolutionize, and no `AI-powered` on everything.
- Mock data looks real, with plausible numbers and names, never `[X]` or `123,456`.
- Badges like `PRO`, `New ✨` or `Beta 🚀` go away unless the product really needs them, and then they are quiet text.

## 6. Details

- Nested radius. An inner radius equals the outer radius minus the padding between them, never less than 4. Controls 8 to 10, cards 12 to 16, panels 14 to 20. Not everything is a pill.
- Counts and meta become quiet text, often mono and muted, instead of glowing pills.
- Keyboard shortcuts become small keycaps.
- Charts show one or two series with a muted grid, muted mono labels and a single highlight color. No rainbow bars, glowing bars or uppercase day labels. If the chart is placeholder noise, replace it with data that tells something real.
- The active state is a small surface step with a hairline highlight, not a gradient with a glow.
- Hover and focus states exist and stay inside the palette. No `hover:scale` on cards.
- The logo is the product name in the main family, plus a simple mark if there is one. No gradient wordmark and no sparkle tile.

## Do not

- Do not redesign the product. Keep the regions, features and content order unless the user asks for more. Placeholder content that means nothing may be replaced with content that does.
- Do not replace removed decoration with new decoration, and do not swap one trend for another like glass, grain, noise or neon.
- Do not invent features, claims or data.

## Checklist

- [ ] Every spacing value is on the 4px scale and equal things have equal sizes
- [ ] Icons, labels and numbers each sit in one aligned column
- [ ] One neutral ramp, three text roles, one accent
- [ ] No hue gradients, gradient text, glows, colored shadows or color blobs
- [ ] No emoji left in the interface
- [ ] One icon set at one size and stroke
- [ ] One font family plus an optional mono, weights 400 to 600
- [ ] No uppercase tracked labels, no italic, no negative tracking on small text
- [ ] No exclamation marks, no trailing periods in short strings, no greeting headline
- [ ] Numbers in one format with tabular figures
- [ ] Nested radii add up
